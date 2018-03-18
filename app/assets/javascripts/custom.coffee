@global_variables = () ->
  @current_page       = document.body.attributes.class.value.split(/ /)
  @current_controller = @current_page[0]
  @current_action     = @current_page[1]

@nested_buttons_company = (current_controller, current_action) ->

  company_id               = document.getElementById('nested_container_company').childNodes[7].childNodes[1]
  nested_container_company = document.getElementById('nested_container_company')
  nested_form_company      = document.getElementById('nested_form_company')
  nested_form_company.remove()

  hidden_field_company_id       = nested_form_company.lastElementChild
  hidden_field_company_id_saved = hidden_field_company_id.value
  hidden_field_label            = nested_form_company.childNodes[1].childNodes[3].firstElementChild.remove()
  hidden_field_destroy          = nested_form_company.childNodes[1].childNodes[3].lastElementChild

  $('#nested_button_edit_company').css('display', 'none') if current_action == "new" || current_action == "create"
  $('#nested_button_destroy_company').css('display', 'none')

  i=0
  $('#nested_button_add_company').click ->
    if i%2==0
      hidden_field_company_id.value='' if hidden_field_company_id.value!=''
      company_id.remove()
      nested_container_company.childNodes[7].append(nested_form_company)
      $('#nested_button_add_company').html '-'
      $('#nested_container_company').css('background', '#28a745')
      $('#nested_button_add_company').css('background', '#070')
    else
      if $('#nested_button_edit_company').html '-'
        $('#nested_button_edit_company').html '#'
        $('#nested_button_edit_company').css('background', '#ffc107')
        $('#nested_button_destroy_company').css('display', 'none')

      nested_form_company.remove()
      nested_container_company.childNodes[7].append(company_id)
      $('#nested_button_add_company').html '+'
      $('#nested_container_company').css('background', '#ddd')
      $('#nested_button_add_company').css('background', '#28a745')
    i+=1

  $('#nested_button_edit_company').click ->
    if i%2==0
      hidden_field_company_id.value=hidden_field_company_id_saved if hidden_field_company_id.value==''
      company_id.remove()
      nested_container_company.childNodes[7].append(nested_form_company)
      $('#nested_button_destroy_company').css('display', 'inline-block')
      $('#nested_button_edit_company').html '-'
      $('#nested_container_company').css('background', '#ffc107')
      $('#nested_button_edit_company').css('background', '#dda107')
    else
      if $('#nested_button_add_company').html '-'
        $('#nested_button_add_company').html '+'
        $('#nested_button_add_company').css('background', '#28a745')

      nested_form_company.remove()
      nested_container_company.childNodes[7].append(company_id)
      $('#nested_button_destroy_company').css('display', 'none')
      $('#nested_button_edit_company').html '#'
      $('#nested_container_company').css('background', '#ddd')
      $('#nested_button_edit_company').css('background', '#ffc107')
    i+=1
  $('#nested_button_destroy_company').click ->
    hidden_field_destroy.value=true

$(document).on 'turbolinks:load', global_variables
