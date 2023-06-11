<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/Top.jsp" />
<style>
	input[type='date']::before {
	  content: attr(data-placeholder);
	  width: 100%;
	}
</style>
<div class="content" style="margin-top: 100px">
	<div class="container">
		<div class="row justify-content-center d-flex align-items-center">
			<div class="col-md-6 mb-4">
				<h3 class="heading mb-4">Join The Membership!</h3>
				<p>
				반갑습니다!<br/>
				회원가입을 위한 양식을 입력해주세요</p>
				<p>
					<img src="../images/join.jpg" alt="Image" class="img-fluid"/>
				</p>
			</div>
			<div class="col-md-6 d-flex align-items-center mt-3">
				<form class="mb-5 needs-validation" action="<c:url value="#" />" method="post" id="contactForm" novalidate>
					<div class="row">
						<div class="col-md-12 form-group">
							<div class="d-flex">
								<input style="max-width: 300px;" type="text" class="form-control" placeholder="아이디" name="username" required/> 
								<input type="button" value="중복 체크" class="btn btn-outline-info ml-2"/>
							</div>
							<input style="max-width: 300px;" type="password" class="form-control my-1" placeholder="비밀번호" name="password" required/>
							<input style="max-width: 300px;" type="password" class="form-control" placeholder="확인용 비밀번호" name="pwd" required/>							
							<input style="max-width: 300px;" type="text" class="form-control my-1" placeholder="이메일" name="email" required/>
							
							<div class="invalid-feedback">비밀번호를 입력하세요</div>
							<div class="invalid-feedback">동일한 비밀번호가 아닙니다</div>
							<div class="invalid-feedback">아이디를 입력하세요</div>
							<div class="invalid-feedback">잘못된 이메일 형식입니다</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group"> 
							<input style="max-width: 300px;" type="text" class="form-control" placeholder="이름" name="name" required/>
							<!-- 정규표현식에 맞게 문구변경 -->
							<input style="max-width: 300px;" type="date" class="form-control my-1" name="birth" data-placeholder="생년월일" required/>
							<div class="d-flex align-items-center">
								<div class="custom-control custom-radio"><!-- radio box도 무조건 required??? -->
									<input type="radio" class="custom-control-input" name="gender" id="male" value="M" required/>
									<label class="custom-control-label mr-3" for="male">남자</label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" name="gender" id="female" value="F"/> 
									<label class="custom-control-label" for="female">여자</label>
								</div>
							</div>
							
							<div class="invalid-feedback">올바른 이름을 입력하세요</div>
							<div class="invalid-feedback">생년월일을 선택해주세요</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form-group mb-1">
							<div class="d-flex">
								<input style="max-width: 300px;" type="text" id="sample4_postcode" class="form-control" placeholder="우편번호" name="addr" disabled required/> 
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="btn btn-outline-info ml-2"/>
							</div>
						</div>
						<div class="col-md-12 form-group py-0">
							<input style="max-width: 300px;" type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명주소"/> 
							<span id="guide" style="color: #999; display: none"></span> 
							<input style="max-width: 300px;" type="text" id="sample4_detailAddress" class="form-control mt-1" placeholder="상세주소" required/> 
							<input style="max-width: 300px;" type="text" id="sample4_extraAddress" class="form-control" placeholder="참고항목" hidden/>
							<!-- 상세주소 입력값 무조건 받기 -->
						</div>
						<div class="invalid-feedback">주소를 입력하세요</div>
					</div>
					<button type="submit" class="btn btn-outline-primary">확인</button>
				</form>
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
					function sample4_execDaumPostcode() {
						var themeObj = {
							searchBgColor : "#0B65C8", //검색창 배경색
							queryTextColor : "#FFFFFF" //검색창 글자색
						};
						new daum.Postcode({
							theme : themeObj,
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
								var roadAddr = data.roadAddress; // 도로명 주소 변수
								var extraRoadAddr = ''; // 참고 항목 변수

								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraRoadAddr += data.bname;
										}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraRoadAddr += (extraRoadAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraRoadAddr !== '') {
									extraRoadAddr = ' ('
											+ extraRoadAddr + ')';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document
										.getElementById('sample4_postcode').value = data.zonecode;
								document
										.getElementById("sample4_roadAddress").value = roadAddr;

								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
								if (roadAddr !== '') {
									document
											.getElementById("sample4_extraAddress").value = extraRoadAddr;
								} else {
									document
											.getElementById("sample4_extraAddress").value = '';
								}

								var guideTextBox = document
										.getElementById("guide");
								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
								if (data.autoRoadAddress) {
									var expRoadAddr = data.autoRoadAddress
											+ extraRoadAddr;
									guideTextBox.innerHTML = '(예상 도로명 주소 : '
											+ expRoadAddr + ')';
									guideTextBox.style.display = 'block';

								} else if (data.autoJibunAddress) {
									var expJibunAddr = data.autoJibunAddress;
									guideTextBox.innerHTML = '(예상 지번 주소 : '
											+ expJibunAddr + ')';
									guideTextBox.style.display = 'block';
								} else {
									guideTextBox.innerHTML = '';
									guideTextBox.style.display = 'none';
								}
							}
						}).open();
					}
				</script>
			</div>
		</div>
	</div>
</div>
<script>
	/*
	Element.classList : 
	        DOMTokenList타입으로 해당 요소의 클래스 목록을 담고 있는 객체이다(읽기전용)
	        DOMTokenList타입의 메소드로 해당 요소의 클래스를 쉽게
	                    추가하거나 제거하거나 토글링을 할 수 있다.
	        add('클래스명') : 클래스 추가
	        remove('클래스명') : 클래스 삭제
	        toggle('클래스명') : add()와 remove() 사용한 것과 같다
	                            해당 클래스가 있으면 remove('해당클래스')
	                                        없으면 add('해당클래스')
	 */

	//classList속성 테스트 코드
	var jumbotron = document.querySelector('.jumbotron');
	console.log(jumbotron.classList);//DOMTokenList 유사배열(객체)
	console.log(jumbotron.className);//string //jumbotron

	//점보트론을 클릭할 때마다 배경색이 토글링되도록하자
	//classList의 메소드를 사용해서
	jumbotron.onclick = function() {
		jumbotron.classList.toggle('bg-info');
	};

	//needs-validation클래스 코드(valid/invalid 메시지 뿌리기 위한)
	//Returns true if the value of the element has no validity problems; otherwise returns false.

	var form = document.querySelector('.needs-validation');
	//폼의 모든 클래스 목록 출력
	form.classList.forEach(function(className) {
		console.log(className);
	});

	form.onsubmit = function() {
		//폼에 novalidate추가해서 submit 이벤트발생
		//checkValidity() : 유효한지 체크(boolean타입)
		if (!form.checkValidity()) {
			form.classList.add('was-validated'); //div에 지정한 valid/invalid 메시지 뿌리기 위해
			console.log(form.classList);
			return false; //submit 이벤트 취소
		}
	};
</script>
</html>