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
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- card -->
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<!-- CSS , JS -->
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 
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
		   <a href="${root}/project/projectWrite.do">
         		<i class="far fa-edit fa-2x" style="float:right"></i>
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
				    <a href="${root}/project/projectContent.do">
				    <div class="card gradient-card">		     
				          <!-- Content -->
				          <div class="card" style="background-color: #6eb7d0;">
				               <div class="card-body text-center">
				               <p class="card-text" style="color: #fff;">@@ 프로젝트</p>
				               
				                <div class="progress">
									 <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%; background-color:#265f77">
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