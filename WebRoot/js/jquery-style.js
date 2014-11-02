
	$(function(){  
		
		$("input[class*=graytips]") //所有样式名中含有grayTips的input   
		.each(function(){   
			var oldVal=$(this).val();   //默认的提示性文本   
			$(this)   
					.css({"color":"#888"})  //灰色   
					.focus(function(){   
						if($(this).val()!=oldVal)
						{$(this).css({"color":"#000"});}
						else{$(this).val("").css({"color":"#888"});}   
					})   
					.blur(function(){   
						if($(this).val()==""){$(this).val(oldVal).css({"color":"#888"});}   
					})   
					.keydown(function(){$(this).css({"color":"#000"});
					});  
		}) ;  
		
		$(".area").mouseenter(function(){
					var child = $(this).children();
					$(this).css({"background-color" : "#F0FFFF"})
						   .children().css({"background-color" : "#F0FFFF"});
					child.mouseenter(function(){$(this).css({"background-color" : "#BBFFFF"});})
						 .mouseleave(function(){$(this).css({"background-color" : "#F0FFFF"});});
					
				})
				.mouseleave(function(){
					$(this).css({"background-color" : "#fff"})
							.children().css({"background-color" : "#FFF"});
					
				});	
		
		$(input[type="submit"]).mouseenter(function(){
			$(this).css({"background-color":"#fff"});
		});
		
		$(":button").mouseenter(function(){
			alert("aa");
			$(this).css({"color":"red"});
		});
	});