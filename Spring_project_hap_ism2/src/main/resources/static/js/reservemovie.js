var locB="";
					var date2="";
					
					var BB="";
					$(document).on("click",".depth1", function(e){

										$(this).addClass(' active');
										$(this).siblings('li').removeClass('active');
										$(this).find(".depth2").css('display',
												'block');
										$(this).siblings('li').find(".depth2")
												.css('display', 'none');
										$(this).siblings('li').find(".depth2")
												.find('li').removeClass('active');

					});
					
					
					$(document).on("click",".depth2  li" , function(e){
 					
						$(this).addClass(' active');
						$(this).siblings('li').removeClass('active');
						locB = $(".depth2").find(".active").text();
						console.log(locB);
						$(".article_cinema").find('.tit').html(locB);
						$.ajax({
							url:'/reserve/getMovieCheck',
							
							type:'get',
							data:{'locB':locB},
							dataType:'JSON',
							success: function(response){
								
									$('#mCSB_9_container li').addClass('disabled');
								 var a =''; 
							        $.each(response, function(key, value){
							        	
							        $('#mCSB_9_container li:contains('+value.mname+')').removeClass('disabled');
							        });
							},error:function(xhr,status,error){
					        	
					        	console.log(xhr+status+error);
					        }
						});

					});
					
					
					$(document).on("click","#mCSB_9_container li", function(e){

						$(this).addClass(' active');
						$(this).siblings('li').removeClass('active');
						var mName = $('#mCSB_9_container .active').find(".tit").text();
						getScreeninfo();
						$('.article_movie').find('.movie_name').html(mName);
						
						
						
					});
					
					
					 
					// 					if(locB != ""){
						
					var a = '';
					a += '<dl>';
					a += '<dt>' + '선택한 영화 제목' + '</dt>';
					a += '<dd>' +"" + '</dd>';
					a += '<dt>선택한 상영관</dt>';
					a += '<dd>' + "" + '</dd>';
					a += '<dt>선택한 상영날짜</dt>';
					a += '<dd>' +  + '</dd>';
					a += '<dt>선택한 시간</dt>';
					a += '<dd>' +  + '</dd>';
					a += '</dl>'
					$(".bx_con").html(a);
