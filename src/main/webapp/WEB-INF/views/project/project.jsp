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
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
	
	<!-- card -->
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<!-- project.js -->
	<script type="text/javascript" src="${root}/resources/js/project/project.js"></script>
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


          <!-- Page Content  -->
          <!--팀장만  글 작성 버튼 -->
		<%-- <c:if test= "${memberDto.memLevel eq'팀장'}">  --%>
		   <a href="#">
         		<i class="far fa-edit fa-2x" style="float:right" data-toggle="modal" data-target="#projectWriteModal"></i>
      		</a>
		         
      
	<%-- 	</c:if> --%>
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
				  <div class="col-md-6 mb-4">
				
				    <!-- Card -->
				    <div class="card gradient-card">		     
				          <!-- Content -->
				          <a href="${root}/project/projectContent.do">
				          <div class="card bg-warning">
				               <div class="card-body text-center">
				               <p class="card-text">@@ 프로젝트</p>
				               
				                <div class="progress">
									 <div class="progress-bar bg-secondary" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
											 <span class="sr-only">70% Complete</span>
									 </div>
 								</div>
				              </div>
				            </div>
				          </a>
				        </div>
				    </div>
				    <!-- Card -->
				  </div>			
          </div>
        </div>
    </div>

<!-- Write Model -->
<div class="modal fade" id="projectWriteModal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg mt-5" role="document">
		<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 font-weight-bold text-primary p-2">프로젝트 생성</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
				</div>
				
				<!-- modal-body -->
						<div class="modal-body">
						
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
										 <div class="input-group date" id="fromDate" data-target-input="nearest">
                							<input type="text" class="form-control datetimepicker-input" data-target="#fromDate" placeholder="시작 날짜를 선택하세요."/>
                								<div class="input-group-append" data-target="#fromDate" data-toggle="datetimepicker">
                    								<div class="input-group-text"><i class="fa fa-calendar"></i></div>
                								</div>
            							</div>
            							</div>
									</div>
									<p style="margin: 6px 6px 8px 8px">~</p>
									<div class="col-sm-5">
										<div class="form-group" style="display: inline;"> 
											  <div class="input-group date" id="toDate" data-target-input="nearest">
	                							<input type="text" class="form-control datetimepicker-input" data-target="#toDate" placeholder="마감 날짜를 선택하세요."/>
	              									  <div class="input-group-append" data-target="#toDate" data-toggle="datetimepicker">
	                   									 <div class="input-group-text"><i class="fa fa-calendar"></i></div>
	              									  </div>
	          								</div>
										 </div>
									 </div> 
							</div>
							 
							 <!-- 프로젝트 참여자 -->
							   <div class="form-group row">
			                     <div class="col-sm-12">
			                        <input type="text" class="form-control" name="proName" id="proName" style="display: inline;"  placeholder="프로젝트 참여자를 선택해주세요.">
			                     </div>
			                  </div>
								
						
						
						
							<!-- 글 내용 -->
							<div class="form-group row">
								<div class="col-sm-12">
									<textarea class="form-control" rows="20" name="proContent" placeholder="글을 입력하세요." id="proContent"></textarea>
								</div>
							</div>
								
						<!-- modal-footer -->
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

</body>
</html>