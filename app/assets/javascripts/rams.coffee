@nested_buttons_ram_type = (current_controller, current_action) ->
  ram_ram_type_id           = document.getElementById('ram_ram_type_id')
  nested_container_ram_type = document.getElementById('nested_container_ram_type')
  nested_form_ram_type      = document.getElementById('nested_form_ram_type')
  nested_form_ram_type.remove()

  hidden_field_ram_type_id       = nested_form_ram_type.lastElementChild
  hidden_field_ram_type_id_saved = hidden_field_ram_type_id.value
  hidden_field_label               = nested_form_ram_type.childNodes[1].childNodes[5].firstElementChild.remove()
  hidden_field_destroy             = nested_form_ram_type.childNodes[1].childNodes[5].lastElementChild

  $('#nested_button_edit_ram_type').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_ram_type').css('display', 'none')

  i=0
  $('#nested_button_add_ram_type').click ->
    if i%2==0
      hidden_field_ram_type_id.value='' if hidden_field_ram_type_id.value!=''
      ram_ram_type_id.remove()
      nested_container_ram_type.childNodes[7].append(nested_form_ram_type)
      $('#nested_button_add_ram_type').html '-'
      $('#nested_container_ram_type').css('background', '#28a745')
      $('#nested_button_add_ram_type').css('background', '#070')
    else
      if $('#nested_button_edit_ram_type').html '-'
        $('#nested_button_edit_ram_type').html '#'
        $('#nested_button_edit_ram_type').css('background', '#ffc107')
        $('#nested_button_destroy_ram_type').css('display', 'none')

      nested_form_ram_type.remove()
      nested_container_ram_type.childNodes[7].append(ram_ram_type_id)
      $('#nested_button_add_ram_type').html '+'
      $('#nested_container_ram_type').css('background', '#ddd')
      $('#nested_button_add_ram_type').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_ram_type').click ->
    if i%2==0
      hidden_field_ram_type_id.value=hidden_field_ram_type_id_saved if hidden_field_ram_type_id.value==''
      ram_ram_type_id.remove()
      nested_container_ram_type.childNodes[7].append(nested_form_ram_type)
      $('#nested_button_destroy_ram_type').css('display', 'inline-block')
      $('#nested_button_edit_ram_type').html '-'
      $('#nested_container_ram_type').css('background', '#ffc107')
      $('#nested_button_edit_ram_type').css('background', '#dda107')
    else
      if $('#nested_button_add_ram_type').html '-'
        $('#nested_button_add_ram_type').html '+'
        $('#nested_button_add_ram_type').css('background', '#28a745')

      nested_form_ram_type.remove()
      nested_container_ram_type.childNodes[7].append(ram_ram_type_id)
      $('#nested_button_destroy_ram_type').css('display', 'none')
      $('#nested_button_edit_ram_type').html '#'
      $('#nested_container_ram_type').css('background', '#ddd')
      $('#nested_button_edit_ram_type').css('background', '#ffc107')
    i+=1

  $('#nested_button_destroy_ram_type').click ->
    hidden_field_destroy.value=true

all_ready = ->
  if @current_controller == "rams" && @current_action != "index" && @current_action != "show"
    window.nested_buttons_ram_type(@current_controller, @current_action)
    window.nested_buttons_company(@current_controller, @current_action)
$(document).on 'turbolinks:load', all_ready
