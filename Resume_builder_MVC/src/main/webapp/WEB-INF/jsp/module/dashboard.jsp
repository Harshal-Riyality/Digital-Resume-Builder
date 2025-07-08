<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--favicon-->
	<link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon-32x32.png" type="image/png"/>

	<!--plugins-->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet"/>

	<!-- loader-->
	<link href="${pageContext.request.contextPath}/resources/assets/css/pace.min.css" rel="stylesheet"/>
	<script src="${pageContext.request.contextPath}/resources/assets/js/pace.min.js"></script>

	<!-- Bootstrap CSS -->
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-extended.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/app.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/icons.css" rel="stylesheet">

	<!-- Theme Style CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/dark-theme.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/semi-dark.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/header-colors.css"/>
	
	<title>Admin Dashboard - Resume Builder</title>
</head>

<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--sidebar wrapper -->
		<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div>
					<img src="${pageContext.request.contextPath}/resources/assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
				</div>
				<div>
					<h4 class="logo-text">ResumeBuilder</h4>
				</div>
				<div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i></div>
			</div>

			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li>
					<a href="${pageContext.request.contextPath}/index" class="has-arrow">
						<div class="parent-icon"><i class='bx bx-home-alt'></i></div>
						<div class="menu-title">Dashboard</div>
					</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/addUser"><i class='bx bx-user-plus'></i>Add User</a></li>
						<li><a href="${pageContext.request.contextPath}/viewAllCustomer"><i class='bx bx-group'></i>View All Customers</a></li>
						<li><a href="${pageContext.request.contextPath}/analytics"><i class='bx bx-bar-chart-alt-2'></i>Analytics & Reports</a></li>
						<li><a href="${pageContext.request.contextPath}/templateStats"><i class='bx bx-layer'></i>Template Usage</a></li>
						<li><a href="${pageContext.request.contextPath}/resumeStats"><i class='bx bx-file'></i>Resume Stats</a></li>
						<li><a href="${pageContext.request.contextPath}/adminSettings"><i class='bx bx-cog'></i>Admin Settings</a></li>
					</ul>
				</li>
				<li class="menu-label">Quick Tools</li>
				<li><a href="${pageContext.request.contextPath}/manageAdmins"><i class='bx bx-id-card'></i><div class="menu-title">Manage Admins</div></a></li>
				<li><a href="${pageContext.request.contextPath}/feedbacks"><i class='bx bx-message-square-dots'></i><div class="menu-title">User Feedback</div></a></li>
				<li><a href="${pageContext.request.contextPath}/support"><i class='bx bx-support'></i><div class="menu-title">Support</div></a></li>
			</ul>
			<!--end navigation-->
		</div>
		<!--end sidebar wrapper-->

		<!--start content wrapper-->
		<div class="page-wrapper">
			<div class="page-content">
				<h4 class="mb-4">Welcome Admin 👋</h4>
				<div class="row row-cols-1 row-cols-md-3 g-4">
					<div class="col">
						<div class="card radius-10">
							<div class="card-body">
								<h6>Total Users</h6>
								<h4 class="mb-0">1,256</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card radius-10">
							<div class="card-body">
								<h6>Resumes Created</h6>
								<h4 class="mb-0">3,824</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card radius-10">
							<div class="card-body">
								<h6>Active Templates</h6>
								<h4 class="mb-0">12</h4>
							</div>
						</div>
					</div>
				</div>
				<!-- Optional: Add chart containers here -->
			</div>
		</div>
		<!--end content wrapper-->
	</div>
	<!--end wrapper-->

	<!-- JS Files -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/simplebar/js/simplebar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/metismenu/js/metisMenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/chartjs/js/chart.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/app.js"></script>
</body>
</html>
