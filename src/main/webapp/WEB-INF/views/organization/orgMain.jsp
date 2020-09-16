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

    <title>조직관리</title>

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
	
	<style>
      #treeContainer{
      	 border:2px solid rgb(224,224,224);
      	 height:100%;
	     width:200px;
      	 float:left;
      }
      
      #treeContainer>.tree{
         margin-top:20%;
         float:left;
         height:770px;
      }
      
     #treeContainer> .tree, .tree ul{
        list-style:none;
        padding-left:20px;
      }
      .tree a:before{
        content:'*';
      }
      .tree input[type="checkbox"]{
          display:none;
      }
      .tree input[type="checkbox"]:checked~ul{
          display:none;
      }
      
      
      #right-table{
      	float:left;
      	width:80%;
      	margin-left:5%;
      }
      
    </style>

</head>
<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<div class="btn-lg">
					<span class="icon"> <i class="fas fa-user-circle fa-3x"></i>
					</span>
				</div>

				<h5>OOO 님 환영합니다!</h5>
				<p>인사팀</p>
			</div>

			<ul class="list-unstyled">
				<li><a href="#">마이페이지</a></li>
				<li><a href="${root}/manage/resource.do">인사관리</a></li>
				<li><a href="#">급여관리</a></li>
				<li><a href="#">평가관리</a></li>
				<li><a href="#">복리후생</a></li>
				<li><a href="${root}/organization/main.do">조직관리</a></li>
			</ul>
			<ul class="list-unstyled">
				<li><a href="#">프로젝트관리</a></li>
				<li class=""><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">업무실적산정</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">개인별 업무실적</a></li>
						<li><a href="#">분기별 실적통계</a></li>
					</ul></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<li><a
					href="https://bootstrapious.com/tutorial/files/sidebar.zip"
					class="download">로그아웃</a></li>
			</ul>
		</nav>

		<div>
			<button type="button" id="sidebarCollapse" class="btn btn-secondary"></button>
		</div>

		<div class="container-fluid">


			<!-- Page Content  -->
			<div id="content">
				 <div class="container" id="treeContainer">
					 <ul class="tree">
				        <li>
				          <input type="checkbox" id="root">
				          <label for="root"><img src="${root}/resources/img/minus.png">본사</label>
				          <ul>
				              <li><input type="checkbox" id="node1">
				                  <label for="node1"><img src="${root}/resources/img/minus.png" id=minus>개발부</label>
				                  <ul>
				                      <li>node11</li>
				                      <li>node12</li>
				                      <li>node13</li>
				                  </ul>
				                </li>
				                <li><input type="checkbox" id="node2">
				                  <label for="node2"><img src="${root}/resources/img/minus.png" id="minus">경영부</label>
				                  <ul>
				                      <li>node21</li>
				                      <li>node22</li>
				                      <li>node23</li>
				                  </ul>
				               </li>
				              <li><input type="checkbox" id="node3">
				                  <label for="node3"><img src="${root}/resources/img/minus.png" id="minus">인사부</label>
				                  <ul>
				                      <li>node31</li>
				                      <li>node32</li>
				                      <li>node33</li>
				                  </ul>
				              </li>
				          </ul>
				        </li>
				   </ul>
			   </div>	
			   
			   			
			<table class="table" id="right-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">날짜</th>
								<th scope="col">이름</th>
								<th scope="col">발령구분</th>
								<th scope="col">발령내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<!-- <th scope="row"></th> -->
								<td>2020-01-01</td>
								<td>김민희</td>
								<td>직급 변경</td>
								<td>임명/사원</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>최지훈</td>
								<td>직급 변경</td>
								<td>임명/부장</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>홍지연</td>
								<td>직책 변경</td>
								<td>임명/사원</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>진은지</td>
								<td>직책 변경</td>
								<td>해제</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김지원</td>
								<td>고용형태 변경</td>
								<td>해제</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>은지수</td>
								<td>부서 이동</td>
								<td>해제</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김영태</td>
								<td>직급 변경</td>
								<td>임명/사원</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김영수</td>
								<td>직급 변경</td>
								<td>해제</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>이지원</td>
								<td>직급 변경</td>
								<td>임명/사원</td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	
	
	<script type="text/javascript">
/* 		$(document).ready(function() {
		   $("#node1").click (function() {
			   document.getElementById("minus").src="${root}/resources/img/plus.png";
		   });
		}); */
	</script>
	
    <script type="text/javascript">
					$(document).ready(function() {
						$('#sidebarCollapse').on('click', function() {
							$('#sidebar').toggleClass('active');
							$(this).toggleClass('on');
						});

					});
				</script>
</body>
</html>