// 					}
					function dateslide(){
						
					};
					function getMovieList(){
												
						$.ajax({
							url:'/reserve/getMovieList',
							dataType:'JSON',
							success: function(response){
								 var a =''; 
						        $.each(response, function(key, value){
								
								a+= '<li class=""><a href="#none"><div class="bx_thm">';
								a+= '<span class="rank"><span class="hidden">순위</span><strong>8</strong></span>';
								a+= '<img src="'+value.poster+'" alt="포스터" class="mCS_img_loaded"></div>';
								a+= '<div class="group_infor"><div class="bx_tit">';
								a+= '<span class="ic_grade gr_'+value.age+'">12세 관람가</span><strong class="tit">'+value.mname+'</strong></div>';
								a+= '<dl><dt>예매율</dt><dd><strong>'+value.mrate+'</strong></dd>';
								a+= '<dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span>	</dt>';
								a+= '<dd><span class="txt_ic_score ty1"><strong>'+value.grade+'</strong></span></dd>';
								a+= '<dt>개봉일</dt><dd>2021.03.03</dd><dt class="side day">d -day</dt>';
								a+= '<dd><strong class="expired"></strong></dd></dl></div></a></li>';
							
								});
						        $("#mCSB_9_container").children('ul').append(a);
							},
							error:function(xhr,status,error){
					        	
					        	console.log(xhr+status+error);
					        }
						});	
						
					}
					function getScreeninfo(){
						var mName = $('#mCSB_9_container .active').find(".tit").text();
						var locB= $(".depth2").find(".active").text();
						console.log(mName+locB);
						var mtitle='';
						var mage='';
						var today= moment().format("yy-MM-DD");
						
						var checked = document.querySelector('.date input[name="radioDate1"]:checked');
						date2 = moment().format("yy-MM-DD (ddd)");
						
						if(today==checked.dataset.playdate){
							
							
							date= moment().format("YY/MM/DD HH:mm");
							date1=moment().format("yy/MM/DD");
							date2 = moment().format("yy-MM-DD (ddd)");
							$('.article_time').find('.tit').html(date2);
							console.log("1//"+date+ "==="+date1+ date2);
						}else{
							
						
							date= moment(checked.dataset.playdate).format("yy/MM/DD HH:mm");
							date1=moment(checked.dataset.playdate).format("yy/MM/DD");
							date2=moment(checked.dataset.playdate).format("yy-MM-DD (ddd)");
							$('.article_time').find('.tit').html(date2);
							console.log("2//"+date+ "==="+date1+"--"+date2);
						}
						var date2 =checked.dataset.playdate;
						
						
						
						$.ajax({
							url:'/reserve/screeninfotoday',
							data:{'mname':mName,
								'locB': locB,
								playdate :date,
								playedate :date1
								},
							dataType:'JSON',
							success: function(response){
								var a='';
								var b='';
								var c='';
								if(response == ""){
								c+=	'<div class="bx_notice"><p>조회 가능한 상영시간이 없습니다.</p><p>조건을 변경해주세요.</p></div>';
								$('.list_time').empty();
								$('.time_select_tit').empty();
								$('.time_select_tit').html(c);
								}
								else{
											
								$.each(response, function(key, value){
									var start=moment(value.starttime).format("HH:mm");
									var end =moment(value.endtime).format("HH:mm");
									var now =moment().format("HH:mm");
									
									console.log(start);
									console.log(end);
									console.log(now);
									
									mtitle=value.mname;
									mage=value.age;
									
									a+='<li class=""><a role="button" href="./seat?sid='+value.sid+'"><dl>';
									a+='<dt>상영시간</dt><dd class="time"><strong>'+start+'</strong><div class="tooltip">종료 '+end+'</div></dd>';
									
									a+='<dt>잔여석</dt><dd class="seat"><strong>'+value.remainseat+'</strong>'+"/"+value.hallseat+'</dd>';
									
									a+='<dt>상영관</dt><dd class="hall">'+value.hall+'관</dd></dl></a></li>';
									
									});
								b+= '<span class="ic_grade gr_'+mage+'">'+mage+'</span><strong>'+mtitle+'</strong>'
								$('.list_time').html(a);
								$('.time_select_tit').html(b);
									
												
								}
								
								
							},error:function(xhr,status,error){
					        	
					        	console.log(xhr+status+error);
					        }
							});
					}
					$(document).on("click",".date", function(e){
						 
						dateqw= $(this).find('input[name="radioDate1"]').val();
						getScreeninfo();
// 						alert(dateqw);
// 						 var checked = document.querySelector('.date input[name="radioDate1"]:checked');
// 						var date2 =checked.dataset.playdate;
						
					});
					
					$(document).ready(function(){
					getMovieList();
					var i;
					var a='';
					var today = moment().format("YYYY-MM-DD ddd");
					var today1 = moment().format("YYYY-MM-DD (ddd)");
					$('.article_time').find('.tit').html(today1);
					console.log(today); 
					for(i=0; i<30; i++){
						var setdate =moment().add(i,'d').format("YYYY-MM-DD ddd");
						var set =moment().add(i,'d');
						var month = set.format("M")+"월";
						var date = set.format("D");
						var day = set.format("ddd");
						if (day == moment().format("ddd")){
							day="오늘";
						}
						
// 						console.log(setdate);
// 						console.log(month+date+day);
// 				 		if(date ==1 ){
// 				 			console.log(month);
// 				 		}
						
				 		a+=	'<div class="owl-item active" style="width: 60px;">';
				 		if(date == 1 || setdate == today){
				 		a+=	'<li class="item"><strong class="month">'+month+'</strong>';
				 		}
				 		if(day =="토"){
				 			a+=	'<span	class="date sat"><label><input type="radio" name="radioDate1" data-displayyn="Y"';
				 		}else if(day == "일"){
				 			a+=	'<span	class="date sun"><label><input type="radio" name="radioDate1" data-displayyn="Y"';
				 		
				 		}else{
				 			a+=	'<span	class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y"';
				 		}
				 		if(setdate == today){
						a+='checked="checked"';
						}
				 		a+=	'data-playdate='+setdate+' data-isplaydate="Y" value="'+setdate+'" ';
				 		a+=	'data-playweek='+day+'><strong>'+date+'</strong><em>'+day+'</em></label></span></li></div>';
				 		
// 						<div class="owl-item active" style="width: 52.5px;">
// 						<li class="item"><strong class="month">4월</strong>
// 						<span class="date"><label><input type="radio"
// 									name="radioDate1" data-displayyn="Y"
// 									data-playdate="2021-04-12" data-isplaydate="Y"
// 									data-playweek="오늘" checked=""><strong>12</strong><em>오늘</em></label></span></li>
// 						</div>
							
					};
					$(".owl-stage").append(a);
					  var owl = $('.owl-carousel');
					    
					    owl.owlCarousel({
					        items:7,                 // 한번에 보여줄 아이템 수
					        loop:false,               // 반복여부
					                   
					        autoplay:false,           // 자동재생 여부
					        autoplayTimeout:1800,    // 재생간격
					        autoplayHoverPause:true  //마우스오버시 멈출지 여부
					    });
					    $('.owl-next').click(function() {
					        owl.trigger('next.owl.carousel');
					    })
					    
					    $('.owl-prev').click(function() {
					        owl.trigger('prev.owl.carousel', [300]);
					    })
					  
								
					});
			
						
							
							





					   	
					
					
                    