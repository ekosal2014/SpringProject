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
	
	$(".cancel").click(function(){
		$(this).parents(".controll-info-edit").hide();
		$(this).parents(".controll-info-row").find(".controll-top").show();
	});
	
	
	
	 $('#submitForm').on('submit',(function(e) {
	        e.preventDefault();
	        var formData = new FormData(this);
	        $.ajax({
	            type:'POST',
	            url: $(this).attr('action'),
	            data:formData,
	            cache:false,
	            contentType: false,
	            processData: false,
	            success:function(data){
	                console.log("success");
	                console.log(data);
	            },
	            error: function(data){
	                console.log("error");
	                console.log(data);
	            }
	        });
	    }));

});