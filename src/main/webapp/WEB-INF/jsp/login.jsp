<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<style type="text/css">
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	background: #f0f8ff !important;
}

.user_card {
	height: 400px;
	width: 350px;
	margin-top: auto;
	margin-bottom: auto;
	background: #e6f3ff;
	position: relative;
	display: flex;
	justify-content: center;
	flex-direction: column;
	padding: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 5px;
}

.brand_logo_container {
	position: absolute;
	height: 170px;
	width: 170px;
	top: -75px;
	border-radius: 50%;
	background: #60a3bc;
	padding: 10px;
	text-align: center;
}

/* .brand_logo {
	height: 150px;
	width: 150px;
	border-radius: 50%;
	border: 2px solid white;
} */

.form_container {
	margin-top: 25px;
}

.login_btn {
	width: 100%;
	background: black !important;
	color: white !important;
}

/* .login_btn:focus {
	box-shadow: none !important;
	outline: 0px !important;
} */

.login_container {
	padding: 0 2rem;
}

.input-group-text {
	background: black !important;
	color: white !important;
	border: 0 !important;
	border-radius: 0.25rem 0 0 0.25rem !important;
}

.input_user, .input_pass:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.select_user_type {
	width: 246px;
	padding: 6px;
	border-radius: 4px;
}

.custom-checkbox .custom-control-input:checked ~.custom-control-label::before
	{
	background-color: black !important;
}
.home_button{
margin-top:16px;
text-align: center
}
.btn-dark{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
    width: 180px;
}
</style>
</head>
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				
				<div class="d-flex justify-content-center">
					<h3>Login</h3>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form   method="POST" action="login" >
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="userName" class="form-control input_user"
								value="" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control input_pass"
								value="" placeholder="password">
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="customControlInline"> <label
									class="custom-control-label" for="customControlInline">Remember
									me</label>
							</div>
						</div>
						<div class="d-flex justify-content-center mt-3 login_container">
							<button name="submit" value="submit" type="submit" class="btn login_btn btn-primary">Login</button>
						</div>
						
					</form>
					</div>
						<div class="home_button">
			<button class="btn-dark" style="padding: 6px 16px" onclick="location.href='/'">Home page</button>
			</div>
						<div class="home_button">
			<button class="btn-dark" style="padding: 6px 16px" onclick="location.href='signup'">Sign up</button>
			</div>
				
			</div>
		</div>
	</div>
</body>
</html>