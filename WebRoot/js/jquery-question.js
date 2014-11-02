	$(document).ready(function(){
		
		$("input[type='radio']").change(function(){
			 if($(this).attr("class")=="last")
			 {
			  
				$(this).siblings(".text").show("1000");
			}
			else
			{
				$(this).parent().siblings(".other").children(".text").hide("1000")
																	.val("请注明...")	;
				
			}
			
			});
			
			
		$("input[type='checkbox'].last").change(function(){
			
		
			
			if($(this).prop("checked")==true)
			 {
			  
				$(this).siblings(".text").show("1000");
			}
			else
			{
				$(this).siblings(".text").hide("1000")
										.val("请注明...");
				
			}
			
			});
			
		
		
		
		
		
		
		 $('form').submit(function() {
			    if(typeof jQuery.data(this, "disabledOnSubmit") == 'undefined') {
			      jQuery.data(this, "disabledOnSubmit", { submited: true });
			      $('input[type=submit], input[type=button]', this).each(function() {
			        $(this).attr("disabled", "disabled");
			      });
			      return true;
			    }
			    else
			    {
			      return false;
			    }
			  });
	
		
		
			$("#submit").click(function(){
					
					
					

					if($("#phone").val()=="请填写联系电话")
						{
						
						alert("请填写联系电话！");
						return false;
						}
					if($("#phone").val().length!=11)
					{
						
					
					alert("联系电话填写错误，请填写11位手机号码！");
					return false;
					}
					
					
					var val=$('input:radio:unchecked').val();
					if(val==null){
						alert("请选择第1题");
						return false;
					}
					var val=$('input:radio[name="question2"]:checked').val();
					if(val==null){
						alert("请选择第2题");
						return false;
					}var val=$('input:radio[name="question3"]:checked').val();
					if(val==null){
						alert("请选择第3题");
						return false;
					}var val=$('input:radio[name="question5"]:checked').val();
					if(val==null){
						alert("请选择第5题");
						return false;
					}var val=$('input:radio[name="question6"]:checked').val();
					if(val==null){
						alert("请选择第6题");
						return false;
					}var val=$('input:radio[name="question7"]:checked').val();
					if(val==null){
						alert("请选择第7题");
						return false;
					}var val=$('input:radio[name="question8"]:checked').val();
					if(val==null){
						alert("请选择第8题");
						return false;
					}var val=$('input:radio[name="question9"]:checked').val();
					if(val==null){
						alert("请选择第9题");
						return false;
					}var val=$('input:radio[name="question10"]:checked').val();
					if(val==null){
						alert("请选择第10题");
						return false;
					}var val=$('input:radio[name="question11"]:checked').val();
					if(val==null){
						alert("请选择第11题");
						return false;
					}var val=$('input:radio[name="question12"]:checked').val();
					if(val==null){
						alert("请选择第12题");
						return false;
					}var val=$('input:radio[name="question13"]:checked').val();
					if(val==null){
						alert("请选择第13题");
						return false;
					}var val=$('input:radio[name="question14"]:checked').val();
					if(val==null){
						alert("请选择第14题");
						return false;
					}var val=$('input:radio[name="question15"]:checked').val();
					if(val==null){
						alert("请选择第15题");
						return false;
					}var val=$('input:radio[name="question16"]:checked').val();
					if(val==null){
						alert("请选择第16题");
						return false;
					}var val=$('input:radio[name="question17"]:checked').val();
					if(val==null){
						alert("请选择第17题");
						return false;
					}var val=$('input:radio[name="question18"]:checked').val();
					if(val==null){
						alert("请选择第18题");
						return false;
					}
					var val=$('input:radio[name="question19"]:checked').val();
					if(val==null){
						alert("请选择第19题");
						return false;
					}var val=$('input:radio[name="question20"]:checked').val();
					if(val==null){
						alert("请选择第20题");
						return false;
					}var val=$('input:radio[name="question21"]:checked').val();
					if(val==null){
						alert("请选择第21题");
						return false;
					}
					
				
					
		
				
					if($.trim($("#question22").val())==null||$.trim($("#question22").val())=="")
					{
					alert("请填写第22题");
					return false;
					}
					if($("#question22").val().length>99)
							{
							alert("第22题填写字数过多，请填写100字以内！");
							return false;
							}
					if($.trim($("#question23").val())==null||$.trim($("#question23").val())=="")
					{
					alert("请填写第23题");
					return false;
					}
					if($("#question23").val().length>99)
					{
					alert("第23题填写字数过多，请填写100字以内！");
					return false;
					}
					if($.trim($("#question24_0").val())==null||$.trim($("#question24_0").val())=="")
					{
					alert("请填写第24题");
					return false;
					}
					if($.trim($("#question25").val())==null||$.trim($("#question25").val())=="")
					{
					alert("请填写第25题");
					return false;
					}
					if($("#question25").val().length>99)
					{
					alert("第25题填写字数过多，请填写100字以内！");
					return false;
					}
					
				});
			});