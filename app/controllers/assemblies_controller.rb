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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assembly
      @assembly = Assembly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assembly_params
      params.require(:assembly).permit(:name, :description, :finanse, :motherboard_id, :cpu_id, :ram_id, :video_card_id, :ssd_id, :hdd_id, :power_supply_id, :video_card_num, :hdd_num, :ssd_num, :ram_num, :user_id)
    end
end
