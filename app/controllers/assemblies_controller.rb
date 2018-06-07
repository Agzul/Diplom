class AssembliesController < ApplicationController
  before_action :set_assembly, only: [:show, :edit, :update, :destroy]

  # GET /assemblies
  # GET /assemblies.json
  def index
    if user_priority == 1 || user_priority == 0
      @assemblies = Assembly.all
    else
      @assemblies = Assembly.all.where(user_id: current_user.id)
    end
  end

  # GET /assemblies/1
  # GET /assemblies/1.json
  def show
  end

  # GET /assemblies/new
  def new
    @assembly = Assembly.new
  end

  # GET /assemblies/1/edit
  def edit
    redirect_to root_path unless user_priority == 0 || user_priority == 1 || @assembly.user_id == current_user.id
  end

  # POST /assemblies
  # POST /assemblies.json
  def create
    @assembly = Assembly.new(assembly_params)
    if @assembly.finanse !=nil
      if autocompare == -1
        @assembly.delete
        redirect_to new_assembly_path
        return -1
      else
        autocompare
      end
    end

    respond_to do |format|
      if @assembly.save
        format.html { redirect_to @assembly, notice: 'Assembly was successfully created.' }
        format.json { render :show, status: :created, location: @assembly }
      else
        format.html { render :new }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assemblies/1
  # PATCH/PUT /assemblies/1.json
  def update
    if user_priority == 0 || user_priority == 1 || @assembly.user_id == current_user.id
      if @assembly.finanse !=nil
        if autocompare == -1
          redirect_to edit_assembly_path(@assembly)
          return -1
        else
          autocompare
        end
      end

      respond_to do |format|
        if @assembly.update(assembly_params)
          format.html { redirect_to @assembly, notice: 'Assembly was successfully updated.' }
          format.json { render :show, status: :ok, location: @assembly }
        else
          format.html { render :edit }
          format.json { render json: @assembly.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # DELETE /assemblies/1
  # DELETE /assemblies/1.json
  def destroy

    if user_priority == 0 || @assembly.user_id == current_user.id
      @assembly.destroy
      respond_to do |format|
        format.html { redirect_to assemblies_url, notice: 'Assembly was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path
    end

  end

  def autocompare
    finanse = params[:assembly][:finanse].to_i
    return -1 if finanse == nil

    # Получение введенных данных
    @motherboard =  Motherboard.find(params[:assembly][:motherboard_id].to_i)  if params[:assembly][:motherboard_id]  != ""
    @cpu =          Cpu.find(params[:assembly][:cpu_id].to_i)                  if params[:assembly][:cpu_id]          != ""
    @video_card =   VideoCard.find(params[:assembly][:video_card_id].to_i)     if params[:assembly][:video_card_id]   != ""
    @ram =          Ram.find(params[:assembly][:ram_id].to_i)                  if params[:assembly][:ram_id]          != ""
    @hdd =          Hdd.find(params[:assembly][:hdd_id].to_i)                  if params[:assembly][:hdd_id]          != ""
    @ssd =          Ssd.find(params[:assembly][:ssd_id].to_i)                  if params[:assembly][:ssd_id]          != ""
    @power_supply = PowerSupply.find(params[:assembly][:power_supply_id].to_i) if params[:assembly][:power_supply_id] != ""

    # Поправка на выбранные детали
    finanse += @motherboard.price  if params[:assembly][:motherboard_id]  != ""
    finanse += @cpu.price          if params[:assembly][:cpu_id]          != ""
    finanse += @video_card.price   if params[:assembly][:video_card_id]   != ""
    finanse += @ram.price          if params[:assembly][:ram_id]          != ""
    finanse += @hdd.price          if params[:assembly][:hdd_id]          != ""
    finanse += @ssd.price          if params[:assembly][:ssd_id]          != ""
    finanse += @power_supply.price if params[:assembly][:power_supply_id] != ""

    if finanse <=20000 # Самый бюджетный вариант (без видеокарты)
      j = 0.5 # Коэффициент подбора процессора в зависимости от бюджета
      while @motherboard == nil || @cpu == nil
        if @motherboard != nil
          cpu_socket = @motherboard.chipset.cpu_socket
          @cpu = Cpu.joins(:video_core).where("price < ?", finanse*j).where(cpu_socket: cpu_socket).order("video_cores.game_benchmark DESC")[0] if @cpu == nil
        else
          @cpu = Cpu.joins(:video_core).where("price < ?", finanse*j).order("video_cores.game_benchmark DESC")[0] if @cpu == nil
        end
        return -1 if @cpu == nil

        cpu_socket = @cpu.cpu_socket
        @motherboard = Motherboard.joins(:chipset).where(chipsets: {cpu_socket: cpu_socket}).order(price: :asc)[0] if @motherboard == nil
        j-=0.01
        return -1 if j<=0
      end
    else
      i = 0.5 # Коэффициент подбора видеокарты в зависимости от бюджета
      while @motherboard == nil || @video_card == nil || @cpu == nil
        # Подбор видеокарты в зависимости от бюджета и в зависимости выбрана ли?
        if @cpu != nil
          k = 500
          cpu_benchmark = @cpu.game_benchmark
          while @video_card==nil
            @video_card = VideoCard.where("game_benchmark < ?", cpu_benchmark+k).where("game_benchmark > ?", cpu_benchmark-500).order(price: :asc)[0]
            k+=100
          end
        else
          @video_card = VideoCard.where("price < ?", finanse*i).order(game_benchmark: :desc)[0] if @video_card == nil
        end
        # Получение производительности видеокарты
        video_card_benchmark = @video_card.game_benchmark if @video_card !=nil

        k = 500 # Коэффициент разницы производительности между процессором и видеокартой
        while @cpu==nil # Подбор сбалансированного и дешевого процессора в зависимости от производительности процессора и в зависимости выбрана ли?
          if @motherboard != nil
            cpu_socket = @motherboard.chipset.cpu_socket
            @cpu = Cpu.where("game_benchmark < ?", video_card_benchmark+k).where("game_benchmark > ?", video_card_benchmark-500).where(cpu_socket: cpu_socket).order(price: :asc)[0]
          else
            @cpu = Cpu.where("game_benchmark < ?", video_card_benchmark+k).where("game_benchmark > ?", video_card_benchmark-500).order(price: :asc)[0]
          end
          k+=100
        end
        cpu_socket = @cpu.cpu_socket # Получение сокета процессора

        # Подбор самой выгодной материнской платы в зависимости от сокета
        @motherboard = Motherboard.joins(:chipset).where(chipsets: {cpu_socket: cpu_socket}).order(price: :asc)[0] if @motherboard == nil
        i -= 0.01
      end
    end

    motherboard_ram_type_name  = @motherboard.ram_type.name
    motherboard_ram_type_speed = @motherboard.ram_type.speed

    @ram = Ram.joins(:ram_type).where(ram_types: {name: motherboard_ram_type_name}).order(price: :asc)[0] # fix
    return -1 if @ram == nil

    curent_finanse = finanse - @video_card.price - @cpu.price - @motherboard.price - @ram.price if @video_card !=nil
    curent_finanse = finanse - @cpu.price - @motherboard.price - @ram.price if @video_card ==nil

    if curent_finanse >=8000
      @ssd = Ssd.where("price < ?", curent_finanse-1000).order(volume: :desc)[0]
    else
      @hdd = Hdd.where("price < ?", curent_finanse-1000).order(volume: :desc)[0]
    end
    return -1 if (@hdd == nil) && (@ssd == nil)

    curent_power = @cpu.tdp + 100                   if @video_card ==nil
    curent_power = @cpu.tdp + @video_card.tdp + 100 if @video_card !=nil

    @power_supply = PowerSupply.where("power >= ?", curent_power).order(price: :asc)[0]
    return -1 if @power_supply == nil

    balance = curent_finanse - @ssd.price - @power_supply.price if @hdd == nil
    balance = curent_finanse - @hdd.price - @power_supply.price if @ssd == nil

    params[:assembly][:cpu_id] =          @cpu.id
    params[:assembly][:video_card_id] =   @video_card.id if @video_card !=nil
    params[:assembly][:motherboard_id] =  @motherboard.id
    params[:assembly][:ram_id] =          @ram.id
    params[:assembly][:ssd_id] =          @ssd.id if @hdd == nil
    params[:assembly][:hdd_id] =          @hdd.id if @ssd == nil
    params[:assembly][:power_supply_id] = @power_supply.id
    params[:assembly][:balance] =         balance
    @assembly.cpu_id = @cpu.id
    @assembly.video_card_id = @video_card.id if @video_card !=nil
    @assembly.motherboard_id = @motherboard.id
    @assembly.ram_id = @ram.id
    @assembly.ssd_id = @ssd.id if @hdd == nil
    @assembly.hdd_id = @hdd.id if @ssd == nil
    @assembly.power_supply_id = @power_supply.id
    @assembly.balance = balance
    return 0
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assembly
      @assembly = Assembly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assembly_params
      params.require(:assembly).permit(:name, :description, :finanse, :motherboard_id, :cpu_id, :ram_id, :video_card_id, :ssd_id, :hdd_id, :power_supply_id, :video_card_num, :hdd_num, :ssd_num, :ram_num, :balance, :user_id)
    end
end
