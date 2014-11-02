	$(document).ready(function(){
		
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
	
		$("#ok").click(function(){
			$('#erroform').css("display","none");
		});
		
			$("#submit").click(function(){
					
					
					

					if($("#phone").val()=="请填写联系电话")
						{
						$('#erroform').css("display","block");
						$('#erro').append("<p>请填写联系电话</p>");
						return false;
						}
					if($("#phone").val().length!=11)
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>联系电话填写错误，请填写11位手机号码！</p>");
					
					
					return false;
					}
					var val=$('input:radio[name="question1"]:checked').val();
					if(val==null){
						
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第1题</p>");
						return false;
					}
					var val=$('input:radio[name="question2"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第2题</p>");
						
						return false;
					}var val=$('input:radio[name="question3"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第3题</p>");
						
						return false;
					}var val=$('input:radio[name="question5"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第5题</p>");
						
						return false;
					}var val=$('input:radio[name="question6"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第6题</p>");
						return false;
					}var val=$('input:radio[name="question7"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第7题</p>");
						return false;
					}var val=$('input:radio[name="question8"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第8题</p>");
						return false;
					}var val=$('input:radio[name="question9"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第9题</p>");
						return false;
					}var val=$('input:radio[name="question10"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第10题</p>");
						return false;
					}var val=$('input:radio[name="question11"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第11题</p>");
						return false;
					}var val=$('input:radio[name="question12"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第12题</p>");
						return false;
					}var val=$('input:radio[name="question13"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第13题</p>");
						return false;
					}var val=$('input:radio[name="question14"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第14题</p>");
						return false;
					}var val=$('input:radio[name="question15"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第15题</p>");
						return false;
					}var val=$('input:radio[name="question16"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第16题</p>");
						return false;
					}var val=$('input:radio[name="question17"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第17题</p>");
						return false;
					}var val=$('input:radio[name="question18"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第18题</p>");
						return false;
					}
					var val=$('input:radio[name="question19"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第19题</p>");
						return false;
					}var val=$('input:radio[name="question20"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第20题</p>");
						return false;
					}var val=$('input:radio[name="question21"]:checked').val();
					if(val==null){
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第21题</p>");
						return false;
					}
					
					
		
				
					if($.trim($("#question22").val())==null||$.trim($("#question22").val())=="")
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>请选择第22题</p>");
					return false;
					}
					if($("#question22").val().length>99)
							{
						$('#erroform').css("display","block");
						$('#erro').append("<p>第22题填写字数过多，请填写100字以内！</p>");
							
							return false;
							}
					if($.trim($("#question23").val())==null||$.trim($("#question23").val())=="")
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>请填写第23题！</p>");	
					
					return false;
					}
					if($("#question23").val().length>99)
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>第23题填写字数过多，请填写100字以内！</p>");	
				
					return false;
					}
					if($.trim($("#question24_0").val())==null||$.trim($("#question24_0").val())=="")
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>请填写第24题！</p>");	
					return false;
					}
					if($.trim($("#question25").val())==null||$.trim($("#question25").val())=="")
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>请填写第25题！</p>");	
					return false;
					}
					if($("#question25").val().length>99)
					{
						$('#erroform').css("display","block");
						$('#erro').append("<p>第25题填写字数过多，请填写100字以内！</p>");	
					
					return false;
					}
					
				});
			});