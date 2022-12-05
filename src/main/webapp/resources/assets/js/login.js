


		var doubleCheck = 0;
		
		$(function() {
		    //idck 버튼을 클릭했을 때 
		    $("#doubleCheck").click(function() {
		        
		        var id =  $("#id").val(); 
		        
		        $.ajax({
		            async: true,
		            type : 'POST',
		            data : {id : $('#id').val()},
		            url : "registration.do",
		            dataType : "json",
		            contentType: "application/json; charset=UTF-8",
		            success : function(data) {
		                if (data.cnt > 0) {
		                    
		                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
		                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
		                    $("#divInputId").addClass("has-error")
		                    $("#divInputId").removeClass("has-success")
		                    $("#id").focus();
		                    
		                
		                } else {
		                    alert("사용가능한 아이디입니다.");
		                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
		                    $("#divInputId").addClass("has-success")
		                    $("#divInputId").removeClass("has-error")
		                    $("#pw").focus();
		                    doubleCheck = 1;
		                    
		                }
		            },
		            
		            error : function(error) {
		                
		                alert("error : " + error);
		            }
		        });
		    });
		});
		 
		 
