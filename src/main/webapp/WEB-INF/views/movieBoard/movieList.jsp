<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../inc/head.jsp" flush="false" />
<jsp:include page="../inc/header.jsp" flush="false" />
<div class="container-fluid">
	<div class="row-fluid">
	    <!-- form -->
		<form role="form">
		 <!--/span-->
			<div class="span9" id="content">
				<div class="row-fluid">
				   	<!-- block -->
					<div class="block">
					    <div class="navbar navbar-inner block-header">
					        <div class="muted pull-left">영화 리스트</div>
					    </div>
						<div class="block-content collapse in">
							<div class="span12">
								<div class="table-toolbar" style="margin-bottom:14px;">
									<div class="btn-group">
										<button type="button" id="insertMovieBtn" class="btn btn-primary">추가<i class="icon-plus icon-white"></i></button>
									</div>
									<div class="btn-group">
										<button type="button" id="deleteBtn" class="btn btn-primary">삭제<i class="icon-remove icon-white"></i></button>
									</div>
									<div class="btn-group">
										<button type="button" id="insertVisualItemsBtn" class="btn btn-primary">영상추가<i class="icon-film icon-white"></i></button>
									</div>
								</div>
								<table id="movieListTable" border="0" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox"></th>
											<th>제목</th>
											<th>제작년도</th>
											<th>감독</th>
											<th>배우</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="movieListResult" value="${requestScope.movieList}" />
										<c:forEach var="listMap" items="${movieListResult}">
										<tr class="odd gradeX">
											<!-- ${listMap.MV_INFO_SEQ}는 getMV_INFO_SEQ와 같다 -->
									 		<td><input type="checkbox" class="movieUniSeq" name="movieUniNumDel" value="${listMap.MV_INFO_SEQ}"></td>
									    	<td>${listMap.MV_TITLE}</td>
									    	<td>${listMap.MV_PUB_DATE}</td>
									    	<td>${listMap.MV_DIRECTOR}</td>
									    	<td>${listMap.MV_ACTOR}</td>
									    	<input type="hidden" name="MVLink" value="${listMap.MV_LINK}">
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				<!-- /block -->
				</div>
			</div>
		</form>
	</div>
</div>
<script>
	//영화 목록에서 영화 삭제
	var formObj = $('form[role="form"]');

   $(document).ready(function(){
   		//영화 추가 페이지로 이동
   		$("#insertMovieBtn").on('click', function(){
		   		formObj.attr('action','${pageContext.request.contextPath}/addMovie.do');
		   		formObj.attr('method','get');
		   		formObj.submit();
   		
   		});
   	
   		//영화 목록에서 영화 삭제
   		$("#deleteBtn").on('click', function(){
	   		formObj.attr('action','${pageContext.request.contextPath}/deleteMovie.do');
	   		formObj.attr('method','get');
	   		formObj.submit();
   		});
   	
	   	//영상 추가 목록으로 이동
	   	$("#insertVisualItemsBtn").on('click', function(){
	   		formObj.attr('action','${pageContext.request.contextPath}/loadVisualItems.do');
	   		formObj.attr('method','get');
	   		formObj.submit();
	   	});
   })
</script>
<jsp:include page="../inc/footer.jsp" flush="false" />