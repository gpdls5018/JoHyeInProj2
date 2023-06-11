<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/template/Top.jsp" />
<!-- Edit member information -->
<style>
	a:hover{
		text-decoration: none;
		color: rgb(13, 184, 193);
	}
	a{
		color: black;
	}
	.borderline{
		border: solid 1.5px lightgrey;
	}

</style>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="rounded-lg borderline p-3 mb-3 shadow">
			<div class="row d-flex px-3 py-3">
				<img class="rounded-circle" alt="프로필 사진" src="../images/케찹.jpg" style="width: 100px; height: 100px">
				<span class="align-self-center mr-auto ml-2" style="font-weight: bold">
					혜인즈케챱
				</span>
				<!-- 이미지 수정버튼을 누르면 type=file 로 변경해서 "이미지"만 클릭하도록 -->
				<input type="button" value="이미지 수정" class="btn btn-outline-info align-self-center mx-2"></input>
				<a type="button" href="#" class="btn btn-outline-info align-self-center">회원정보 수정</a>
			</div>
			<div class="row border-top px-3 pt-3">
				<a type="button" class="btn btn-info" href="#">최근활동</a>
				<a class="mx-2 btn btn-info" href="#">게시물</a>
				<a type="button" class="btn btn-info" href="#">북마크</a>
			</div>
		</div>
		<!-- 게시글 작성 활동 폼 -->
		<div class="rounded-lg borderline p-3 mt-2 shadow">
			<div class="row d-flex">
				<div class="mx-3">
					<i class="fa-regular fa-pen-to-square text-primary"></i>
				</div>
				<div class="mr-auto">
					<div class="row-6">
						<span>게시글을 작성 했습니다</span>
						<span class=small>작성한 날/시간</span>
					</div>
					<div class="row-6">
						<span>제목</span>
						<span class=small>아이디</span>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 북마크 작성 활동 폼 -->
		<div class="rounded-lg borderline p-3 mt-2 shadow">
			<div class="row d-flex">
				<div class="mx-3">
					<i class="fa-solid fa-bookmark text-success"></i>
				</div>
				<div class="mr-auto">
					<div class="row-6">
						<span>북마크에 저장했습니다</span>
						<span class=small>누른 날/시간</span>
					</div>
					<div class="row-6">
						<span>제목</span>
						<span class=small>아이디</span>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 북마크 취소 작성 활동 폼 -->
		<div class="rounded-lg borderline p-3 mt-2 shadow">
			<div class="row d-flex">
				<div class="mx-3">
					<i class="fa-regular fa-bookmark text-success"></i>
				</div>
				<div class="mr-auto">
					<div class="row-6">
						<span>북마크 저장을 취소했습니다</span>
						<span class=small>누른 날/시간</span>
					</div>
					<div class="row-6">
						<span>제목</span>
						<span class=small>아이디</span>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>