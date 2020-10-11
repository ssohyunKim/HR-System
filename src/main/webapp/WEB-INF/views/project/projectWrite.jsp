<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>인사관리시스템</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="${root}/resources/css/style.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@700&display=swap" rel="stylesheet">
    <!-- AwesomeIcon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
	
	<!-- datepickers -->
	 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- card -->
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<!-- CSS , JS -->
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 
	 <!-- project.js -->
	<script type="text/javascript" src="${root}/resources/js/project/project.js"></script>
	 
	 <style>
	.ui-autocomplete { 
	    overflow-y: scroll; 
	    overflow-x: hidden;
	    }
	</style>
 
</head>


<body>
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <div class="btn-lg">
				        <span class="icon">
					         <i class="fas fa-user-circle fa-3x"></i>
						    </span>
                </div>

                <h5>OOO 님 환영합니다!</h5>
                <p>인사팀</p>
            </div>

            <ul class="list-unstyled">
                <li>
                    <a href="#">마이페이지</a>
                </li>
                <li>
                    <a href="#">인사관리</a>
                </li>
                <li>
                    <a href="#">급여관리</a>
                </li>
                <li>
                    <a href="#">평가관리</a>
                </li>
                <li>
                    <a href="#">근태관리</a>
                </li>
                <li>
                    <a href="#">복리후생</a>
                </li>
                <li>
                    <a href="#">조직관리</a>
                </li>
            </ul>
            <ul class="list-unstyled">
                <li>
                    <a href="#">프로젝트관리</a>
                </li>
                <li class="">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">업무실적산정</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">개인별 업무실적</a>
                        </li>
                        <li>
                            <a href="#">분기별 실적통계</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">로그아웃</a>
                </li>
            </ul>
        </nav>

        <div>
          <button type="button" id="sidebarCollapse" class="btn btn-secondary"></button>
        </div>

        <div class="container-fluid">
          <div id="content">
              <div>
              </div>
              <div class="line">
                <h2></h2>
                <p></p>
             
              </div>
              
              <!-- project Card  -->
				<!--Grid row-->
				<div class="row">
				
				  <!--Grid column-->
				  <div class="col-md-10 mb-4">
				
			      <!-- 프로젝트 제목  -->
                  <div class="form-group row">
                     <div class="col-sm-12">
                        <input type="text" class="form-control" name="proName" id="proName" style="display: inline;"  placeholder="제목을 입력하세요.">
                     </div>
                  </div>
                  
				<!-- 프로젝트 기간 -->
				<div class="form-group row">
					  <div class="col-sm-5">
							<div class="form-group" style="display: inline;"> 
								<input type="text" class="form-control" id="fromDate" placeholder="시작 날짜를 선택하세요." />
         							</div>
						</div>
						<p style="margin: 6px 6px 8px 8px">~</p>
						<div class="col-sm-5">
							<div class="form-group" style="display: inline;"> 
									<input type="text" class="form-control"  id="toDate" placeholder="마감 날짜를 선택하세요."/>
							 </div>
						 </div> 
				</div>
				 
				 <!-- 프로젝트 참여자 -->
				   <div class="form-group row">
                     <div class="col-sm-12">
                        <input type="text" class="form-control" id="searchInput" style="display: inline;"  placeholder="프로젝트 참여자를 선택해주세요.">
                     </div>
                  </div>

				<!-- 글 내용 -->
				<div class="form-group row">
					<div class="col-sm-12">
						<textarea class="form-control" rows="20" name="proContent" placeholder="글을 입력하세요." id="proContent"></textarea>
					</div>
				</div>
								
				<!-- footer -->
				<div class="modal-footer justify-content-between">
					<button type="reset" class="btn btn-warning">초기화</button>
					<div>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary" onclick="writePjt('${root}')">작성 완료</button>
					</div>
					</div>
				</div>

</div>
</div>

				  </div>			
</div>


   <!-- jQuery CDN - Slim version (=without AJAX) -->
   <!-- Popper.JS -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
   <!-- Bootstrap JS -->
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

   <script type="text/javascript">
       $(document).ready(function () {
           $('#sidebarCollapse').on('click', function () {
               $('#sidebar').toggleClass('active');
               $(this).toggleClass('on');
           });
       

       
       });

   </script>

<script type="text/javascript">
 var autodata="";
	$(document).ready(function() {
		   function split( val ) {
		        return val.split( /,\s*/ );
		    }
		    function extractLast( term ) {
		        return split( term ).pop();
		    }
		    
		
		 $("#searchInput").on("keydown", function( event ) {
        if(event.keyCode === $.ui.keyCode.TAB && $(this).autocomplete("instance").menu.active) {
            event.preventDefault();

        	}

    	})
		 
		 .autocomplete({
			 source : function(request, response) {
				 console.log(extractLast(request.term));
				 $.ajax({
					 url : "${root}/project/autocomplete.do",
					 type : "post",
					 dataType : "json",
					 data: request,
					 success : function(data) {
					 var result = data;
					 response(result);
					 autodata = data;
					 },
					 
					 error : function(data) {
					 alert("에러가 발생하였습니다.")
					 }
				 });
			 },
		   search: function() {
	            // 최소 입력 길이를 마지막 항목으로 처리합니다.
	            var term = extractLast(this.value);
	            if(term.length < 1) {
	                return false;
	            }
	        },

		 	focus:function(){
		 		return false;
		 	},
		 	select : function(event, ui){
		 		var terms = split(this.value);
		 		terms.pop();
		 		terms.push(ui.item.value);
		 		terms.push("");
		 		this.value = terms.join(", ");
		 		return false;
		 	}
		 
		 
		 
		 });
		 
		 
	});
</script>




</body>
</html>