<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
    <head>
        <title>[관리자]영화 등록</title>
        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="assets/styles.css" rel="stylesheet" media="screen">
        <link href="assets/DT_bootstrap.css" rel="stylesheet" media="screen">
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">Admin Panel</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">Profile</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="login.html">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                                <a href="#">Dashboard</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Settings <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="#">Tools <i class="icon-arrow-right"></i>

                                        </a>
                                        <ul class="dropdown-menu sub-menu">
                                            <li>
                                                <a href="#">Reports</a>
                                            </li>
                                            <li>
                                                <a href="#">Logs</a>
                                            </li>
                                            <li>
                                                <a href="#">Errors</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">SEO Settings</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Content <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">Blog</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">News</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Custom Pages</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Calendar</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="#">FAQ</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Users <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">User List</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Search</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Permissions</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li>
                            <a href="index.html"><i class="icon-chevron-right"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="calendar.html"><i class="icon-chevron-right"></i> Calendar</a>
                        </li>
                        <li>
                            <a href="stats.html"><i class="icon-chevron-right"></i> Statistics (Charts)</a>
                        </li>
                        <li>
                            <a href="form.html"><i class="icon-chevron-right"></i> Forms</a>
                        </li>
                        <li class="active">
                            <a href="tables.html"><i class="icon-chevron-right"></i> Tables</a>
                        </li>
                        <li>
                            <a href="buttons.html"><i class="icon-chevron-right"></i> Buttons & Icons</a>
                        </li>
                        <li>
                            <a href="interface.html"><i class="icon-chevron-right"></i> UI & Interface</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-success pull-right">731</span> Orders</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-success pull-right">812</span> Invoices</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">27</span> Clients</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">1,234</span> Users</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">2,221</span> Messages</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">11</span> Reports</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-important pull-right">83</span> Errors</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-warning pull-right">4,231</span> Logs</a>
                        </li>
                    </ul>
                </div>
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
	                                   <div class="table-toolbar">
	                                      <div class="btn-group">
	                                        <button id="insertMovieBtn" class="btn btn-primary">추가<i class="icon-plus icon-white"></i></button>
	                                      </div>
	                                      <div class="btn-group">
	                                         <input type="submit" id="deleteBtn" class="btn btn-primary" value="삭제<i class="icon-remove icon-white"></i>">
	                                      </div>
	                                   </div>
	                                    
	                                    <table border="0" class="table table-striped table-bordered">
	                                        <thead>
	                                            <tr>
	                                            	<th><input type="checkbox"></th>
	                                            	<th>제목</th>
	                                            	<th>스틸컷</th>
	                                            	<th>트레일러</th>
	                                            	<th>등록여부</th>
	                                            </tr>
	                                            <tr>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                      		<c:set var="movieListResult" value="${requestScope.movieList}" /> 
	                                        	<c:forEach var="b" items="${movieListResult}">
	                                           		<tr class="odd gradeX">
	                                           			<input type="hidden" name="movieUniNum" value="${b.MOVIE_INFO_SEQ}">
		                                            	<td><input type="checkbox" value="${b.MOVIE_INFO_SEQ}"></td>
		                                                <td>${b.TITLE}</td>
		                                                <td><input type="text" id="imageURL" name="imageURL" placeholder="사진 URL을 입력해주세요" value="">
		                                                <input type="submit" id="image${b.MOVIE_INFO_SEQ}" name="movieStillcut" class="btn btn-primary" value="<i class="icon-picture icon-white"></i>"></td>
		                                                <td><input type="text" id="videoURL" name="videoURL" placeholder="영상 URL을 입력해주세요" value="">
		                                                <input type="submit" id="video${b.MOVIE_INFO_SEQ}" name="moiveTrailer" class="btn btn-primary" value="<i class="icon-film icon-white"></i>"></td>
		                                                <td><input type="text" value="미등록" readOnly></td>
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
            <hr>
            <footer>
                <p>&copy; Vincent Gabriel 2013</p>
            </footer>
        </div>
        <!--/.fluid-container-->

        <script src="vendors/jquery-1.9.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="assets/scripts.js"></script>
        <script src="assets/DT_bootstrap.js"></script>
        <script>
        $(document).ready(function(){
        	//영화 추가 페이지로 이동
        	$("#insertMovieBtn").on('click', function(){
        		$(location).attr('href','${pageContext.request.contextPath}/addMovie.do');
        	});
        	
        	//영화 목록에서 영화 삭제
        	var formObj = $('form[role="form"]');
        	
        	console.log(formObj);
        	
        	$("#deleteBtn").on('click', function(){
        		formObj.attr('action','${pageContext.request.contextPath}/addMovie.jsp');
        		formObj.attr('method','get');
        		formObj.submit();
        	});
        	
        	//이미지 등록
        	$("#image${b.MOVIE_INFO_SEQ}").on('click',function(){
        		formObj.attr('action','${pageContext.request.contextPath}/insertStillcut.do');
        		formObj.attr('method','get');
        		formObj.submit();
        	});
        })
        </script>
    </body>

</html>