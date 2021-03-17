<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kkaekkt.biz.user.PersonVO"%>
<%@ page import="com.kkaekkt.biz.reservation.ReservationListVO"%>
<%@ page import="com.kkaekkt.biz.reservation.LaundryVO"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/mypage.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>
	<jsp:include page="header0.jsp"></jsp:include>
	<div class="body_container">
		<div class="my_container">
			<div class="side">
				<button id="orderList">주문내역</button>
				<button id="myLike">내가 찜한 세탁소</button>
				<button id="writePro">프로필편집</button>
			</div>
			<div class="side_sub"> 
				<button id="ingOrder">진행중인 주문</button>
				<button id="succeOrder">완료된 주문</button>
			</div>
			<div class="content">
				<p>진행중 주문</p>
				<hr>
				<div class="rsvList">
				</div>
				<div class="page_btn_container">
					<ul class="page_btn">
						<!-- 맨처음으로 버튼 -->
						<li class="page_prevBlock"><i class="fas fa-angle-double-left"></i></li> 
						<!-- 이전 -->
						<li class="page_prev">
							<i class="fas fa-angle-left"></i>
						</li>
						<!-- 다음버튼 -->
						<li class="page_next">
							<i class="fas fa-angle-right"></i>
						</li>
						<!-- 맨마지막으로 버튼 -->
						<li class="page_nextBlock"><i class="fas fa-angle-double-right"></i></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/2fc57dd2db.js"
		crossorigin="anonymous"></script>
	<script>
            var pageObj={//세션에서 정보를 받아오는건 독립된 js파일에서 불가능, jsp 내에서만 가능하기 때문에 여기서 값을 받아준다.
                no:${sessionScope.member.mno},
				currentPageNum:1,
                state:1
            };
    </script>
    <script src="js/mypagePs.js"></script>
</body>
</html>