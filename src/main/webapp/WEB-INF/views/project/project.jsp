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
    <link rel="stylesheet" href="${root}/resources/css/project.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@700&display=swap" rel="stylesheet">
    <!-- AwesomeIcon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
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
				
				        <div class="card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg)">
				
				          <!-- Content -->
				          <a href="#"
				         	 data-toggle="modal"
							 data-target="#projectReadModal">
				            <div class="text-white d-flex h-100 mask blue-gradient-rgba">
				              <div class="first-content align-self-center p-3">
				                <h3 class="card-title">프로젝트 이름</h3>
				                <p class="lead mb-0">개발팀</p>
				              </div>
				              <div class="second-content align-self-center mx-auto text-center">
				                <i class="far fa-money-bill-alt fa-3x"></i>
				              </div>
				            </div>
				          </a>
				
				        </div>
				
				        <!-- Data -->
				        <div class="third-content ml-auto mr-4 mb-2">
				          <p class="text-uppercase text-muted">프로젝트이름</p>
				          <h4 class="font-weight-bold float-right">개발팀</h4>
				        </div>
				
				        <!-- Content -->
				        <div class="card-body white">
				          <div class="progress md-progress">
				            <div class="progress-bar bg-primary" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
				          </div>
				          <p class="text-muted">프로젝트 현황(25%)</p>
				          <h4 class="text-uppercase font-weight-bold my-4">@@프로젝트</h4>
				          <p class="text-muted" align="justify">이 프로젝트는 @@이 주관하는 프로젝트로 ~~~~</p>
				        </div>
				
				    </div>
				    <!-- Card -->
				
				  </div>
				  <!--Grid column-->
				
				
				  <!--Grid column-->
				  <div class="col-md-6 mb-4">
				
				    <!-- Card -->
				    <div class="card gradient-card">
				
				        <div class="card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);">
				
				          <!-- Content -->
				          <a href="#!">
				            <div class="text-white d-flex h-100 mask purple-gradient-rgba">
				              <div class="first-content align-self-center p-3">
				                <h3 class="card-title">Subscriptions</h3>
				                <p class="lead mb-0">Click on this card to see details</p>
				              </div>
				              <div class="second-content  align-self-center mx-auto text-center">
				                <i class="fas fa-chart-line fa-3x"></i>
				              </div>
				            </div>
				          </a>
				
				        </div>
				
				        <!-- Data -->
				        <div class="third-content  ml-auto mr-4 mb-2">
				          <p class="text-uppercase text-muted">프로젝트2</p>
				          <h4 class="font-weight-bold float-right">개발팀</h4>
				        </div>
				
				        <!-- Content -->
				        <div class="card-body white">
				          <div class="progress md-progress">
				            <div class="progress-bar purple lighten-2" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
				          </div>
				          <p class="text-muted">프로젝트 현황 (10%)</p>
				          <h4 class="text-uppercase font-weight-bold my-4">Details</h4>
				          <p class="text-muted" align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam vel dolores qui, necessitatibus aut eaque magni mollitia tenetur molestiae sit quae quos quaerat amet exercitationem atque animi odio.</p>
				        </div>
				
				    </div>
				    <!-- Card -->
				
				  </div>
				  <!--Grid column-->
				
				  <!--Grid column-->
				  <div class="col-md-6 mb-4">
				
				    <!-- Card -->
				    <div class="card gradient-card">
				
				        <div class="card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);">
				
				          <!-- Content -->
				          <a href="#!">
				            <div class="text-white d-flex h-100 mask peach-gradient-rgba">
				              <div class="first-content align-self-center p-3">
				                <h3 class="card-title">Traffic</h3>
				                <p class="lead mb-0">Click on this card to see details</p>
				              </div>
				              <div class="second-content  align-self-center mx-auto text-center">
				                <i class="fas fa-chart-pie fa-3x"></i>
				              </div>
				            </div>
				          </a>
				
				        </div>
				
				        <!-- Data -->
				        <div class="third-content  ml-auto mr-4 mb-2">
				          <p class="text-uppercase text-muted">Traffic</p>
				          <h4 class="font-weight-bold float-right">20000</h4>
				        </div>
				
				        <!-- Content -->
				        <div class="card-body white animated">
				          <div class="progress md-progress">
				            <div class="progress-bar amber darken-3" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
				          </div>
				          <p class="text-muted">Worse than last week (75%)</p>
				          <h4 class="text-uppercase font-weight-bold my-4">Details</h4>
				          <p class="text-muted" align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam vel dolores qui, necessitatibus aut eaque magni mollitia tenetur molestiae sit quae quos quaerat amet exercitationem atque animi odio.</p>
				        </div>
				
				    </div>
				    <!-- Card -->
				
				  </div>
				
				 
				
				</div>
				<!--Grid row-->
			
			
			
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
						
						      <!-- 프로젝트 제목 && 인원수  -->
			                  <div class="form-group row">
			                     <div class="col-sm-10">
			                     	
			                        <input type="text" class="form-control" name="proName" id="proName" style="display: inline;"  placeholder="제목을 입력하세요.">
			                     </div>
			                    		<p style="margin: 6px 13px 0px 0px">인원수</p>
			                     <div class="col-sm-1.5" style="display: inline;" >
			                     	              
			                       <select name="proMax" class="form-control" id="proMax">
			                            <option value="2">2</option>
			                            <option value="3">3</option>
			                            <option value="4">4</option>
			                            <option value="5">5</option>
			                        </select>
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


