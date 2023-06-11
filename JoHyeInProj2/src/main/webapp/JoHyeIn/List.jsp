<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- List.jsp -->
<jsp:include page="/template/Top.jsp" />
<style>
	.post-item > a:hover {
		.article-img{
			border: 5px solid rgba(218, 212, 212, 0.444);
			border-bottom: none;
			border-radius: 40px 40px 0 0;
			box-sizing: border-box;
		}
	}
	.post-item{
	    overflow: hidden;
	    width: 100%;
	    float: left;
	    background-color: #fff;
	    margin-bottom: 30px;
	    border-radius: 40px;
	}
	.post-item > a {
	    display: block;
	    text-decoration: none;
	    color: rgb(81, 80, 79);
	    min-height: 100%;
	}
	.post-item .article-info {
	    float: left;
	    width: 100%;
	    height: 100%;
	}
	.post-item .article-info {
	    box-sizing: border-box;
	    padding: 15px 25px 25px;
	    overflow: hidden;
	    word-break: break-all;
	    border-radius: 0 0 40px 40px;
	}
	.post-item .article-info {
	    float: left;
	    width: 100%;
	    height: 100%;
	}
	.post-item .thum img {
	    width: 100%;
	    max-width: 100%;
	    height: 200px;
	  	object-fit: cover;
	    border-radius: 40px 40px 0 0;
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
	<div class="d-flex justify-content-between mb-4">
		<h3 class="align-self-center">Forum</h3>
		<form class="form-inline justify-content-center" method="post"><!-- action 지정 안했으니까 현재 페이지로 이동 -->
			<select class="form-control" name="searchColumn">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="name">작성자</option>
			</select>
			<input type="text" class="form-control mx-2 my-2" placeholder="검색어를 입력하세요" name="searchWord" />
			<button type="submit" class="btn btn-outline-info">검색</button>
		</form>
		<a class="btn btn-info align-self-center" href="#">글쓰기</a>
	</div>
	<div class="row">
		<div class="col-lg-4 col-md-6 post-item">
			<a href="#">
				<div class="row-6">
					<div class="article-img">
						<span class="thum">
							<img alt="upload_img" src="../images/list_img.jpg" 
							style="max-width: 100%;" />
						</span>
					</div>
				</div>
				<div class="row-6">
					<div class="article-info" style="background-color: rgb(236, 236, 236)">
						<ul class="list-unstyled">
							<li class="d-flex justify-content-between">
								<div>조회수</div> 
								<div>
									<!-- 북마크 유무에 따라 이모티콘 보이기 -->
									<i class="fa-solid fa-bookmark text-success"></i>
									
									<i class="fa-regular fa-bookmark text-success"></i>
								</div>
							</li> 
							<li class="d-flex">
								<div class="mr-2">작성자</div> 
								<div>제목</div>
							</li>
							<li>본문</li>
							<li>작성일</li>
						</ul>
					</div>
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-6 post-item">
			<a href="#">
				<div class="row-6">
					<div class="article-img">
						<span class="thum">
							<img alt="upload_img" src="../images/img2.jpg"
							style="max-width: 100%; " />
						</span>
					</div>
				</div>
				<div class="row-6">
					<div class="article-info align-content-end h-auto" style="background-color: rgb(236, 236, 236)">
						<ul class="list-unstyled">
							<li class="d-flex justify-content-between">
								<div>조회수</div> 
								<div>
									<!-- 북마크 유무에 따라 이모티콘 보이기 -->
									<i class="fa-solid fa-bookmark text-success"></i>
									
									<i class="fa-regular fa-bookmark text-success"></i>
								</div>
							</li> 
							<li class="d-flex">
								<div class="mr-2">작성자</div> 
								<div>제목</div>
							</li>
							<li>본문</li>
							<li>작성일</li>
						</ul>
					</div>
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-6 post-item">
			<a href="">
				<div class="row-6">
					<div class="article-img">
						<span class="thum">
							<img alt="upload_img" src="../images/img1.jpg"
							style="max-width: 100%; height: auto;" />
						</span>
					</div>
				</div>
				<div class="row-6">
					<div class="article-info align-content-end h-auto">
						<ul class="list-unstyled">
							<li class="d-flex justify-content-between">
								<div>조회수</div> 
								<div>
									<!-- 북마크 유무에 따라 이모티콘 보이기 -->
									<i class="fa-solid fa-bookmark text-success"></i>
									
									<i class="fa-regular fa-bookmark text-success"></i>
								</div>
							</li> 
							<li class="d-flex">
								<div class="mr-2">작성자</div> 
								<div>제목</div>
							</li>
							<li>본문</li>
							<li>작성일</li>
						</ul>
					</div>
				</div>
			</a>
		</div>
	</div>
	<!-- 페이지 리스트 꾸리기 -->
	<span class="page-list">1 2 3 4 5 6 7 8 9</span>
	<div class="move-top"><i class="text-info fa-regular fa-circle-up" style="font-size: 2.5rem"></i></div>
</div>
<!--container-->
<script>
	var topBtn = document.querySelector(".move-top");
	
	//버튼 클릭 시 맨 위로 이동
	topBtn.onclick = (()=>{
		window.scrollTo({ top: 0, behavior: "smooth" });  
	})
</script>
