$(function () {
	   $('#fromDate').datetimepicker();
	   $('#toDate').datetimepicker({
	       useCurrent: true
	   });
	   $("#fromDate").on("change.datetimepicker", function (e) {
	       $('#toDate').datetimepicker('minDate', e.date);
	   });
	   $("#toDate").on("change.datetimepicker", function (e) {
	       $('#fromDate').datetimepicker('maxDate', e.date);
	   });
		
			
   	
 });
 

 
 
 function writePjt(root){
	var proName= $("#proName").val();
	var fromDate = $("#fromDate").val();
	var toDate= $("#toDate").val();
	//프로젝트 참여자 추가
	
	if(!proName){
		alert("제목 입력은 필수입니다.");
		$("#proName").focus();
		return false;
	}
	else{
		writeOk(root, proName, proMax, proContent);
	} 	 	
}

function writeOk(root, name, max, content){
	$.ajax({
		url : root + "/project/writeOk.do",
		type : "POST",
		data : {
			proName : name,
			proMax : max,
			proContent : content
		},
		success:function(data){
			alert("새로운 프로젝트을 작성했습니다.");
			location.href = root + "/project/main.do";
		},
		
		error:function(){
			alert("프로젝트가 작성되지 않았습니다.");
			location.href = root + "/project/main.do";
		}
		
	});
}
       
       
 