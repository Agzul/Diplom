# nested_start
@nested_buttons_chipset_motherboard = (current_controller, current_action) ->
  motherboard_chipset_id   = document.getElementById('motherboard_chipset_id')
  nested_container_chipset = document.getElementById('nested_container_chipset')
  nested_form_chipset      = document.getElementById('nested_form_chipset')
  nested_form_chipset.remove()

  hidden_field_chipset_id       = nested_form_chipset.lastElementChild
  hidden_field_chipset_id_saved = hidden_field_chipset_id.value
  hidden_field_label            = nested_form_chipset.childNodes[1].childNodes[7].firstElementChild.remove()
  hidden_field_destroy          = nested_form_chipset.childNodes[1].childNodes[7].lastElementChild

  $('#nested_button_edit_chipset').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_chipset').css('display', 'none')

  i=0
  $('#nested_button_add_chipset').click ->
    if i%2==0
      hidden_field_chipset_id.value='' if hidden_field_chipset_id.value!=''
      motherboard_chipset_id.remove()
      nested_container_chipset.childNodes[7].append(nested_form_chipset)
      $('#nested_button_add_chipset').html '-'
      $('#nested_container_chipset').css('background', '#28a745')
      $('#nested_button_add_chipset').css('background', '#070')
    else
      if $('#nested_button_edit_chipset').html '-'
        $('#nested_button_edit_chipset').html '#'
        $('#nested_button_edit_chipset').css('background', '#ffc107')
        $('#nested_button_destroy_chipset').css('display', 'none')

      nested_form_chipset.remove()
      nested_container_chipset.childNodes[7].append(motherboard_chipset_id)
      $('#nested_button_add_chipset').html '+'
      $('#nested_container_chipset').css('background', '#ddd')
      $('#nested_button_add_chipset').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_chipset').click ->
    if i%2==0
      hidden_field_chipset_id.value=hidden_field_chipset_id_saved if hidden_field_chipset_id.value==''
      motherboard_chipset_id.remove()
      nested_container_chipset.childNodes[7].append(nested_form_chipset)
      $('#nested_button_destroy_chipset').css('display', 'inline-block')
      $('#nested_button_edit_chipset').html '-'
      $('#nested_container_chipset').css('background', '#ffc107')
      $('#nested_button_edit_chipset').css('background', '#dda107')
    else
      if $('#nested_button_add_chipset').html '-'
        $('#nested_button_add_chipset').html '+'
        $('#nested_button_add_chipset').css('background', '#28a745')

      nested_form_chipset.remove()
      nested_container_chipset.childNodes[7].append(motherboard_chipset_id)
      $('#nested_button_destroy_chipset').css('display', 'none')
      $('#nested_button_edit_chipset').html '#'
      $('#nested_container_chipset').css('background', '#ddd')
      $('#nested_button_edit_chipset').css('background', '#ffc107')
    i+=1

  $('#nested_button_destroy_chipset').click ->
    hidden_field_destroy.value=true

@nested_buttons_ram_type_motherboard = (current_controller, current_action) ->

  motherboard_ram_type_id=   document.getElementById('motherboard_ram_type_id')
  nested_container_ram_type= document.getElementById('nested_container_ram_type')
  nested_form_ram_type=      document.getElementById('nested_form_ram_type')
  nested_form_ram_type.remove()

  hidden_field_ram_type_id=       nested_form_ram_type.lastElementChild
  hidden_field_ram_type_id_saved= hidden_field_ram_type_id.value
  hidden_field_label=             nested_form_ram_type.childNodes[1].childNodes[5].firstElementChild.remove()
  hidden_field_destroy=           nested_form_ram_type.childNodes[1].childNodes[5].lastElementChild

  $('#nested_button_edit_ram_type').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_ram_type').css('display', 'none')

  i=0
  $('#nested_button_add_ram_type').click ->
    if i%2==0
      hidden_field_ram_type_id.value='' if hidden_field_ram_type_id.value!=''
      motherboard_ram_type_id.remove()
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
      nested_container_ram_type.childNodes[7].append(motherboard_ram_type_id)
      $('#nested_button_add_ram_type').html '+'
      $('#nested_container_ram_type').css('background', '#ddd')
      $('#nested_button_add_ram_type').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_ram_type').click ->
    if i%2==0
      hidden_field_ram_type_id.value=hidden_field_ram_type_id_saved if hidden_field_ram_type_id.value==''
      motherboard_ram_type_id.remove()
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
      nested_container_ram_type.childNodes[7].append(motherboard_ram_type_id)
      $('#nested_button_destroy_ram_type').css('display', 'none')
      $('#nested_button_edit_ram_type').html '#'
      $('#nested_container_ram_type').css('background', '#ddd')
      $('#nested_button_edit_ram_type').css('background', '#ffc107')
    i+=1
  $('#nested_button_destroy_ram_type').click ->
    hidden_field_destroy.value=true

all_ready = ->
  if @current_controller == "motherboards" && @current_action != "index" && @current_action != "show"
    window.nested_buttons_chipset_motherboard(@current_controller, @current_action)
    window.nested_buttons_ram_type_motherboard(@current_controller, @current_action)
    window.nested_buttons_company(@current_controller, @current_action)
$(document).on 'turbolinks:load', all_ready
# nested_finish
