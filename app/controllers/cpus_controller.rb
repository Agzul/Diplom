class CpusController < ApplicationController
  before_action :set_cpu, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]
  before_action :deny_access_no_role, only: [:edit, :update, :destroy]
  before_action :deny_access_operator, only: [:destroy]

  # GET /cpus
  # GET /cpus.json
  def index
    @cpus = Cpu.all
  end

  # GET /cpus/1
  # GET /cpus/1.json
  def show
  end

  # GET /cpus/new
  def new
    @cpu = Cpu.new
    @cpu.build_cpu_socket
    @cpu.build_video_core
    @cpu.build_company
  end

  # GET /cpus/1/edit
  def edit
  end

  # POST /cpus
  # POST /cpus.json
  def create
    @cpu = Cpu.new(cpu_params)

    respond_to do |format|
      if @cpu.save
        format.html { redirect_to cpus_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /cpus/1
  # PATCH/PUT /cpus/1.json
  def update
    respond_to do |format|
      if @cpu.update(cpu_params)
        format.html { redirect_to cpus_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /cpus/1
  # DELETE /cpus/1.json
  def destroy
    @cpu.destroy
    respond_to do |format|
      format.html { redirect_to cpus_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpu
      @cpu = Cpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpu_params
      params.require(:cpu).permit(
        :name, :description, :image, :company_id, :price, :cpu_socket_id, :core,
        :core_num, :core_speed, :overclocking, :video_core_id, :tdp, :game_benchmark,
        cpu_socket_attributes: [:id, :name, :_destroy],
        video_core_attributes: [:id, :name, :speed, :game_benchmark, :_destroy],
        company_attributes:    [:id, :name, :_destroy]
      )
    end
end
