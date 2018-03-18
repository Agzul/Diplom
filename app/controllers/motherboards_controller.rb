class MotherboardsController < ApplicationController
  before_action :set_motherboard, only: [:show, :edit, :update, :destroy]

  # GET /motherboards
  # GET /motherboards.json
  def index
    @motherboards = Motherboard.all
  end

  # GET /motherboards/1
  # GET /motherboards/1.json
  def show
  end

  # GET /motherboards/new
  def new
    @motherboard = Motherboard.new
    @motherboard.build_chipset
    @motherboard.build_ram_type
    @motherboard.build_company
  end

  # GET /motherboards/1/edit
  def edit
  end

  # POST /motherboards
  # POST /motherboards.json
  def create
    @motherboard = Motherboard.new(motherboard_params)

    respond_to do |format|
      if @motherboard.save
        format.html { redirect_to motherboards_path }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /motherboards/1
  # PATCH/PUT /motherboards/1.json
  def update
    respond_to do |format|
      if @motherboard.update(motherboard_params)
        format.html { redirect_to motherboards_path }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /motherboards/1
  # DELETE /motherboards/1.json
  def destroy
    @motherboard.destroy
    respond_to do |format|
      format.html { redirect_to motherboards_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motherboard
      @motherboard = Motherboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motherboard_params
      params.require(:motherboard).permit(
        :name, :description, :image, :company_id, :price, :chipset_id,
        :pci_e_x16_num, :sli_crossfire, :ram_num, :ram_type_id, :bios, :audio, :form_factor,
        chipset_attributes:  [:id, :name, :overclocking, :ram_num, :cpu_socket_id, :_destroy],
        ram_type_attributes: [:id, :name, :speed, :_destroy],
        company_attributes:  [:id, :name, :_destroy]
      )
    end
end
