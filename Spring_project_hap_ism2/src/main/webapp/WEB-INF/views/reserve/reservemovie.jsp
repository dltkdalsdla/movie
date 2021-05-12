<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>예매 - 롯데시네마</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	
	<meta id="description"
		content="Happy Memories 롯데시네마는 최상의 관람 환경과 양질의 켄텐츠로 영화를 통해 고객에게 행복한 기억을 선물합니다.">
	<meta id="Keywords"
		content="롯데시네마, LOTTE CINEMA, 롯시, 시네마, CINEMA, 영화, 영화관, 극장, 티켓, 박스오피스, Movie, Theater, 예매, 현재상영작, 상영예정작, 개봉영화, 영화예매, 영화예매순위, 영화순위, 상영시간표" />
	<link href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1"
		rel="shortcut icon" type="image/x-icon" />
	<script type="text/javascript">
		var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android',
				'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson',
				'Windows Phone');
	
		for ( var word in mobileKeyWords) {
	
			if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
	
				location.href = "/NLCMW/";
	
				break;
			}
		}
	</script>
	<style>
		#
	</style>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	
	<link rel="stylesheet" href="/css/default.css">
	<link rel="stylesheet" href="/css/owl.css">
	<link rel="stylesheet" href="/css/swiper.css">
	<link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/content1.css">
	<link rel="stylesheet" href="/css/dev.css">
	

	<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/js/moment.js"></script>
	<script src="/js/owl.carousel.js"></script>
	
	<!-- Google Tag Manager -->
	
	
	<!-- Google Tag Manager -->
	<script type="text/javascript">
	moment.locale('ko', {
	    weekdays: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
	    weekdaysShort: ["일","월","화","수","목","금","토"],
	});
	
	
	</script>

</head>

