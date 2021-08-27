<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body>
	
		<!-- 왼쪽 카테고리 박스 -->
		<div class="main-left">
			<!-- 로고 -->
			<div class="logo"></div>
			<!-- 나의 정보 -->
			<div class="main-myInfo">
				<div class="main-profile">
					<div class="main-profile-photo">
						<c:if test="${loginUser.mRenameProfile == null }">
							<img class="myProfileImage-size" src="resources/image/기본이미지.jpg">
						</c:if>
						<c:if test="${loginUser.mRenameProfile != null }">
						<img src="resources/mProfileFiles/${ loginUser.mRenameProfile }">
						</c:if>
					</div>
					<div class="main-profile-margin">
						<div class="main-profile-dept">${ loginUser.dName }</div>
						<div class="main-profile-name">${ loginUser.mName }</div>
						<div class="main-profile-position">${loginUser.jName }</div>
					</div>
				</div>
				<div class="main-line">
					<hr style="border:1px color= silver;" width="80%">
				</div>
				<div class="main-active">
					<div class="main-mypage" onclick="location.href='goMypage.me'">내 정보 수정</div>
					<div class="main-mypage" onclick="location.href='goAdmin.me'">관리자페이지</div>
<!-- 					<div class="main-active-one"> -->
<!-- 						<div class="main-active-one-text">내가 쓴 글</div> -->
<!-- 						<div class="main-active-one-num">3개</div> -->
<!-- 					</div> -->
<!-- 					<div class="main-active-two" id="active-two"> -->
<!-- 						<div class="main-active-two-text">임시 보관함</div> -->
<!-- 						<div class="main-active-two-num">5개</div> -->
<!-- 					</div> -->
<!-- 					<div class="main-active-three"> -->
<!-- 						<div class="main-active-three-text">휴지통</div> -->
<!-- 						<div class="main-active-three-num">18개</div> -->
<!-- 					</div> -->
				</div>
			</div>
			<!-- 출퇴근 버튼 -->
			<div class="main-commute">
				<div class="commute-button">

					<c:if test="${ !empty comTime }">
						<button class="commute" id="start" disabled>출근</button>
						<button class="commute" id="end" onclick="location.href='workEnd.ca'">퇴근</button>
					</c:if>
					<c:if test="${ empty comTime }">
						<button class="commute" id="start" onclick="location.href='workStart.ca'">출근</button>
						<button class="commute" id="end" disabled>퇴근</button>
					</c:if>
					

				</div>
					<div class="commute-progressbar">
					<progress class="commute-real"></progress>
				</div>
				<div class="commute-text">
					<c:if test="${ !empty comTime }">
						<div class="commute-text-start" style="margin-left:10px;">${ comTime.get("COMSTART") }</div>
						<div class="commute-text-end" style="margin-right:10px;">${ comTime.get("COMEND") }</div>
					</c:if>
					<c:if test="${ empty comTime }">
						<div class="commute-text-start" style="margin-left:10px;">--:--</div>
						<div class="commute-text-end" style="margin-right:10px;">--:--</div>
					</c:if>
				</div>
			</div>
			<!-- 카테고리 박스 -->
			<div class="main-category">
				<div class="cate notice">
					<div class="cate-notice-p">공지사항</div>
					<div class="cate-notice-c">
						<div class="notice-c-1">ㄴ전체게시판</div>
						<div class="notice-c-2">ㄴ일반게시판</div>
					</div>
				</div>				
				<div class="cate they">
					<div class="cate-they-p">사내관리</div>
					<div class="cate-they-c">
						<div class="they-c-1">ㄴ조직도</div>
						<div class="they-c-2">ㄴ주소록</div>
					</div>
				</div>				
				<div class="cate approval">
					<div class="cate-approval-p">전자결재</div>
					<div class="cate-approval-c">
						<div class="approval-c-1" onclick="location.href='goList.ap'">ㄴ결재양식목록</div>
						<div class="approval-c-1">ㄴ결재현황</div>
					</div>
				</div>		
				<div class="cate collabo">
					<div class="cate-collabo-p" onclick="location.href='workBox.co'">업무공유</div>
				</div>			
				<div class="cate day">
					<div class="cate-day-p" onclick="location.href='workManage.ca'">근태관리</div>
				</div>				
			</div>
			<!-- 채팅 조직도 박스 -->
			<div class="main-chat">
				<input class="main-chat-text" type="text" placeholder="이름/팀명/직급 검색">
				<button class="main-chat-button">검색</button>
			</div>
		</div>
		
</body>

<script>
		var noticeP = document.querySelector('.cate-notice-p');
		var noticeBox = document.querySelector('.cate-notice-c');
		var theyP = document.querySelector('.cate-they-p');
		var theyBox = document.querySelector('.cate-they-c');
		var approvalP = document.querySelector('.cate-approval-p');
		var approvalBox = document.querySelector('.cate-approval-c');
		
		noticeP.addEventListener('click', function() {
	            noticeBox.classList.toggle('active');
	    });
		
		theyP.addEventListener('click', function() {
            theyBox.classList.toggle('active');
    	});
		
		approvalP.addEventListener('click', function() {
            approvalBox.classList.toggle('active');
    	});
		
	
		$('.logo').on('click', function(){
			location.href="login.me";
		});
		
		
</script>

</html>