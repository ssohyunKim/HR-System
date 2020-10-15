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
    <!-- jQuery -->
   	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <!-- Datepicker -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
	
	
	<script type="text/javascript">

		
</script>

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

				<h5>관리자님 환영합니다!</h5>
				<p>인사팀</p>
			</div>

			<ul class="list-unstyled">
				<li><a href="#">마이페이지</a></li>
				<li><a href="${root}/commute/commuteMain.do">근태관리</a></li>
			</ul>
			<ul class="list-unstyled">
				<li><a href="${root}/manage/resource.do">인사관리</a></li>
				<li><a href="${root}/manage/salary.do">급여관리</a></li>
				<li><a href="${root}/assess/assessMain.do">평가관리</a></li>
				<li><a href="#">조직관리</a></li>
			</ul>
			<ul class="list-unstyled">
				<li><a href="#">프로젝트</a></li>
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
				<div class="line"></div>
				<div>
					<nav class="navbar navbar-light bg-light">
						<div>
							<form class="form-inline">
								<div class="form-group" style="padding-right:50px;">
									<div class="input-group">
										<label class="input-group-text" for="inputGroupSelect01">부서선택</label>
									</div>
									<select class="custom-select" id="inputGroupSelect01" >
										<option selected>개발팀</option>
										<option value="1">인사팀</option>
										<option value="2">경영팀</option>
										<option value="3">개발팀</option>
									</select>
									&nbsp;
									<div class="input-group">
										<label class="input-group-text" for="inputGroupSelect01">직급</label>
									</div>
									<select class="custom-select" id="inputGroupSelect01" >
										<option selected>전체</option>
										<option value="1">사원</option>
										<option value="2">주임</option>
										<option value="3">대리</option>
										<option value="4">과장</option>
										<option value="5">차장</option>
										<option value="6">부장</option>
									</select>
								</div>
								&nbsp;
								<div class="form-group mb-6">
									<div class="form-group">
										<div class="input-group date" id="fromDate"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#fromDate" value="10/01/2020">
											<div class="input-group-append" data-target="#fromDate"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div> 
									<div style = "padding-left:20px; padding-right:20px"> ~
									</div> 
									<div class="form-group">
										<div class="input-group date" id="toDate"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#toDate" value="10/31/2020">
											<div class="input-group-append" data-target="#toDate"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								&nbsp;
								<div class="form-group" style="padding-left:50px; padding-right:50px;">
									<input class="form-control mr-sm-2" type="search" placeholder="사원명" aria-label="Search">
									<input class="btn btn-outline-secondary my-2 my-sm-0"  style=" width:50px;"
										id="search1" type="submit" value="검색"/>
								</div>
								
								<div class="form-group" style="float:right; padding-left:150px;">
									<button class="btn btn-primary my-2 my-sm-2" type="button" data-toggle="modal" data-target="#WriteModal">등록</button>&nbsp;
									<button class="btn btn-dark my-2 my-sm-0" type="submit">다운로드</button>
								</div>
							</form>
						</div>
					</nav>
				</div>
				<div>
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">날짜</th>
								<th scope="col">부서</th>
								<th scope="col">이름</th>
								<th scope="col">직급</th>
								<th scope="col">직원코드</th>
								<th scope="col">평가</th>
							</tr>
						</thead>
						<tbody>
								<tr data-toggle="modal" data-target="#click">
								<!-- <th scope="row"></th> -->
								<td>2020-10-17</td>
								<td>개발팀</td>
								<td>조동준</td>
								<td>팀장</td>
								<td>11-1111</td>
								<td>A+</td>
								</tr>
								
								<tr>
								<td>2020-10-15</td>
								<td>개발팀</td>
								<td>김민희</td>
								<td>사원</td>
								<td>20-7784</td>
								<td>A0</td>
								</tr>
								
						
							
								<tr>
								<td>2020-10-15</td>
								<td>개발팀</td>
								<td>진은지</td>
								<td>대리</td>
								<td>17-3695</td>
								<td>A0</td>
							</tr>
							
							<tr>
								<td>2020-10-15</td>
								<td>개발팀</td>
								<td>김영태</td>
								<td>팀장</td>
								<td>11-5211</td>
								<td>A+</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
			<!-- 클릭 Model -->
	<div class="modal fade" id="click" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">평가 수정하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form action="" name="createForm" method="post" enctype="multipart/form-data">
					<!-- modal-body -->
					<div class="modal-body">
						<!-- 날짜 -->
						<div class="form-group row">
							<div class="col-sm-12">
							날짜
									<div class="form-group">
										<div class="input-group date" id="Date"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#Date" value="10/17/2020">
											<div class="input-group-append" data-target="#Date"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div> 
							</div>
						</div>
						<!-- 이름 -->
						<div class="form-group row">
							<div class="col-sm-12">
							이름
								<input type="text" class="form-control" name="name" placeholder="조동준">
							</div>
						</div>
						<!-- 부서  -->
						<div class="form-group row">
							<div class="col-sm-12">
							부서
			                    <select name="category1" class="form-control">
								    <option value="경영팀">개발팀</option>
								    <option value="회계팀">회계팀</option>
								    <option value="개발팀">경영팀</option>
								</select>
							</div>
						</div>
						
						<!-- 직급  -->
						<div class="form-group row">
							<div class="col-sm-12">
							직급
			                    <select name="category2" class="form-control">
								    <option value="1">팀장</option>
								    <option value="2">주임</option>
								    <option value="3">대리</option>
								   	<option value="4">과장</option>
								    <option value="5">차장</option>
								    <option value="6">사원</option>
								</select>
							</div>
						</div>
						
						<!--직원코드 -->
						<div class="form-group row">
							<div class="col-sm-12">
							직원코드
								<input type="text" class="form-control" name="content" placeholder="20-7784">
							</div>
						</div>
						
						<!-- 평가  -->
						<div class="form-group row">
							<div class="col-sm-12">
							평가
			                    <select name="category2" class="form-control">
								 
								    <option value="1">A+</option>
								    <option value="2">A0</option>
								    <option value="3">B+</option>
								   	<option value="4">B0</option>
								    <option value="5">C+</option>
								    <option value="6">C0</option>
								    <option value="7">D+</option>
								    <option value="8">D0</option>
								</select>
							</div>
						</div>
						
					</div>
					<!-- modal-footer -->
					<div class="modal-footer justify-content-between">
						<button type="reset" class="btn btn-warning">초기화</button>
						<div>
							<button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-danger"  id="btnClick3" >삭제</button>
							<button type="button" class="btn btn-primary"  id="btnClick2" >수정완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
		<!-- 등록 Model -->
	<div class="modal fade" id="WriteModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">평가 등록하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form action="" name="createForm" method="post" enctype="multipart/form-data">
					<!-- modal-body -->
					<div class="modal-body">
						<!-- 날짜 -->
						<div class="form-group row">
							<div class="col-sm-12">
							날짜
									<div class="form-group">
										<div class="input-group date" id="Date1"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#Date1" value="09/15/2020">
											<div class="input-group-append" data-target="#Date1"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div> 
							</div>
						</div>
						<!-- 이름 -->
						<div class="form-group row">
							<div class="col-sm-12">
							이름
								<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요.">
							</div>
						</div>
						<!-- 부서  -->
						<div class="form-group row">
							<div class="col-sm-12">
							부서
			                    <select name="category1" class="form-control">
								    <option value="경영팀">경영팀</option>
								    <option value="회계팀">회계팀</option>
								    <option value="개발팀">개발팀</option>
								</select>
							</div>
						</div>
						
						<!-- 직급  -->
						<div class="form-group row">
							<div class="col-sm-12">
							직급
			                    <select name="category2" class="form-control">
								    <option value="1">사원</option>
								    <option value="2">주임</option>
								    <option value="3">대리</option>
								   	<option value="4">과장</option>
								    <option value="5">차장</option>
								    <option value="6">부장</option>
								</select>
							</div>
						</div>
						
						<!--직원코드 -->
						<div class="form-group row">
							<div class="col-sm-12">
							직원코드
								<input type="text" class="form-control" name="content" placeholder="직원코드를 입력하세요.">
							</div>
						</div>
						
						<!-- 평가  -->
						<div class="form-group row">
							<div class="col-sm-12">
							평가
			                    <select name="category2" class="form-control">
								    <option value="1">A+</option>
								    <option value="2">A0</option>
								    <option value="3">B+</option>
								   	<option value="4">B0</option>
								    <option value="5">C+</option>
								    <option value="6">C0</option>
								    <option value="7">D+</option>
								    <option value="8">D0</option>
								</select>
							</div>
						</div>
						
					</div>
					<!-- modal-footer -->
					<div class="modal-footer justify-content-between">
						<button type="reset" class="btn btn-warning">초기화</button>
						<div>
							<button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary"  id="btnClick1" >확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	


    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('on');
			});
			
			$('#fromDate').datetimepicker({
				format: 'L'	
			});

			$('#Date').datetimepicker({
				format: 'L'	
			});
			
			$('#Date1').datetimepicker({
				format: 'L'	
			});
			
			$('#toDate').datetimepicker({
				format: 'L', 
				useCurrent: false
			});
			
			$("#fromDate").on("change.datetimepicker", function (e) { 
				$('#toDate').datetimepicker('minDate', e.date); 
			}); 
			
			$("#toDate").on("change.datetimepicker", function (e) {
				$('#fromDate').datetimepicker('maxDate', e.date); 
			});
			
			$("#btnClick3").click(function(e){
				e.preventDefault;
				alert("삭제가 완료되었습니다.")
				location.href="${root}/assess/assessMain_delete";
			});
			
		});
	</script>
</body>
</html>