
 function writePjt(root){
	var proName= $("#proName").val();
	var fromDate = $("#fromDate").val();
	var toDate= $("#toDate").val();
	var searchInput = $("#searchInput").val();
	var proContent = $("#proContent").val();
	
	if(!proName){
		alert("제목 입력은 필수입니다.");
		$("#proName").focus();
		return false;
	}
	else{
		alert(proName + " " + fromDate);
		writeOk(root, proName, fromDate, toDate, searchInput, proContent);
	} 	 	
}

function writeOk(root, name, fdate, tdate, search, content){
	$.ajax({
		url : root + "/project/writeOk.do",
		type : "POST",
		data : {
			proName : name,
			fromDate : fdate,
			toDate : tdate,
			searchInput : search,
			proContent : content
		},
		success:function(data){
			alert("새로운 프로젝트을 작성했습니다.");
			location.href = root + "/project/project.do";
		},
		
		error:function(){
			alert("프로젝트가 작성되지 않았습니다.");
			location.href = root + "/project/project.do";
		}
		
	});
}
       


$(function () {
	  $.datepicker.setDefaults({
	    dateFormat: 'yy-mm',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	  });

	  $("#fromDate, #toDate").datepicker({
	  		dateFormat : 'yy-mm-dd'
	  });

 });
 
 

 