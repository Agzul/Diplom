class SsdsController < ApplicationController
  before_action :set_ssd, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]
  before_action :deny_access_no_role, only: [:edit, :update, :destroy]
  before_action :deny_access_operator, only: [:destroy]

  # GET /ssds
  # GET /ssds.json
  def index
    @ssds = Ssd.all
  end

  # GET /ssds/1
  # GET /ssds/1.json
  def show
  end

  # GET /ssds/new
  def new
    @ssd = Ssd.new
    @ssd.build_company
  end

  # GET /ssds/1/edit
  def edit
  end

  # POST /ssds
  # POST /ssds.json
  def create
    @ssd = Ssd.new(ssd_params)

    respond_to do |format|
      if @ssd.save
        format.html { redirect_to ssds_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ssds/1
  # PATCH/PUT /ssds/1.json
  def update
    respond_to do |format|
      if @ssd.update(ssd_params)
        format.html { redirect_to ssds_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ssds/1
  # DELETE /ssds/1.json
  def destroy
    @ssd.destroy
    respond_to do |format|
      format.html { redirect_to ssds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ssd
      @ssd = Ssd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ssd_params
      params.require(:ssd).permit(
        :name, :description, :image, :company_id,
        :price, :volume, :size, :write_speed, :read_speed,
        company_attributes: [:id, :name, :_destroy]
      )
    end
end
