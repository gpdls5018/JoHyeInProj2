<%@page import="model.JWTokens"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" uri="/WEB-INF/tlds/mytaglib.tld" %>
<%
	//토큰기반 인증인 경우 유효한 토큰 여부 판단
	Boolean isValidToken = JWTokens.verifyToken(
			JWTokens.getToken(request, application.getInitParameter("COOKIE-NAME")),
			"/resources/tokens", "secret-key");
%>
<%-- 
<c:set var="cookieName" value="${initParam['COOKIE-NAME'] }"/>
<c:set var="token" value="${my:getToken(request,cookieName) }"/>
--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.servletContext.contextPath }/bootstrap/js/jquery.slim.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/bootstrap/js/popper.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/dedb6fdace.js" crossorigin="anonymous"></script>
    <title>TemplateApplyingModule.jsp</title>
    <style>
        /*점보트론 세로폭 및 마진바툼 줄이기*/
        .jumbotron{
            padding-top:1rem;
            padding-bottom:1rem;            
            margin-bottom: .5rem;
            
            border-top-left-radius:0;
            border-top-right-radius:0;
        }
        .nav-link:hover{
          color: rgba(174, 174, 174, 0.971) !important;/*navbar-dark 때문에 안먹음*/
        }
        button > span:hover{
          border:  rgba(174, 174, 174, 0.971) 2px solid ;
          border-radius: 10%;
        }
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-info text-nowrap py-1 fixed-top">
      	<a class="navbar-brand" href="${pageContext.servletContext.contextPath }"><i class="fa-brands fa-font-awesome text-white" style="font-size: 28px;"></i></a>
      	<span class="navbar-text mr-2 text-white">
        	Welcome To My Site!!!
      	</span>
      	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        	<i class="fa-solid fa-circle-dot text-white"></i>
      	</button>
      	<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
      		<ul class="navbar-nav">
	            <li class="nav-item">
	              	<a class="nav-link text-white" href="<c:url value="/DataRoom/List.kosmo" />">게시판 <i class="fa-regular fa-pen-to-square"></i></a><!-- 게시판 -->
	            </li>
	            <li class="nav-item">
	              	<a class="nav-link text-white" href="<c:url value="/DataRoom/List.kosmo" />">마이페이지 <i class="fa-solid fa-paper-plane"></i></a><!-- 마이페이지 -->
	            </li>
      		<%-- 
      			<c:if test="${my:verifyToken(token,'/resources/tokens', 'secret-key') }" var="isValidToken">
      			--%>
	            <%if(isValidToken){ %>
	            <li class="nav-item">
	              	<a class="nav-link text-white active" href="<c:url value="/DataRoom/List.kosmo" />">로그아웃 <i class="fa-regular fa-face-smile"></i></a><!-- 로그아웃(토큰) -->
	            </li>
	            <%-- 
	            </c:if>
	            --%>
	            
	            <%-- 
	            <c:if test="${!isValidToken }">
	            --%>
	            <%}else{ %>
	            <li class="nav-item">
	            	<a class="nav-link text-white active" href="<c:url value="/DataRoom/List.kosmo" />">로그인 <i class="fa-regular fa-face-meh"></i></a><!-- 로그인(토큰) -->
	            </li>
	            <%} %>
	            <%-- 
	            </c:if>
	            --%>
          	</ul>
        </div>
    </nav>