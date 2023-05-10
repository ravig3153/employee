

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

.custom-checkbox .custom-control-input:checked ~.custom-control-label::before
	{
	background-color: black !important;
}
.home_button{
margin-top:16px;
}
.btn-dark{
    color: #fff;
    background-color: #000000;
    border-color: #000000;
    width: 180px;
}
</style>

<div class="container">
	<div class="card">
		<div class="card-body">
		<div class="card-header">   
		
		<h3 class="card-title text-center">Sign-Up</h3>
		 </div>
			<form action="register" method="POST" >
				
				<div class="form-group">
					<label for="topic_or_cation">Name</label> 
					<input type="text" class="form-control"  name="name"
						placeholder="">
				</div>
				<div class="form-group">
					<label for="topic_or_cation">Address</label> 
					<input type="text" class="form-control"  name ="address"
						placeholder="">
				</div>
				<div class="form-group">
					<label for="topic_or_cation">Email</label> 
					<input type="email" class="form-control" name = "email"
						placeholder="">
				</div>
				
				<div class="form-group">
					<label for="topic_or_cation">DOB</label> 
					<input type="date" class="form-control"  name="dob"
						placeholder="">
				</div>
				<div class="form-group">
					<label for="topic_or_cation">Username</label> 
					<input type="text" class="form-control"  name="userName"
						placeholder="">
				</div>
				<div class="form-group">
					<label for="primary_subject_or_author">Password</label> 
					<input type="password" class="form-control" name="password"
						id="postal_code" placeholder="">
				</div>
				
				
				<button type="submit"  class="btn-dark">Create User</button>
				
			</form>
			<button class="btn-dark" style="padding: 6px 16px" onclick="location.href='login'">Login Page</button>
			<div class="home_button">
			<button class="btn-dark " style="padding: 6px 16px" onclick="location.href='/'">Home page</button>
			</div>
		</div>
		
	</div>
</div>