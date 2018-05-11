class HddsController < ApplicationController
  before_action :set_hdd, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]

  # GET /hdds
  # GET /hdds.json
  def index
    @hdds = Hdd.all
  end

  # GET /hdds/1
  # GET /hdds/1.json
  def show
  end

  # GET /hdds/new
  def new
    @hdd = Hdd.new
    @hdd.build_company
  end

  # GET /hdds/1/edit
  def edit
  end

  # POST /hdds
  # POST /hdds.json
  def create
    @hdd = Hdd.new(hdd_params)

    respond_to do |format|
      if @hdd.save
        format.html { redirect_to hdds_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /hdds/1
  # PATCH/PUT /hdds/1.json
  def update
    respond_to do |format|
      if @hdd.update(hdd_params)
        format.html { redirect_to hdds_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /hdds/1
  # DELETE /hdds/1.json
  def destroy
    @hdd.destroy
    respond_to do |format|
      format.html { redirect_to hdds_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hdd
      @hdd = Hdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hdd_params
      params.require(:hdd).permit(
        :name, :description, :image, :company_id,
        :price, :volume, :size, :rotation_speed, :write_speed, :read_speed,
        company_attributes: [:id, :name, :_destroy]
      )
    end
end
