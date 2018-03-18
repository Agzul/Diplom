# nested_start
@nested_buttons_cpu_socket = (current_controller, current_action) ->
  cpu_cpu_socket_id           = document.getElementById('cpu_cpu_socket_id')
  nested_container_cpu_socket = document.getElementById('nested_container_cpu_socket')
  nested_form_cpu_socket      = document.getElementById('nested_form_cpu_socket')
  nested_form_cpu_socket.remove()

  hidden_field_cpu_socket_id       = nested_form_cpu_socket.lastElementChild
  hidden_field_cpu_socket_id_saved = hidden_field_cpu_socket_id.value
  hidden_field_label               = nested_form_cpu_socket.childNodes[1].childNodes[3].firstElementChild.remove()
  hidden_field_destroy             = nested_form_cpu_socket.childNodes[1].childNodes[3].lastElementChild

  $('#nested_button_edit_cpu_socket').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_cpu_socket').css('display', 'none')

  i=0
  $('#nested_button_add_cpu_socket').click ->
    if i%2==0
      hidden_field_cpu_socket_id.value='' if hidden_field_cpu_socket_id.value!=''
      cpu_cpu_socket_id.remove()
      nested_container_cpu_socket.childNodes[7].append(nested_form_cpu_socket)
      $('#nested_button_add_cpu_socket').html '-'
      $('#nested_container_cpu_socket').css('background', '#28a745')
      $('#nested_button_add_cpu_socket').css('background', '#070')
    else
      if $('#nested_button_edit_cpu_socket').html '-'
        $('#nested_button_edit_cpu_socket').html '#'
        $('#nested_button_edit_cpu_socket').css('background', '#ffc107')
        $('#nested_button_destroy_cpu_socket').css('display', 'none')

      nested_form_cpu_socket.remove()
      nested_container_cpu_socket.childNodes[7].append(cpu_cpu_socket_id)
      $('#nested_button_add_cpu_socket').html '+'
      $('#nested_container_cpu_socket').css('background', '#ddd')
      $('#nested_button_add_cpu_socket').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_cpu_socket').click ->
    if i%2==0
      hidden_field_cpu_socket_id.value=hidden_field_cpu_socket_id_saved if hidden_field_cpu_socket_id.value==''
      cpu_cpu_socket_id.remove()
      nested_container_cpu_socket.childNodes[7].append(nested_form_cpu_socket)
      $('#nested_button_destroy_cpu_socket').css('display', 'inline-block')
      $('#nested_button_edit_cpu_socket').html '-'
      $('#nested_container_cpu_socket').css('background', '#ffc107')
      $('#nested_button_edit_cpu_socket').css('background', '#dda107')
    else
      if $('#nested_button_add_cpu_socket').html '-'
        $('#nested_button_add_cpu_socket').html '+'
        $('#nested_button_add_cpu_socket').css('background', '#28a745')

      nested_form_cpu_socket.remove()
      nested_container_cpu_socket.childNodes[7].append(cpu_cpu_socket_id)
      $('#nested_button_destroy_cpu_socket').css('display', 'none')
      $('#nested_button_edit_cpu_socket').html '#'
      $('#nested_container_cpu_socket').css('background', '#ddd')
      $('#nested_button_edit_cpu_socket').css('background', '#ffc107')
    i+=1

  $('#nested_button_destroy_cpu_socket').click ->
    hidden_field_destroy.value=true

@nested_buttons_video_core = (current_controller, current_action) ->

  cpu_video_core_id=   document.getElementById('cpu_video_core_id')
  nested_container_video_core= document.getElementById('nested_container_video_core')
  nested_form_video_core=      document.getElementById('nested_form_video_core')
  nested_form_video_core.remove()

  hidden_field_video_core_id=       nested_form_video_core.lastElementChild
  hidden_field_video_core_id_saved= hidden_field_video_core_id.value
  hidden_field_label=             nested_form_video_core.childNodes[1].childNodes[7].firstElementChild.remove()
  hidden_field_destroy=           nested_form_video_core.childNodes[1].childNodes[7].lastElementChild

  $('#nested_button_edit_video_core').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_video_core').css('display', 'none')

  i=0
  $('#nested_button_add_video_core').click ->
    if i%2==0
      hidden_field_video_core_id.value='' if hidden_field_video_core_id.value!=''
      cpu_video_core_id.remove()
      nested_container_video_core.childNodes[7].append(nested_form_video_core)
      $('#nested_button_add_video_core').html '-'
      $('#nested_container_video_core').css('background', '#28a745')
      $('#nested_button_add_video_core').css('background', '#070')
    else
      if $('#nested_button_edit_video_core').html '-'
        $('#nested_button_edit_video_core').html '#'
        $('#nested_button_edit_video_core').css('background', '#ffc107')
        $('#nested_button_destroy_video_core').css('display', 'none')

      nested_form_video_core.remove()
      nested_container_video_core.childNodes[7].append(cpu_video_core_id)
      $('#nested_button_add_video_core').html '+'
      $('#nested_container_video_core').css('background', '#ddd')
      $('#nested_button_add_video_core').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_video_core').click ->
    if i%2==0
      hidden_field_video_core_id.value=hidden_field_video_core_id_saved if hidden_field_video_core_id.value==''
      cpu_video_core_id.remove()
      nested_container_video_core.childNodes[7].append(nested_form_video_core)
      $('#nested_button_destroy_video_core').css('display', 'inline-block')
      $('#nested_button_edit_video_core').html '-'
      $('#nested_container_video_core').css('background', '#ffc107')
      $('#nested_button_edit_video_core').css('background', '#dda107')
    else
      if $('#nested_button_add_video_core').html '-'
        $('#nested_button_add_video_core').html '+'
        $('#nested_button_add_video_core').css('background', '#28a745')

      nested_form_video_core.remove()
      nested_container_video_core.childNodes[7].append(cpu_video_core_id)
      $('#nested_button_destroy_video_core').css('display', 'none')
      $('#nested_button_edit_video_core').html '#'
      $('#nested_container_video_core').css('background', '#ddd')
      $('#nested_button_edit_video_core').css('background', '#ffc107')
    i+=1
  $('#nested_button_destroy_video_core').click ->
    hidden_field_destroy.value=true

all_ready = ->
  if @current_controller == "cpus" && @current_action != "index" && @current_action != "show"
    window.nested_buttons_cpu_socket(@current_controller, @current_action)
    window.nested_buttons_video_core(@current_controller, @current_action)
    window.nested_buttons_company(@current_controller, @current_action)
$(document).on 'turbolinks:load', all_ready
# nested_finish
