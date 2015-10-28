$(document).ready(function(){
	$(".tr-controll-info").mouseover(function(){
		$(this).css("background-color", "#F5F5F5");
		$(this).find(".setting-left").show();
	});
	
	$(".tr-controll-info").mouseleave(function(){
		$(this).css("background-color", "white");
		$(this).find(".setting-left").hide();
	});
	
	$(".controll-edit").click(function(){
		$(this).parents(".controll-top").hide();
		$(this).parents(".controll-info-row").find(".controll-info-edit").show();
		
	});
		
	$("#broswer_image").click(function(){
		$('input[type=file]').click();
	});
	
	
});