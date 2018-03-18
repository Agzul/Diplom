class RamsController < ApplicationController
  before_action :set_ram, only: [:show, :edit, :update, :destroy]

  # GET /rams
  # GET /rams.json
  def index
    @rams = Ram.all
  end

  # GET /rams/1
  # GET /rams/1.json
  def show
  end

  # GET /rams/new
  def new
    @ram = Ram.new
    @ram.build_ram_type
    @ram.build_company
  end

  # GET /rams/1/edit
  def edit
  end

  # POST /rams
  # POST /rams.json
  def create
    @ram = Ram.new(ram_params)

    respond_to do |format|
      if @ram.save
        format.html { redirect_to rams_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /rams/1
  # PATCH/PUT /rams/1.json
  def update
    respond_to do |format|
      if @ram.update(ram_params)
        format.html { redirect_to rams_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /rams/1
  # DELETE /rams/1.json
  def destroy
    @ram.destroy
    respond_to do |format|
      format.html { redirect_to rams_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ram
      @ram = Ram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ram_params
      params.require(:ram).permit(
        :name, :description, :image, :company_id, :price, :ram_type_id, :volume,
        ram_type_attributes: [:id, :name, :speed, :_destroy],
        company_attributes:  [:id, :name, :_destroy]
      )
    end
end
