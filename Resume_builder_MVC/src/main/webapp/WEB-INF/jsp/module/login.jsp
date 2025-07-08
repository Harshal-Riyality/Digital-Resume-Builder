<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style>
		body {
			margin: 0;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			background-color: #7e22ce;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		.container {
			display: flex;
			width: 800px;
			height: 520px;
			background-color: white;
			border-radius: 10px;
			overflow: hidden;
			box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
		}
		.form-section {
			width: 45%;
			padding: 40px 30px;
			display: flex;
			flex-direction: column;
			justify-content: center;
		}
		.form-section h2 {
			margin-bottom: 20px;
			font-size: 1.8rem;
			color: #4b0082;
		}
		.form-group {
			margin-bottom: 20px;
		}
		.form-group input, .form-group select {
			width: 100%;
			padding: 10px;
			font-size: 0.95rem;
			border: 1px solid #ccc;
			border-radius: 5px;
			background-color: #f9f9f9;
			outline: none;
		}
		.form-group select {
			appearance: none;
			background-image: url("data:image/svg+xml;utf8,<svg fill='gray' height='20' viewBox='0 0 24 24' width='20' xmlns='http://www.w3.org/2000/svg'><path d='M7 10l5 5 5-5z'/></svg>");
			background-repeat: no-repeat;
			background-position: right 10px center;
			background-size: 20px;
		}
		.forgot {
			margin-top: -10px;
			margin-bottom: 20px;
			font-size: 0.85rem;
		}
		.forgot a {
			text-decoration: none;
			color: #7e22ce;
		}
		.btn-login {
			background-color: #7e22ce;
			color: white;
			border: none;
			width: 100%;
			padding: 12px;
			font-size: 1rem;
			cursor: pointer;
			border-radius: 5px;
		}
		.signup {
			margin-top: 20px;
			font-size: 0.9rem;
			text-align: center;
		}
		.signup a {
			color: #7e22ce;
			text-decoration: none;
		}
		.info-section {
			width: 55%;
			background: url('https://images.unsplash.com/photo-1496181133206-80ce9b88a853') no-repeat center center;
			background-size: cover;
			display: flex;
			align-items: center;
			justify-content: center;
			color: white;
			text-align: center;
			padding: 20px;
		}
		.info-section h1 {
			font-size: 1.5rem;
			margin-bottom: 10px;
		}
		.info-section p {
			font-size: 0.9rem;
		}
		.error-msg {
			color: red;
			font-size: 0.85rem;
			text-align: center;
			margin-bottom: 10px;
		}
		.success-msg {
			color: green;
			font-size: 0.85rem;
			text-align: center;
			margin-bottom: 10px;
		}
	</style>
</head>
<body>

	<div class="container">
		<!-- Left: Login Form -->
		<div class="form-section">
			<h2>Login</h2>

			<!-- ✅ Show success message after signup -->
			<c:if test="${not empty message}">
				<div class="success-msg">${message}</div>
			</c:if>

			<!-- ❌ Show error message if login fails -->
			<c:if test="${not empty error}">
				<div class="error-msg">${error}</div>
			</c:if>

			<form method="post" action="${pageContext.request.contextPath}/loginUser">
				<div class="form-group">
					<input type="email" name="email" placeholder="Enter your email" required />
				</div>

				<div class="form-group">
					<input type="password" name="password" placeholder="Enter your password" required />
				</div>

				<div class="form-group">
					<select name="role" required>
						<option value="" disabled selected>Select Role</option>
						<option value="ADMIN">Admin</option>
						<option value="USER">User</option>
					</select>
				</div>

				<div class="forgot">
					<a href="#">Forgot password?</a>
				</div>

				<button type="submit" class="btn-login">Login</button>

				<div class="signup">
					Don’t have an account? 
					<a href="${pageContext.request.contextPath}/signup/form">Signup now</a>
				</div>
			</form>
		</div>

		<!-- Right: Image + Text -->
		<div class="info-section">
			<div>
				<h1>Every new friend is a new adventure.</h1>
				<p>Let’s get connected</p>
			</div>
		</div>
	</div>

	<!-- Font Awesome (optional) -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</body>
</html>
