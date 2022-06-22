<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypageMain.jsp</title>
</head>
<style>

.form-control {
	width: 300px;
}

</style>
<body>
	<!-- section start-->
	<section class="small-section dashboard-section bg-inner"
		data-sticky_parent>
		<div class="container">
			<div class="row">
				<%@include file="../inc/mypageMenu.jsp"%>

				<div class="col-lg-9">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">

						<!-- 비밀번호변경 -->
														<div class="tab-pane fade show active" id="dashboard">
								<div class="dashboard-main">
									<div class="dashboard-intro">
										<h5>
											welcome! <span>Mark Enderess</span>
										</h5>
										<p>you have completed 70% of your profile. add basic info
											to complete profile.</p>
										<div class="complete-profile">
											<div class="row">
												<div class="col-xl-4">
													<div class="complete-box">
														<i class="far fa-check-square"></i>
														<h6>verified email ID</h6>
													</div>
												</div>
												<div class="col-xl-4">
													<div class="complete-box">
														<i class="far fa-check-square"></i>
														<h6>verified phone number</h6>
													</div>
												</div>
												<div class="col-xl-4">
													<div class="complete-box not-complete">
														<i class="far fa-window-close"></i>
														<h6>complete basic info</h6>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="counter-section">
										<div class="row">
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/hotel.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>25</h3>
													<h5>hotel booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/flight.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>12</h3>
													<h5>flight booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/taxi.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>50</h3>
													<h5>cab booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/food.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>40</h3>
													<h5>food ordered</h5>
												</div>
											</div>
										</div>
									</div>
									<div class="dashboard-info">
										<div class="row">
											<div class="col-md-6">
												<div id="chart">
													<div class="detail-left">
														<ul>
															<li><span class="completed"></span> Completed</li>
															<li><span class="upcoming"></span> Upcoming</li>
															<li><span class="cancelled"></span> Cancelled</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="activity-box">
													<h6>recent activity</h6>
													<ul>
														<li><i class="fas fa-plane"></i> Paris to Dubai <span>3
																days ago</span></li>
														<li><i class="fas fa-plane"></i> Paris to Dubai <span>23
																june</span></li>
														<li class="blue-line"><i class="fas fa-hotel"></i>
															hotel sea view <span>20 april</span></li>
														<li class="yellow-line"><i class="fas fa-taxi"></i>
															Paris To Toulouse <span>12 feb</span></li>
														<li><i class="fas fa-plane"></i> Paris to Dubai <span>14
																jan</span></li>
														<li class="blue-line"><i class="fas fa-hotel"></i>
															hotel sea view <span>12 jan</span></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- 비밀번호변경 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end-->
</body>
</html>
<%@include file="../inc/footer.jsp"%>