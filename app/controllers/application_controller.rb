class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def user_priority()
    return 2 if current_user.role.nil?
    return 1 if current_user.role.name == "operator"
    return 0 if current_user.role.name == "admin"
  end

  def deny_access_no_role
    if user_priority == 2
      redirect_to root_path
      flash[:danger] = 'Недостаточно прав'
    end
  end
  def deny_access_operator
    if user_priority == 1
      redirect_to root_path
      flash[:danger] = 'Недостаточно прав'
    end
  end
end
