all_ready = ->
  if @current_controller == "hdds" && @current_action != "index" && @current_action != "show"
    window.nested_buttons_company(@current_controller, @current_action)
$(document).on 'turbolinks:load', all_ready