<!--Project Read Model -->
	<div class="modal fade" id="projectReadModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 font-weight-bold text-primary p-2">프로젝트 읽기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<!-- modal-body -->
				<div class="modal-body">

					<!-- 프로젝트 제목 && 인원수  -->
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="text" class="form-control-plaintext" name="proName"
								style="display: inline;" placeholder="@@프로젝트" readonly>
						</div>
						<p style="margin: 6px 13px 0px 0px">인원수</p>
						<div class="col-sm-1.5" style="display: inline;">
							<select name="proMax" class="form-control-plaintext" readonly>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
					</div>

					<!-- 글 내용 -->
					<div class="form-group row">
						<div class="col-sm-12">
							<textarea class="form-control-plaintext" rows="20"
								name="proContent" placeholder="이 프로젝트는 @@이 주관하는 프로젝트로 ~~~ " readonly></textarea>
						</div>
					</div>

					<!-- 팀장이면 modal-footer -->
					<%-- <c:if test="${memberDto.memLevel=='팀장'}"> --%>
						<div class="modal-footer justify-content-right">
							<div>
								<button id="deleteBtn" type="button" class="btn btn-secondary">삭제</button>
								<button id="updateBtn" type="button" class="btn btn-primary">수정</button>
							</div>
						</div>
					<%-- </c:if> --%>
					<!-- 팀원이면 modal-footer -->
					<%-- <c:if test="${memberDto.memLevel=='팀원'}"> --%>
					<!-- 	<div class="modal-footer justify-content-right">
							<div>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">확인</button>
							</div>
						</div> -->
					<%-- </c:if> --%>

				</div>

			</div>
		</div>
	</div>
	
	
<!--Project Update Model -->
	<div class="modal fade" id="projectUpdateModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog modal-lg mt-5" role="document">
			<div class="modal-content">

				<!-- modal-header -->
				<div class="modal-header">
					<h5 class="m-0 font-weight-bold text-primary p-2">프로젝트 읽기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


					<input id="proNum" type="hidden" name="proNum" value="${proNum}" />
					<!-- modal-body -->
					<div class="modal-body">

						<!-- 프로젝트 제목 && 인원수  -->
						<div class="form-group row">
							<div class="col-sm-10">
								<input type="text" class="form-control" id="proName" name="proName"
									style="display: inline;" placeholder="제목을 입력하세요.">
							</div>
							<p style="margin: 6px 13px 0px 0px">인원수</p>
							<div class="col-sm-1.5" style="display: inline;">
								<select name="proMax" id="proMax" class="form-control">
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
						</div>

						<!-- 글 내용 -->
						<div class="form-group row">
							<div class="col-sm-12">
								<textarea class="form-control-plaintext" rows="20"
									name="proContent" id="proContent" placeholder="글을 입력하세요."></textarea>
							</div>
						</div>


						<!-- modal-footer -->
						<div class="modal-footer justify-content-right">
							<div>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary" onclick="updatePjt('${root}')">완료</button>
							</div>
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
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('on');
            });

        });
    </script>
</body>
</html>