<%@ include file="module/dashboard.jsp" %>
<%@ include file="module/header.jsp" %>
<!--start page wrapper -->
<div class="page-wrapper">
	<div class="page-content">
		<!-- Your dashboard content begins -->
		<div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
			<!-- Example: User Stats Card 1 -->
			<div class="col">
				<div class="card radius-10 border-start border-0 border-4 border-info">
					<div class="card-body">
						<div class="d-flex align-items-center">
							<div>
								<p class="mb-0 text-secondary">Total Resumes Created</p>
								<h4 class="my-1 text-info">15</h4>
								<p class="mb-0 font-13">+10% this month</p>
							</div>
							<div class="widgets-icons-2 rounded-circle bg-gradient-blues text-white ms-auto">
								<i class='bx bxs-file-doc'></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Add more cards relevant to users only -->
		</div>

		<!-- Resume Actions or Recent Activity Panel -->
		<div class="row mt-4">
			<div class="col-md-12">
				<div class="card radius-10">
					<div class="card-header">
						<h6 class="mb-0">Your Activity</h6>
					</div>
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">Last Resume Created: <strong>2 days ago</strong></li>
							<li class="list-group-item">Templates Used: <strong>Modern, Classic</strong></li>
							<li class="list-group-item">Downloads This Month: <strong>8</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Add Weekly Overview or Tips Section -->
		<div class="row row-cols-1 row-cols-lg-3">
			<div class="col d-flex">
				<div class="card radius-10 w-100">
					<div class="card-body">
						<p class="font-weight-bold mb-1 text-secondary">Weekly Resume Insights</p>
						<div class="d-flex align-items-center mb-4">
							<div>
								<h4 class="mb-0">6 Downloads</h4>
							</div>
							<div>
								<p class="mb-0 text-success ms-2">+15% <i class="bx bxs-up-arrow-alt"></i></p>
							</div>
						</div>
						<div class="chart-container-0 mt-5">
							<canvas id="chart3"></canvas>
						</div>
					</div>
				</div>
			</div>
			<!-- Add Tips or Resources Panel -->
			<div class="col d-flex">
				<div class="card radius-10 w-100">
					<div class="card-header bg-transparent">
						<h6 class="mb-0">Resume Tips</h6>
					</div>
					<div class="card-body">
						<ul>
							<li>Use action verbs to describe achievements.</li>
							<li>Customize your resume for each job.</li>
							<li>Highlight your most relevant experiences.</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Top Categories for Resumes (Optional) -->
			<div class="col d-flex">
				<div class="card radius-10 w-100">
					<div class="card-header bg-transparent">
						<h6 class="mb-0">Popular Resume Templates</h6>
					</div>
					<div class="card-body">
						<div class="chart-container-0">
							<canvas id="chart5"></canvas>
						</div>
						<div class="row row-group border-top g-0">
							<div class="col">
								<div class="p-3 text-center">
									<h4 class="mb-0 text-danger">Modern</h4>
									<p class="mb-0">Used 60%</p>
								</div>
							</div>
							<div class="col">
								<div class="p-3 text-center">
									<h4 class="mb-0 text-success">Classic</h4>
									<p class="mb-0">Used 40%</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end page wrapper -->
<%@ include file="module/footer.jsp" %>
