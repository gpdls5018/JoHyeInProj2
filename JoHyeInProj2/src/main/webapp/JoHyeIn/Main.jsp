<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/template/Top.jsp" />
<style>
	.social a:hover{
		text-decoration:none;
	}
</style>
<body class="img"
	style="background-image: url(../images/bg.jpg); background-size: cover;">
	<div class="container d-flex justify-content-center align-items-center vh-100">
		<div class="row justify-content-center">
			<div class="col">
				<div class="login-wrap p-0">
					<h1 class="mb-5 text-center">Login</h1>
					<form action="#" class="signin-form" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username"/>
						</div>
						<div class="form-group">
							<input id="password-field" type="password" class="form-control"	placeholder="Password"/> 
						</div>
						<div class="form-group d-flex justify-content-between">
							<div class="custom-control custom-checkbox mb-3 align-self-center">
					            <!--label로 감싸지 말자 : 감싸면 체크 X-->
					            <input type="checkbox" class="custom-control-input" id="customCheck"/>
					            <label class="custom-control-label" for="customCheck"><h6>Remember Me</h6></label>
					        </div>
					        <div class="form-group">
							<button type="submit" class="form-control btn btn-primary submit px-3">
								Sign In
							</button>
						</div>
						</div>
					</form>
					<div class="social d-flex justify-content-between">
						<a href="#" class="px-2 py-2 mr-md-1 text-dark">
							<strong>아이디찾기</strong>
						</a> 
						<a href="#"	class="px-2 py-2 ml-md-1 text-dark">
							<strong>비밀번호찾기</strong>
						</a>
						<a href="#" class="px-2 py-2 mr-md-1 text-dark">
							<strong>회원가입</strong>
						</a> 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>