# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@display_parts_num = () ->
  ram_num=[]
  for i in [0...$(".ram_num").length]
    ram_num[i]=$(".ram_num")[i].innerHTML
  console.log(ram_num)


  video_card_num=[]
  for i in [0...$(".video_card_num").length]
    video_card_num[i]=$(".video_card_num")[i].innerHTML
  console.log(video_card_num)

  ssd_num=[]
  for i in [0...$(".ssd_num").length]
    ssd_num[i]=$(".ssd_num")[i].innerHTML
  console.log(ssd_num)

  hdd_num=[]
  for i in [0...$(".hdd_num").length]
    hdd_num[i]=$(".hdd_num")[i].innerHTML
  console.log(hdd_num)

  console.log($(".part_num"))
  for i in [0...$(".part_num").length]

    if i%4==0
      $(".part_num")[i].innerHTML=ram_num[i/4]
    else if i%4==1
      $(".part_num")[i].innerHTML=video_card_num[(i-1)/4]
    else if i%4==2
      $(".part_num")[i].innerHTML=ssd_num[(i-2)/4]
    else if i%4==3
      $(".part_num")[i].innerHTML=hdd_num[(i-3)/4]

all_ready = ->
  if @current_controller == "assemblies" && @current_action == "index"
    window.display_parts_num()
$(document).on 'turbolinks:load', all_ready