<body>
	<div id="loading" class="loader loader-bouncing is-active hidden"></div>
	<div id="skip_nav_section" class="skip_nav"></div>
	<div id="main_top_of_top_banner" class="banner_top_wrap banner_type01"></div>
	<div id="header_section" class="header"></div>
	<div id="contents" class="contents_full contents_reserve">
		<div class="wrap_reserve">
			<h2 class="hidden">예매하기</h2>
			<div class="section_step_tit">
				<ul>
					<li class="active step01">
					<a href="#reserveStep01">
						<strong	class="tit"><span>01</span><br>상영시간</strong>
							<div class="bx_con">
								<dl>
									<dt>선택한 영화 제목</dt>
										<dd>어른들은 몰라요</dd>
									<dt>선택한 상영관</dt>
										<dd>구리아울렛 </dd>
									<dt>선택한 상영 날짜</dt>
										<dd>2021-04-17(토)</dd>
									<dt>선택한 시간</dt>
									<dd></dd>
								</dl>						
							</div>
						</a>
					</li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>02</span><br>인원/좌석</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>03</span><br>결제</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>04</span><br>결제완료</strong></a></li>
				</ul>
			</div>
			<div id="reserveStep01" class="section_step_con step01 active">
				<h3 class="hidden">상영시간</h3>
				<div class="article article_cinema">
					<div class="group_top">
						<h4 class="tit"></h4>
					</div>
					<div class="inner">
						<ul class="tab_wrap outer">
							<li class="active"><button type="button" class="tab_tit"
									style="width: 50%; left: 0%;">
									<span>전체</span>
								</button>
								<div class="tab_con">
									<h5 class="hidden">전체</h5>
									<div class="cinema_select_wrap cinemaSelect basicCinema">
										<ul>
											<li class="depth1"><a href="#none">MY 영화관<em>(0)</em></a>
												<div class="depth2" style="display: none;">
													<div
														class="mCustomScrollbar _mCS_10 mCS-autoHide mCS_no_scrollbar"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_10"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: 753px;" tabindex="0">
															<div id="mCSB_10_container"
																class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<div class="bx_notice">
																	<p class="txt">

																		MY 영화관을 등록 후<br>이용해 주세요.
																	</p>
																	<a
																		href="https://www.lottecinema.co.kr/NLCHS/MyCinema/TicketingOrderList?mTab=1&amp;sTab=1&amp;vType=0"
																		class="btn_col3 ty3 rnd">MY 영화관 설정</a>
																</div>
															</div>
														</div>
														<div id="mCSB_10_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_10_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_10_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; top: 0px; height: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
											<li class="depth1"><a href="#none" title="선택됨">서울<em>(24)</em></a>
												<div class="depth2" style="display: none;">
													<div
														class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_1"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_1_container" class="mCSB_container"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul>
																	<li class=""><a href="#none">가산디지털</a></li>
																	<li class=""><a href="#none">가양</a></li>
																	<li class=""><a href="#none">강동</a></li>
																	<li class=""><a href="#none">건대입구</a></li>
																	<li class=""><a href="#none">김포공항</a></li>
																	<li class=""><a href="#none">노원</a></li>

																</ul>
															</div>
														</div>
														<div id="mCSB_1_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: block;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; display: block; height: 602px; max-height: 719px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
											<li class="depth1"><a href="#none">경기/인천<em>(39)</em></a>
												<div class="depth2" style="display: block;">
													<div
														class="mCustomScrollbar basicCinemaScroll _mCS_2 mCS-autoHide mCS_no_scrollbar"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_2"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: 753px;" tabindex="0">
															<div id="mCSB_2_container"
																class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																style="position: relative; top: 0px; left: 0px;"
																dir="ltr">
																<ul>
																	<li class=""><a href="#none">광교아울렛</a></li>
																	<li class=""><a href="#none">광명(광명사거리)</a></li>
																	<li class=""><a href="#none">광명아울렛</a></li>
																	<li class=""><a href="#none">광주터미널</a></li>
																	<li class=""><a href="#none">구리아울렛</a></li>

																</ul>
															</div>
														</div>
														<div id="mCSB_2_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: none;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; top: 0px; display: block; height: 361px; max-height: 719px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div></li>

						</ul>
					</div>
				</div>
			
				
				<div class="article article_movie">
					<div class="group_top">
						<h4 class="tit movie_name"></h4>
					</div>
					<div class="inner">
						<div class="list_filter">
							<select title="영화 정렬 방법 선택">
								<option value="A">예매순</option>
								<option value="B">관객순</option>
								<option value="C">평점순</option>
								<option value="D">예정작</option>
							</select>
							<div class="bx_btn_view">
								<span class="hidden">목록 보기 방식</span>
								<ul>
									<li><button type="button"
											class="btn_view_txt viewTxt active">텍스트형</button></li>
									<li><button type="button" class="btn_view_thm viewThm">썸네일형</button></li>
								</ul>
							</div>
						</div>
						<div class="movie_select_wrap list movieSelect">
							<div class="mCustomScrollbar movieScroll _mCS_9 mCS-autoHide"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_9"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									tabindex="0" style="max-height: none;">
									<div id="mCSB_9_container" class="mCSB_container"
										style="position: relative; left: 0px;" dir="ltr">
										<ul>
											

											</ul>
									</div>
								</div>
								<div id="mCSB_9_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_9_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: block;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; display: block; height: 202px; max-height: 720px; top: 53px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					
				<div class="article article_time">
					<div class="group_top">
						<h4 class="tit"></h4>
					</div>
					<div class="inner">
						<div class="date_select_wrap dateReserveWrap">
							<div class="slide_wrap slide_reserve_date">
								<ul class="owl-carousel owl-loaded owl-drag">
									<div class="owl-stage-outer">
										<div class="owl-stage"
											style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; ">
											

											
										</div>
									</div>
									<div class="owl-nav">
										<button type="button" role="presentation"
											class="owl-prev">
											<span aria-label="Previous">‹</span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span aria-label="Next">›</span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
								</ul>
							</div>
						</div>
						<ul class="tab_wrap outer sml">
							<li class="active"><button type="button" class="tab_tit"
									style="width: 16.6667%; left: 0%;">
									<span>전체</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">전체</h5>
									<div
										class="timeScroll mCustomScrollbar _mCS_53 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_53"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_53_cont  ainer"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="group_time_select">
													<div class="time_select_tit">
<!-- 														<span class="ic_grade gr_12">12</span><strong>고질라VS.콩</strong> -->
														<div class="bx_notice"><p>조회 가능한 상영시간이 없습니다.</p><p>조건을 변경해주세요.</p></div>
													</div>
													<div class="time_select_wrap timeSelect">

														<ul class="list_time">

														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="mCSB_53_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_53_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_53_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							
								<div class="group_rgt">
										<input type="hidden" class="tit" name="tit"> 
										<input type="hidden" class="selectedTheater" name="selectedTheater"> 
										<input type="hidden" class="reserveDate" name="reserveDate">
										<input type="hidden" class="reserveTimestamp" name="reserveTimestamp"> 
										<input type="hidden" class="runningTime" name="runningTime"> 
										<input type="hidden" class="movieAge" name="movieAge">
										<input type="hidden" class="ticketNumber" name="ticketNumber">
										<input type="hidden" class="selectedSeat" name="seat">
										<input type="hidden" class="remainSeat" name="remainseat">
										<input type="hidden" class="payMoney" name="payMoney">
										<a href="javascript:void(0);" class="btn_col1" id="link_rpay">예매하기</a>									
								</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="/js/reservemovie.js"></script>



	

	<div id="banner_reserve_section" class="banner_reserve_wrap"></div>
	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="banner_section" class="banner_wrap"></div>
	<div id="footer_section" class="footer"></div>










</body>
</html>
