<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.text.SimpleDateFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="mem_id" value="${sessionScope.idKey}" />
<c:set var="mem_nickname" value="${sessionScope.mem_nickname}" />
<c:set var="mem_point" value="${sessionScope.mem_point}" />
<c:set var="mem_grade" value="${sessionScope.mem_grade}" />
<!DOCTYPE html>
<html>
<head>
<%
	pageContext.setAttribute("replaceChar", "\n");
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Movie so good</title>
<!-- 부트스트랩 -->

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon2.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />

<style>
@import url(css/styles2.css);
@import url(css/styles_R.css);
</style>
<script type="text/javascript">

	var b="a";
	function re(id) {
		var content2=document.getElementById(b);
		content2.style.display="none";
		var a="a"+id;
		var content=document.getElementById(a);
		content.style.display="block";
		b=a;
	}
	
</script>
</head>
<body id="page-top" class="bg-dark">
	<div id="a"></div>
	<div id="b"></div>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="Main.do"><img
				src="assets/img/msg-logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<c:if test="${!empty mem_id}">
						<li class="nav-item"><a class="nav-link disabled" href="MyPage.do">
						<c:if test="${mem_id!='admin'}">
						<c:choose>
						<c:when test="${mem_grade==1}"><img src="assets/img/lv/1.png" width="15px" height="15px"></c:when>
						<c:when test="${mem_grade==2}"><img src="assets/img/lv/2.png" width="15px" height="15px"></c:when>
						<c:when test="${mem_grade==3}"><img src="assets/img/lv/3.png" width="15px" height="15px"></c:when>
						<c:when test="${mem_grade==4}"><img src="assets/img/lv/4.png" width="15px" height="15px"></c:when>
						<c:when test="${mem_grade==5}"><img src="assets/img/lv/5.png" width="15px" height="15px"></c:when>
						</c:choose>
						<c:out value="${mem_nickname}" />님 환영합니다.</a></li>
						</c:if>
						<li class="nav-item"><a class="nav-link" href="Logout.do">Logout</a></li>
						<c:choose>
						<c:when test="${mem_id=='admin'}">
						<li class="nav-item"><a class="nav-link" href="AdminPage.do">관리</a></li>
						</c:when>
						<c:when test="${mem_id!='admin'}">
						<li class="nav-item"><a class="nav-link" href="MyPage.do">My Page</a></li>
						</c:when>
						</c:choose>
						</c:if>
						<c:if test="${empty mem_id}">
						<li class="nav-item"><a class="nav-link" href="Login.do">Login</a></li>
						</c:if>
                        <li class="nav-item"><a class="nav-link" href="Main.do#portfolio">게시판</a></li>
                        <c:if test="${empty mem_id}">
						<li class="nav-item"><a class="nav-link" href="Agreement.do">Sign up</a></li>
						</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<header class="Masthead bg-dark"></header>
	<div id="a"></div>
	<div id="b"></div>
	<section class="page-section bg-dark" id="portfolio">
		<div class="container">
			<a class="topbutton" href="#"><img src="assets/img/topbutton.png"></a>

			<div class="row">
				<div class="col-md-offset-1 col-md-10 col-md-offset-1">
					<!-- 메뉴 바 넣기 -->
					<div class="col-md-12">

						<ul class="nav nav-pills nav-justified">
							<li class="col-md-3"><a href="R_List.do?r_ref=1">자유</a></li>
							<li class="col-md-3"><a href="R_List.do?r_ref=2">정보</a></li>
							<!-- 제이쿼리 $('li').on('click', function(){$(li).eq(1).attr('class', 'active')})와 같음 -->
							<li class="col-md-3"><a href="R_Rate.do">별점</a></li>
							<li class="col-md-3"><a href="R_List.do?r_ref=4">HOT</a></li>
						</ul>
					</div>


					<table class="table">
						<thead>
							<tr align="center">
								<td>
								<c:choose>
										<c:when test="${article.r_category==51}">
											<font style="color: gray;">[반지 원정대]&nbsp;&nbsp;&nbsp;</font>
										</c:when>
										<c:when test="${article.r_category==52}">
											<font style="color: gray">[두 개의 탑]&nbsp;&nbsp;&nbsp;</font>
										</c:when>
										<c:when test="${article.r_category==53}">
											<font style="color: gray">[왕의 귀환]&nbsp;&nbsp;&nbsp;</font>
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${article.r_ref==1}">
											<font style="color: gray;">[자유]&nbsp;</font>
										</c:when>
										<c:when test="${article.r_ref==2}">
											<font style="color: gray">[정보]&nbsp;</font>
										</c:when>
									</c:choose> ${article.r_title}</td>
							</tr>
						</thead>
						<tr>
							<td>
								<div class="col-md-1">${article.r_nickname}</div>
								<div class="col-md-7"></div>
								<div class="col-md-2">
									<fmt:formatDate value="${article.r_date}" timeStyle="medium"
										pattern="yy.MM.dd  HH:mm" />
								</div>
								<div class="col-md-1">조회 ${article.r_count}</div>
								<div class="col-md-1">스크랩 ${article.r_scrap}</div>
							</td>
						</tr>


						<tr>
							<td>
								<div class="col-md-12 contentarea" align="left">
								<c:if test="${!empty article.r_filename}">
								<img src="./board/ring/upload/${article.r_filename}" width="60%">
								<br><br>
								</c:if>
								${fn:replace(article.r_body, replaceChar, "<br/>")}
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="col-md-12">
									<div class="col-md-2" align="left">
										<button type="button" class="btn btn-default btn-sm"
											onclick="document.location='R_List.do?r_ref=${article.r_ref}'">목록으로</button>
									</div>
									<div class="col-md-2"></div>
									<div class="col-md-8" align="right">
										<c:if test="${!empty mem_id}">
											<c:if test="${article.mem_id!=mem_id}">
												<button type="button" class="btn btn-info btn-sm"
												onclick="document.location='Scrap.do?s_number=${article.r_number}&s_category=${article.r_category}&s_title=${article.r_title}&s_nickname=${article.r_nickname}'">스크랩</button>
											</c:if>

											<c:if
												test="${article.mem_id==mem_id || mem_id.equals('admin')}">
												<button type="button" class="btn btn-warning btn-sm"
													onclick="document.location='R_Update.do?r_number=${article.r_number}&pageNum=${pageNum}'">수정</button>
												<button type="button" class="btn btn-danger btn-sm"
													onclick="document.location='R_Delete.do?r_number=${article.r_number}&r_title=${article.r_title}&content_mem_id=${article.mem_id}'">삭제</button>
											</c:if>
										</c:if>
									</div>
								</div>
							</td>
						</tr>
					</table>

					<div class="col-md-12"></div>
					<div class="col-md-12"></div>
					<div id="comment">
						<table class="table">
							<!-- 댓글작성란 -->
							<c:if test="${!empty mem_id}">
								<tr>
									<form id="writeCommentForm" role="form" class="form-horizontal"
										method="post" name="hcommentform"
										action="R_CommentWrite.do">
										<input type="hidden" name="r_cnumber" value="${r_cnumber}">
										<input type="hidden" name="mem_id" value="${mem_id}">
										<input type="hidden" name="r_number" value="${article.r_number}">
										<input type="hidden" name="r_cnickname" value="${mem_nickname}">
										<input type="hidden" name="r_cref" value="${r_cref}">
										<input type="hidden" name="r_cre_step" value="${r_cre_step}">
										<input type="hidden" name="r_cre_level" value="${r_cre_level}">
										<td>
											<div class="col-md-1">${mem_nickname}</div>
											<div class="col-md-10">
												<textarea name="r_cbody" rows="5" placeholder="내용을 입력하세요."
													class="form-control"></textarea>
											</div>
											<div class="col-md-1">
												<button type="submit" class="btn btn-default btn-sm">등록</button>
											</div>
										</td>
									</form>
								</tr>
							</c:if>
							<c:if test="${!empty commentList}">
								<tr>
									<td>댓글 ( ${cocount} )</td>
								</tr>
								<c:forEach var="comment" items="${commentList}">
									<tr>
										<td>
											<div class="col-md-10" align="left">
												<c:if test="${comment.r_cre_level > 0}">
													<div class="inline-block" align="left">
														<img src="../assets/img/level.gif"
															width="${30*comment.r_cre_level}" height="0"> <font
															width="${20*comment.r_cre_level}"
															style="font-size: 1.5rem;">┗</font>
													</div>
												</c:if>
												<c:if test="${comment.r_cnickname!=' '}">
										${comment.r_cnickname}
									</c:if>
											</div>

											<div class="col-md-2" align="left">
												<c:if test="${comment.r_cnickname!=' '}">
													<font style="font-size: 0.8rem"> <fmt:formatDate
															value="${comment.r_cdate}" timeStyle="medium"
															pattern="yy.MM.dd  HH:mm" />
													</font>
												</c:if>
											</div> <!-- <div class="col-md-6" style="border:1px solid yellow;"></div> -->

											<div class="col-md-12" align="left">
												<c:if test="${comment.r_cre_level > 0}">
													<div class="inline-block" align="left">
														<img src="../assets/img/level.gif"
															width="${30*comment.r_cre_level}" height="0"> <font
															width="${20*comment.r_cre_level}"
															style="font-size: 1.5rem; color: transparent;">┗</font>
													</div>
												</c:if>
												<span>${fn:replace(comment.r_cbody, replaceChar, "<br/>")}</span>
											</div>
											<div class="col-md-12" align="left">
												<c:if test="${comment.r_cnickname!=' '}">
													<c:if test="${comment.r_cre_level > 0}">
														<div class="inline-block" align="left">
															<img src="../assets/img/level.gif"
																width="${30*comment.r_cre_level}" height="0"> <font
																width="${20*comment.r_cre_level}"
																style="font-size: 1.5rem; color: transparent;">┗</font>
														</div>
													</c:if>

													<button type="button" class="btn btn-default btn-xs"
														onclick="re(${comment.r_cnumber})">대댓글</button>
													<c:if
														test="${comment.mem_id==mem_id || mem_id.equals('admin')}">
														<button type="button" class="btn btn-default btn-xs"
															onclick="location.href='R_CommentDelete.do?r_cnumber=${comment.r_cnumber}&r_number=${article.r_number}&r_cref=${comment.r_cref}&r_cre_level=${comment.r_cre_level}&r_cmem_id=${comment.mem_id}'">삭제</button>
													</c:if>
												</c:if>

												<c:if test="${!empty mem_id}">

													<div class="hiddenText" id="a${comment.r_cnumber}">
														<!-- hiddenText -->
														<form id="rrecommentform" role="form"
															class="form-horizontal" method="post"
															name="rrecommentform" action="R_CommentWrite.do">
															<input type="hidden" name="r_cnumber"
																value="${comment.r_cnumber}"> <input
																type="hidden" name="mem_id" value="${mem_id}"> <input
																type="hidden" name="r_number"
																value="${article.r_number}"> <input
																type="hidden" name="r_cnickname" value="${mem_nickname}">
															<input type="hidden" name="r_cref"
																value="${comment.r_cref}"> <input type="hidden"
																name="r_cre_step" value="${comment.r_cre_step}">
															<input type="hidden" name="r_cre_level"
																value="${comment.r_cre_level}">

															<div class="col-md-12">
																<div class="inline-block">
																	<img src="../assets/img/level.gif"
																		width="${30*comment.r_cre_level}" height="0"> <font
																		width="${20*comment.r_cre_level}"
																		style="font-size: 1.5rem">┗</font>
																</div>
																${mem_nickname}
															</div>




															<div class="col-md-12">
																<div class="inline-block">
																	<img src="../assets/img/level.gif"
																		width="${30*comment.r_cre_level}" height="0"> <font
																		width="${20*comment.r_cre_level}"
																		style="font-size: 1.5rem; color: transparent;">┗</font>
																</div>
																<textarea name="r_cbody" rows="5"
																	placeholder="내용을 입력하세요."
																	class="form-control form-control2 inline-block"></textarea>
															</div>
															<div class="col-md-10" align="right">
																<button type="submit" class="btn btn-default btn-sm">등록</button>
															</div>

														</form>
													</div>

												</c:if>
												<!-- 대댓글 폼 test="${!empty mem_id}" -->
											</div>
											<!-- 대댓글 버튼 있는 영역 -->
										</td>
									</tr>


								</c:forEach>
							</c:if>
							<!-- test="${!empty commentList}" -->
						</table>
					</div>
					<!-- id="comment" -->


				</div>
				<!-- class="col-md-offset-1 col-md-10 col-md-offset-1" -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>




	<!-- Footer-->
        <footer class="footer py-4 bg-dark">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; MSG : Movie So Good 2022</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>