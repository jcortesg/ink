# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
	
	page = $("#edit_user").children(".page")
	totalPage = page.length
	count = 0

	$(".step_nav").on "click",(event) ->
		event.preventDefault()
		navigation = $(this).data("nav")
		if navigation is "next"
			count++
		else
			count--
		if count >= 3
			count = 3
			$(this).addClass("hidden")
		page.addClass("hidden").eq(count).removeClass("hidden")
		
	



