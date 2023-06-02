<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/korail/css/reservationlist.css">
<script src="http://localhost:9000/korail/js/jquery-3.6.4.min.js"></script>
<script src="http://localhost:9000/korail/js/jquery-3.6.4.min.js"></script>
</head>
<body>
	<!------------------------ 타이틀 ---------------------------->
	<div class="title_wrap in_process checkTicketingT">
		<div class="util">
			<ul class="clfix">
				<li class="login"><a href=""><span>로그인</span></a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="">마이페이지</a></li>
				<li><a href="">결제내역조회</a></li>
				<li><a href="">사이트맵</a></li>
			</ul>
		</div>
		<h2>예매확인/취소/변경</h2>
	</div>
	<!------------------------ 메뉴바 ---------------------------->
	<ul class="reservation_menu_list">
		<li><a href="">HOME</a></li>
		<li>
			<div class="select-box">
				<div class="selectricWrapper selectric-select">
						<div class="selectricHideSelect">
							<select name="" id="" class="select" tabindex="0">
								<option value="">KTX예매</option>
								<option value="" selected="selected">예매확인</option>
								<option value="">운행정보</option>
								<option value="">이용안내</option>
								<option value="">공지사항</option>
							</select>
						</div>
					<!-- <div class="selectric">
						<p class="label">예매확인</p>
						<b class="button">▾</b>
					</div>
					<div class="selectricItems" tabindex="-1">
						<div class="selectricScroll">
							<ul>
								<li class="">고속버스예매</li>
								<li class="selected">예매확인</li>
								<li class="">운행정보</li>
								<li class="">이용안내</li>
								<li class="">공지사항</li>
								<li class="">고객센터</li>
							</ul>
						</div>
					</div> -->
					<!-- <input class="selectricInput" tabindex="0"> -->
				</div>
			</div>
		</li>
	</ul>
	<!--------------------------------------- 시간 변경  (등급 지우기)--------------------------------------------->
	<div class="page">
		<h3>배차조회</h3>
		<div class="buscheck_wrap clfix">
			<!-- 좌측 infoBox -->
			<div class="infoBox">
				<p class="date" id="alcnDeprDtm">2023. 05. 31 (수)</p>
				<div class="route_wrap">
					<div class="inner">
						<span class="roundBox departure" id="alcnDeprTmlNm">동서울</span>
						<!-- <span class="byWay">횡성(상)</span> -->
						<span class="roundBox arrive" id="alcnArvlTmlNm">대전복합</span>
					</div>
					<div class="detail_info">
						<span id="takeDrtm">2시간 0분 소요<!-- 소요시간 --></span>
						<span id="dist">166.7 Km</span>
					</div>
					<!-- <div class="btn_r">
					<a href="#none" class="btn btn_modify white" onclick="fnUpdRot()">수정</a>
					</div> -->
				</div>
			</div>
			<!-- //좌측 infoBox -->
			
			<!-- 우측 detailBox -->
			<div class="detailBox">
				<div class="detailBox_head col3">
					<div class="box_refresh">
						<button type="button" class="btn btn_refresh"><span class="ico_refresh" id="reloadBtn">새로고침</span></button>
					</div>
					<div class="head_date">
						<span class="date_cont" id="rideDate">2023. 05. 31 (수)</span>
					</div>
				</div>
				<div class="detailBox_body clfix">
					<ul class="time">
							
								<li class="night" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="01">1</a></li>
							
								<li class="night" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="03">3</a></li>
							
								<li class="night" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="05">5</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="07">7</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="09">9</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="11">11</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="13">13</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="15">15</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="17">17</a></li>
							
								<li class="daytime" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="19">19</a></li>
							
								<li class="night" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="21">21</a></li>
							
								<li class="night" onclick="fnTimeChcList(this);"><a href="#none" class="" data-time="23">23</a></li>
							
					</ul>
							
					<div class="bustime_wrap">
						<p class="bustime_head">
							<span class="start_time">출발</span>
							<span class="bus_info">도착</span> <!-- tablet / mobile 사이즈에서 보임 -->
							<span class="bus_com">차종</span> <!-- pc 사이즈에서만 보임 -->
							<span class="grade">열차번호</span> <!-- pc 사이즈에서만 보임 -->
							<span class="temp">할인</span>
							<span class="remain">잔여석</span>
							<span class="status"></span>
						</p>
						<div class="bus_time">
							<!-- <p class="noselect premium" data-time="09"> --> <!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="21">
								<a href="#" class="" onclick="fnSatsChc('20230531','210000','210000','032','300','2','03','0', '45','032','300','N','N','N');">
									<span class="start_time">21 : 00</span>
									<span class="bus_info"><span class="dyexpress">(주)동양고속</span><span class="grade_mo">고속<br><span style="font-size:8pt;color:#333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->													  	
									<span class="bus_com"><span class="dyexpress">(주)동양고속</span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="grade">고속<br><span style="font-size:8pt;color:#333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span>
									<span class="remain">45 석</span>
									<span class="status"><span class="accent btn_arrow">선택</span></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- //우측 detailBox -->
			
		</div>
		
		<!--------------------------------------- 안내문 --------------------------------------------->		
		<div class="section">
			<ul class="desc_list">
				<li>노선에 따라 요금이 동일할 수도 있습니다.</li>
				<li>시간 변경은 1회만 가능하며 출발시간, 등급, 매수 및 좌석선택 변경이 가능합니다.</li>
				<li>기존에 선택하셨던 출발시간으로는 변경이 불가합니다.</li>
				<li>출발날짜는 변경이 불가합니다.</li>
				<li>예매 변경을 하게 되면 기존에 예매한 사항은 취소되며, 다시 한 번 카드결제가 이루어집니다.</li>
			</ul>
		</div>
	</div>
	
</body>
</html>