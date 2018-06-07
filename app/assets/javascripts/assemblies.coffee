# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@display_parts_num = () ->
  ram_num=[]
  for i in [0...$(".ram_num").length]
    ram_num[i]=$(".ram_num")[i].innerHTML


  video_card_num=[]
  for i in [0...$(".video_card_num").length]
    video_card_num[i]=$(".video_card_num")[i].innerHTML

  ssd_num=[]
  for i in [0...$(".ssd_num").length]
    ssd_num[i]=$(".ssd_num")[i].innerHTML

  hdd_num=[]
  for i in [0...$(".hdd_num").length]
    hdd_num[i]=$(".hdd_num")[i].innerHTML

  for i in [0...$(".part_num").length]
    if i%4==0
      $(".part_num")[i].innerHTML=ram_num[i/4]
    else if i%4==1
      $(".part_num")[i].innerHTML=video_card_num[(i-1)/4]
    else if i%4==2
      $(".part_num")[i].innerHTML=ssd_num[(i-2)/4]
    else if i%4==3
      $(".part_num")[i].innerHTML=hdd_num[(i-3)/4]

@autocompare_btn = () ->
  i=0
  $('#autocompare_btn').click ->
    if i%2==0
      $('#autocompare_form').css('display', 'block')
      $('.form_color').addClass('alert alert-secondary')
      i+=1
    else
      $('#autocompare_form').css('display', 'none')
      $('.form_color').removeClass('alert alert-secondary')
      $('#assembly_finanse').val('')
      i+=1
@autocompare_drop_all_btn = () ->
  $('#autocompare_drop_all').click ->
    $("option:selected").removeAttr("selected");
all_ready = ->
  if @current_controller == "assemblies" && @current_action == "index"
    window.display_parts_num()
  if @current_controller == "assemblies" && (@current_action == "edit" || @current_action == "new")
    window.autocompare_btn()
  if @current_controller == "assemblies" && @current_action == "edit"
    window.autocompare_drop_all_btn()
$(document).on 'turbolinks:load', all_ready
