<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Write.jsp -->
<jsp:include page="/template/Top.jsp"/>
    <div class="container" style="margin-top: 100px">
    	<div class="d-flex justify-content-between mb-4 border-bottom">
			<h3 class="heading mb-4">Write Page</h3>
		    <a class="btn btn-info align-self-center" href="#">등록</a>
		</div>
		<div class="container" style="width: 80%">
		    <form class="mb-5 needs-validation" action="<c:url value="#" />" method="post" novalidate>
			    <div class="head row mb-3">
			    	<input type="text" class="form-control" placeholder="제목을 입력해주세요" name="title" required/>
			    </div>
			    <div class="body">
			    	<div class="tuple d-flex mb-3">
			    		<div class="column">
			    			<div class="row">
				    			<i class="fa-regular fa-image" style="font-size: 2rem"></i>
				    		</div>
				    		<div class="row">
				    			<small>사진</small>
				    		</div>
				    	</div>
				    	<div class="column mr-auto mx-4">
				    		<div class="row">
				    			<i class="fa-regular fa-folder-open mx-3" style="font-size: 2rem"></i>
				    		</div>
				    		<div class="row mx-0">
				    			<small>파일</small>
				    		</div>
				    	</div>
				    	<div class="column d-block">
				            <input type="file" hidden/>
				        </div>
			    	</div>
			    	
			        <div class="content mx-n3">
			        	<textarea class="form-control" placeholder="내용을 입력하세요" rows="15"></textarea>
			        </div>
			    </div>
			</form>
		</div>
    </div><!--container-->

    