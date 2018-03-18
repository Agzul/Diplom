class PowerSuppliesController < ApplicationController
  before_action :set_power_supply, only: [:show, :edit, :update, :destroy]

  # GET /power_supplies
  # GET /power_supplies.json
  def index
    @power_supplies = PowerSupply.all
  end

  # GET /power_supplies/1
  # GET /power_supplies/1.json
  def show
  end

  # GET /power_supplies/new
  def new
    @power_supply = PowerSupply.new
    @power_supply.build_company
  end

  # GET /power_supplies/1/edit
  def edit
  end

  # POST /power_supplies
  # POST /power_supplies.json
  def create
    @power_supply = PowerSupply.new(power_supply_params)

    respond_to do |format|
      if @power_supply.save
        format.html { redirect_to power_supplies_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /power_supplies/1
  # PATCH/PUT /power_supplies/1.json
  def update
    respond_to do |format|
      if @power_supply.update(power_supply_params)
        format.html { redirect_to power_supplies_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /power_supplies/1
  # DELETE /power_supplies/1.json
  def destroy
    @power_supply.destroy
    respond_to do |format|
      format.html { redirect_to power_supplies_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_supply
      @power_supply = PowerSupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_supply_params
      params.require(:power_supply).permit(
        :name, :description, :image, :company_id, :price, :power,
        company_attributes: [:id, :name, :_destroy]
      )
    end
end
