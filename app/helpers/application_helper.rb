module ApplicationHelper

  def is_admin?(current_role)
    if current_role == "admin"
      return true
    else
      return false
    end
  end

  def is_operator?(current_role)
    if current_role == "operator" || current_role == "admin"
      return true
    else
      return false
    end
  end

  def is_user?(current_role)
    if current_role == -1
      return true
    else
      return false
    end
  end
end
