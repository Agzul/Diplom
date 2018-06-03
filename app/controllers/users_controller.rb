class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login,   only: [:new, :create]
  before_action :deny_access_no_role,  only: [:index, :destroy]
  before_action :deny_access_operator, only: [:index, :destroy]

  # GET /users
  # GET /users.json
  def index
    if user_priority == 1 || user_priority == 0
      @users = User.all
    else
      redirect_to root_path
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    redirect_to root_path unless user_priority == 0 || user_priority == 1 || @user.id == current_user.id
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Регистрация завершена.' }
        format.json { render root_path, status: :created, location: root_path }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if user_priority == 0 || user_priority == 1 || @user.id == current_user.id
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'Профиль обновлен.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if user_priority == 0 || @user.id == current_user.id
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'Пользователь удален.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :login, :email, :password, :password_confirmation,
        :fn, :ln, :sn, :birthday, :gender, :image)
    end
end
