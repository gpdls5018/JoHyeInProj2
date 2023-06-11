<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- View.jsp -->
<jsp:include page="/template/Top.jsp" />
<style>
	aside {
	    width: 20%;
	    padding-left: 0.5rem;
	    margin-left: 0.5rem;
	    float: right;
	    color: #29627e;
	}
	section > ul > li,section > span,section > div > span {
	    margin: 0.5rem;
	}
	section{
		border: lightgrey 1px solid;
		paddig-top: 30px;
		margin-top: 30px;
		margin-bottom: 30px
	}
	img {
	    width: auto;
	  	height: 500px;
	  	object-fit: contain;
	  	margin-top: 30px;
	  	margin-bottom: 30px;
	}
	.friend{
		width: auto;
	  	height: 50px;
	  	object-fit: contain;
	  	margin-top: 0;
	  	margin-bottom: 0;
	}
	.move-top{
		position: fixed;
		bottom: 1rem;
		right: 1rem;
		width: 4rem;
		height: 4rem;
		cursor: pointer;
	}
</style>
<div class="container" style="margin-top: 100px">
	<h3 class="heading mb-4">Details Page</h3>
	<hr/>
	<div class="row">
		<div class="col-8 ml-3 align-items-center">
			<div class="row">
				<div class="col-1 p-0 text-center">
					<img class="friend" alt="사람 이미지" src="../images/friend.png"/>
				</div>
				<div class="col-1 p-0">
					<ul class="list-unstyled">
						<li>작성자</li>
						<li>작성일</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="ml-auto mr-3 d-flex">
			
			<!-- 수정/삭제/목록 컨트롤 버튼 -->
			<div class="text-center">
				<!-- 토큰기반 -->
			
				<a href="Edit.jsp?no=" class="btn btn-outline-info">수정</a> 
				<a href="javascript:isDelete();" class="btn btn-outline-info mx-1">삭제</a>
			
				<!-- 파라미터 받은거 다시 넘기기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				<a href="List.jsp?" class="btn btn-outline-info">목록</a>
			</div>
		</div>
	</div>
	<div class="my-3"></div>
	<div class="content">
		<div class="d-flex">
			<div class="col-11 text-center border-bottom">
				<h3>제목입니다</h3>
			</div>
			<div class="col mr-3 ml-auto">
				<!-- 북마크 유무에 따라 이모티콘 보이기 -->
				<i class="fa-solid fa-bookmark text-success" style="font-size: 1.5rem"></i>
					
				<i class="fa-regular fa-bookmark text-success" style="font-size: 1.5rem"></i>
			</div>
		</div>
		<aside>
			<section>
				<ul class="list-unstyled mb-0">
					<li >
						<i class="fa-solid fa-eye style="font-size: 1.2rem;"></i>
						조회수 26</li>
					<li>
						<i class="fa-solid fa-bookmark mx-1"></i>
						북마크 5 
					</li>
				</ul>
			</section>
			<section>
				<!-- 이전글/다음글//////////////////파라미터로 받은거 다 넘기기 현재 페이지,검색어 -->
				<ul class="list-unstyled mb-0">
					<li>이전글</li>
					<li>이전글 주소</li>
					<li>다음글</li>
					<li>다음글 주소</li>
				</ul>
			</section>
			<button type="button" class="copy-btn btn btn-outline-info">링크 복사</button>
		</aside>
		<div class="my-3"></div>
		<div >
			<p>
				본문입니다<br/>
				본문입니다<br/>
				본문입니다
			</p>
		</div>
		<div class="my-4">
			<img class="d-block mx-auto" alt="img" src="../images/케찹.jpg">
			<img class="d-block mx-auto" alt="img" src="../images/img3.jpg">
		</div>	
	</div>
	<hr/>
	<div class="move-top"><i class="text-info fa-regular fa-circle-up" style="font-size: 2.5rem"></i></div>
</div> <!--container-->
<script>
	var topBtn = document.querySelector(".move-top");
	var copyBtn = document.querySelector(".copy-btn");
	var nowUrl = window.location.href;
	
	//버튼 클릭 시 맨 위로 이동
	topBtn.onclick=(()=>{
		window.scrollTo({ top: 0, behavior: "smooth" });  
	})
	
	//버튼 클릭 시 링크 복사
	copyBtn.onclick=function(){
		//nowUrl 변수에 담긴 주소를 복사
		navigator.clipboard.writeText(nowUrl).then(res=>{
			alert("주소가 복사되었습니다!");
		})		
	}
</script>