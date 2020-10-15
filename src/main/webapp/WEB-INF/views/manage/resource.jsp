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

</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$(this).toggleClass('on');
		});
		
		$('#fromDate').datetimepicker({
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
		
	});
	function excelDownload(table){
		 
		var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
			tab_text += '<head><meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
			tab_text += '<xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>'
			tab_text += '<x:Name>Sheet</x:Name>';
			tab_text += '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
			tab_text += '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';
			tab_text += "<table border='1px'>";
		var exportTable = $('#' + table).clone();
		exportTable.find('input').each(function(index, elem) {
			$(elem).remove();
		});
			tab_text += exportTable.html();
			tab_text += '</table></body></html>';
		var data_type = 'data:application/vnd.ms-excel';
		var ua = window.navigator.userAgent;
		var msie = ua.indexOf("MSIE ");
		var fileName = '인사테이블_' + $('#fromDate').find("input").val() + '_'
		+ $('#toDate').find("input").val() + '.xls';
		
		//IE일 경우
		if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
				if (window.navigator.msSaveBlob) {
					var blob = new Blob([ tab_text ], {
						type : "application/csv;charset=utf-8;"
					});
					navigator.msSaveBlob(blob, fileName);
				}
		} else {
			var blob2 = new Blob([ tab_text ], {
				type : "application/csv;charset=utf-8;"
			});
			var filename = fileName;
			var elem = window.document.createElement('a');
			elem.href = window.URL.createObjectURL(blob2);
			elem.download = filename;
			document.body.appendChild(elem);
			elem.click();
			document.body.removeChild(elem);
		}
	}
</script>
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
				<li><a href="${root}/manage/resource.do">인사관리</a></li>
				<li><a href="${root}/manage/salary.do">급여관리</a></li>
				<li><a href="${root}/commute/commuteMain.do">복리후생</a></li>
				<li><a href="${root}/assess/assessMain.do">평가관리</a></li>
				<li><a href="${root}/commute/commuteMain.do">근태관리</a></li>
				<li><a href="${root}/organization/main.do">조직관리</a></li>
			</ul>
			<ul class="list-unstyled">
				<li><a href="${root}/project/project.do">프로젝트</a></li>
				<!-- <li class=""><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">업무실적산정</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">개인별 업무실적</a></li>
						<li><a href="#">분기별 실적통계</a></li>
					</ul></li> -->
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
								<div class="form-group">
									<div class="input-group">
										<label class="input-group-text" for="inputGroupSelect01">부서선택</label>
									</div>
									<select class="custom-select" id="inputGroupSelect01">
										<option selected>전체</option>
										<option value="1">경영팀</option>
										<option value="2">회계팀</option>
										<option value="3">개발팀</option>
									</select>
									&nbsp;
									<div class="input-group">
										<label class="input-group-text" for="inputGroupSelect01">발령구분</label>
									</div>
									<select class="custom-select" id="inputGroupSelect01">
										<option selected>전체</option>
										<option value="1">직급 변경</option>
										<option value="2">직책 변경</option>
										<option value="3">부서 이동</option>
										<option value="3">고용형태 변경</option>
									</select>
								</div>
								&nbsp;
								<div class="form-group mb-6">
									<div class="form-group">
										<div class="input-group date" id="fromDate"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#fromDate" value="09/15/2020">
											<div class="input-group-append" data-target="#fromDate"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div> ~ 
									<div class="form-group">
										<div class="input-group date" id="toDate"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#toDate" value="09/15/2020">
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
								<div class="form-group">
									<input class="form-control mr-sm-2" type="search" placeholder="사원명" aria-label="Search">
									<button class="btn btn-outline-secondary my-2 my-sm-0"
										type="submit">검색</button>
								</div>
								
								<div class="form-group" style="float:right; padding-left:150px;">
									<button class="btn btn-primary my-2 my-sm-2" type="button" data-toggle="modal" data-target="#WriteModal">등록</button>&nbsp;
									<button class="btn btn-dark my-2 my-sm-0" type="button" onclick="excelDownload('resourceList')">다운로드</button>
								</div>
							</form>
						</div>
					</nav>
				</div>
				<div>
					<table id="resourceList" class="table">
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
								<td>직책 변경</td>
								<td>임명/사원</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>최지훈</td>
								<td>직책 변경</td>
								<td>임명/사원</td>
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
								<td>직위 변경</td>
								<td>임명/선임</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김지원</td>
								<td>직위 변경</td>
								<td>임명/대리</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>은지수</td>
								<td>부서 이동</td>
								<td>인사부서</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김영태</td>
								<td>직위 변경</td>
								<td>임명/선임</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>김영수</td>
								<td>직위 변경</td>
								<td>경영/수석</td>
							</tr>
							<tr>
								<td>2020-01-01</td>
								<td>이지원</td>
								<td>직위 변경</td>
								<td>임명/선임</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
		<!-- 등록 Model -->
	<div class="modal fade" id="WriteModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">등록하기</h5>
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
								<input type="text" class="form-control" name="date" value="2020-09-15" readonly>
							</div>
						</div>
						<!-- 이름 -->
						<div class="form-group row">
							<div class="col-sm-12">
							이름
								<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요.">
							</div>
						</div>
						<!-- 발령구분 -->
						<div class="form-group row">
							<div class="col-sm-12">
							발령구분
			                    <select name="category" class="form-control">
								    <option value="직급 변경">직급 변경</option>
								    <option value="부서 이동">부서 이동</option>
								    <option value="직책 변경">직책 변경</option>
								    <option value="기타">기타</option>
								</select>
							</div>
						</div>
						<!-- 발령내용 -->
						<div class="form-group row">
							<div class="col-sm-12">
							발령내용
								<input type="text" class="form-control" name="content" placeholder="발령내용을 입력하세요.">
							</div>
						</div>
						<!-- 비고 -->
						<div class="form-group row">
							<div class="col-sm-12">
							비고
								<textarea class="form-control" rows="3" name="cusContent" placeholder="글을 입력하세요."></textarea>
							</div>
						</div>
					</div>
					<!-- modal-footer -->
					<div class="modal-footer justify-content-between">
						<button type="reset" class="btn btn-warning">초기화</button>
						<div>
							<button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">확인</button>
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
</body>
</html>