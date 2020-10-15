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
      
      #btnContainer{
      	margin-top:5%;
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
				<li><a href="#">복리후생</a></li>
			</ul>
			<ul class="list-unstyled">
				<li><a href="${root}/manage/resource.do">인사관리</a></li>
				<li><a href="${root}/manage/salary.do">급여관리</a></li>
				<li><a href="#">평가관리</a></li>
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
				 <div class="container" id="treeContainer">
				 	<div class="container" id="btnContainer">
				 		<button type="button" id="btnAdd" data-toggle="modal" data-target="#addModal">추가</button>
				 		<button type="button" id="btnMod" data-toggle="modal" data-target="#modModal">수정</button>
				 		<button type="button" id="btnDel">삭제</button>
				 	</div>
					 <ul class="tree">
				        <li>
				          <input type="checkbox" id="root">
				          <label for="root" class="show"><img src="${root}/resources/img/minus.png">본사</label>
				          <ul>
				              <li id="detail1"><input type="checkbox" id="node1">
				                  <label for="node1" id="dname"><img src="${root}/resources/img/minus.png" id=minus>개발부</label>
				                  <ul>
				                      <li>개발1팀</li>
				                      <li>개발2팀</li>
				                      <li id="team">컨설팅팀</li>
				                  </ul>
				                </li>
				                <li id="detail2"><input type="checkbox" id="node2">
				                  <label for="node2"><img src="${root}/resources/img/minus.png" id="minus">경영부</label>
				                  <ul>
				                      <li>경영지원</li>
				                      <li>업무관리</li>
				                      <li>재무관리</li>
				                  </ul>
				               </li>
				              <li id="detail3"><input type="checkbox" id="node3">
				                  <label for="node3"><img src="${root}/resources/img/minus.png" id="minus">인사부</label>
				                  <ul>
				                      <li>온라인광고</li>
				                      <li>오프라인광고</li>
				                      <li id="hide">인재채용</li>
				                  </ul>
				              </li>
				          </ul>
				        </li>
				   </ul>
			   </div>	
			   
			   			
			<table class="table" id="right-table">
						<thead class="thead-light">
							<tr>
								<th scope="col">이름</th>
								<th scope="col">부서</th>
								<th scope="col">직급</th>
								<th scope="col">사번</th>
							</tr>
						</thead>
						<tbody>
							<tr data-toggle="modal" data-target="#click">
								<!-- <th scope="row"></th> -->
							<tr class="dev">
								<td>김영태</td>
								<td>개발</td>
								<td>팀장</td>
								<td>11-5211</td>
							</tr>
							<tr class="dev">
								<td>진은지</td>
								<td>개발</td>
								<td>대리</td>
								<td>17-3695</td>
							</tr>
							<tr class="dev">
								<td>김민희</td>
								<td>개발</td>
								<td>사원</td>
								<td>20-7784</td>
							</tr>
							<tr class="g">
								<td>김영수</td>
								<td>경영</td>
								<td>팀장</td>
								<td>09-7412</td>
							</tr>
							<tr class="g">
								<td>김지원</td>
								<td>경영</td>
								<td>대리</td>
								<td>16-7541</td>
							</tr>
							<tr class="g">
								<td>최지훈</td>
								<td>경영</td>
								<td>사원</td>
								<td>20-5685</td>
							</tr>
							<tr class="h">
								<td>이지원</td>
								<td>인사 </td>
								<td>팀장</td>
								<td>07-1578</td>
							</tr>
							<tr class="h">
								<td>홍지연</td>
								<td>인사</td>
								<td>사원</td>
								<td>19-8458</td>
							</tr>
							<tr class="h">
								<td>은지수</td>
								<td>인사</td>
								<td>대리</td>
								<td>16-4451</td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
	</div>
	<!-- 수정 Model -->
	<div class="modal fade" id="click" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">정보 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				
					<!-- modal-body -->
					<div class="modal-body">
					
						<!-- 사원번호 -->
						<div class="form-group row">
							<div class="col-sm-12">
							 사원번호
								<input type="text" class="form-control" name="name">
							</div>
						</div>
						<!-- 이름 -->
						<div class="form-group row">
							<div class="col-sm-12">
							 이름
								<input type="text" class="form-control" name="name">
							</div>
						</div>
						<!-- 부서  -->
						<div class="form-group row">
							<div class="col-sm-12">
							소속부서
			                    <select name="category1" class="form-control">
								     <option value="개발부">개발부</option>
								    <option value="경영부">경영부</option>
								    <option value="인사부">인사부</option>
								</select>
							</div>
						</div>
						<!-- 직급  -->
						<div class="form-group row">
							<div class="col-sm-12">
								 직급
									<input type="text" class="form-control" name="name">
							</div>
						</div>	
						<!-- 입사일자  -->
						<div class="form-group row">
							<div class="col-sm-12">
									입사일자
									<input type="text" class="form-control" name="name">
							</div>
						</div>
						<!-- 재직구분  -->
						<div class="form-group row">
							<div class="col-sm-12">
								  재직구분
									<input type="text" class="form-control" name="name">
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
			</div>
		</div>
	</div>


	

	<!-- 추가 Model -->
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">조직 추가</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form action="" name="createForm" method="post" enctype="multipart/form-data">
					<!-- modal-body -->
					<div class="modal-body">
						<!-- 부서  -->
						<div class="form-group row">
							<div class="col-sm-12">
							소속부서
			                    <select name="category1" class="form-control">
								     <option value="개발부">개발부</option>
								    <option value="경영부">경영부</option>
								    <option value="인사부">인사부</option>
								</select>
							</div>
						</div>
						
						<!-- 부서명 -->
						<div class="form-group row">
							<div class="col-sm-12">
								부서명
								<input type="text" class="form-control" name="name" placeholder="부서명을 입력하세요.">
							</div>
						</div>
						
						
					</div>
					<!-- modal-footer -->
					<div class="modal-footer justify-content-between">
						<button type="reset" class="btn btn-warning">초기화</button>
						<div>
							<button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-dark" id="btnClose">확인</button> 
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!--  수정 Model -->
	<div class="modal fade" id="modModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 text-primary p-2">조직 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				
					<!-- modal-body -->
					<div class="modal-body">
						<!-- 이름 -->
						<div class="form-group row">
							<div class="col-sm-12">
							  이름
								<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요." id="ename">
							</div>
						</div>
						<!-- 부서  -->
						<div class="form-group row">
							<div class="col-sm-12">
							소속부서
			                    <select name="category1" id="deptMod" class="form-control">
								    <option value="개발부">개발부</option>
								    <option value="경영부">경영부</option>
								    <option value="인사부">인사부</option>
								</select>
							</div>
						</div>
					<!-- modal-footer -->
					<div class="modal-footer justify-content-between">
						<button type="reset" class="btn btn-warning">초기화</button>
						<div>
							<button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary"  id="enameMod" >확인</button>
						</div>
					</div>
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
 	
		
		$(document).ready(function() {
			 var eName = $('li[id="team"]').text();
			 var deptName = $('label[id="dname"]').text();
			 
			  $("#team").hide();
			  $("#hide").hide();
			
			  $("#line").click(function(){
			        $("#tableModal").modal();
			    });
							
			
			   $("#btnDel").click (function() {
				   if(confirm("정말삭제하시겠습니까?")==true){
					   $("#hide").hide();
					   alert("삭제되었습니다.");
					   
				   }
			   });
			   
			   $("#dname").dblclick (function() {
				   $('select[class="form-control"]').val(''+deptName+'').attr("selected","selected");
			   });
			   
			   
			   $("#team").dblclick (function() {
			       $("#ename").val(''+eName+'').attr("placeholder", eName);  
				   var modName = $("#ename").text();
				   
			   });
			   
			   $("#enameMod").click(function(){
				  $("#modModal").modal('hide'); 
				  $('li[id="team"]').text("인재채용");
				  eName = "인재채용";
				  
				  var select = $('select[id="deptMod"]').val();
				  
				  if(select == "인사부"){
					  $("#team").hide();
					  $("#hide").show();
				  }
				  
			   });
			   
			   $("#btnClose").click(function(){
				  $("#addModal").modal('hide'); 
				  $("#team").show();
			   });
			    
			   $(".show").dblclick(function(){
				  $("#right-table .dev").show();
				  $("#right-table .g").show();
				  $("#right-table .h").show();
			   });
			   $("#detail1").dblclick(function(){
				  $("#right-table .dev").show();
				  $("#right-table .g").hide();
				  $("#right-table .h").hide();
			   });
			    
			   $("#detail2").dblclick(function(){
					  $("#right-table .dev").hide();
					  $("#right-table .h").show();
					  $("#right-table .g").hide();
				});
			   
			   $("#detail3").dblclick(function(){
				   $("#right-table .dev").hide();
				   $("#right-table .h").hide();
				   $("#right-table .g").show();
			   });
			   
			   
			});
		
		   
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