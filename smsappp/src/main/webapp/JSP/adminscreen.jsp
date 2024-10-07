<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<style type="text/css">
.enroll {
	background-image: url("images/addstudentbg.jpeg");
	background-size: cover;
	background-repeat: no-repeat;
}

.heading {
	font-family: cursive;
	text-align: center;
	margin-bottom: 20px;
}

form {
	width: 400px
}

.table-container {
	background-image:
		url("https://media.istockphoto.com/id/1139420720/photo/neat-workplace-for-woman-with-wooden-table-laptop-computer-and-a-flower.jpg?s=612x612&w=0&k=20&c=sdAwv0bV3rLD6Vn6iTXKnipLPLeGlPHah-WCWw4R4YQ=");
	height: 100vh;
	background-size: cover;
	background-repeat: no-repeat;

}
</style>
<script type="text/javascript">
function remove(){
	
	document.fn.action="/remove";
	document.action.submit();
	
}
function fees(){
	
	document.fn.action="/fees";
	document.action.submit();
	
}

function batch(){
	
	document.fn.action="/batch";
	document.action.submit();
	
}
</script>

</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-success">
			<img src="images/cjclogo.jpeg" width="100px" height="50px">
			<div class="pt-2">
				<a href="#enroll">
					<button class="btn btn-outline-primary">Enroll Student</button>
				</a> <a href="#view">
					<button class="btn btn-outline-primary">View Student</button>
				</a> <a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
		<section class="vh-100 enroll mt-2" id="enroll">
			<div class="container  h-100">
				<div class="row justify-content-center h-200 w-75">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card  card-registration mt-0"
							style="border-radius: 15px;">
							<div class="card-body mt-2">
								<h3 class="heading">Student Enrollment Form</h3>

								<form action="enroll_student">
									<div class="row ">
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="text" id="firstName"
													class="form-control form-control-sm" name="studentFullName" />
												<label class="form-label" for="firstName">Student
													Full Name</label>
											</div>

										</div>
										<div class="col-md-6 mb-2">

											<div class="form-outline">
												<input type="email" id="lastName"
													class="form-control form-control-sm" name="studentEmail" />
												<label class="form-label" for="lastName">Student
													Email</label>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">

											<div class="form-outline datepicker w-100">
												<input type="number" class="form-control form-control-sm"
													id="birthdayDate" name="studentAge" /> <label
													for="birthdayDate" class="form-label">Student Age</label>
											</div>
										</div>

										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="tel" id="text"
													class="form-control form-control-sm"
													name="studentCollageName" /> <label class="form-label"
													for="phoneNumber">Student Collage Name</label>
											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-2 pb-2">

											<div class="form-outline">
												<input type="number" id="emailAddress"
													class="form-control form-control-sm" name="feesPaid" /> <label
													class="form-label" for="emailAddress">Fees Paid</label>
											</div>

										</div>
										<div class="col-md-6 mb-2">

											<h6 class="mb-2 pb-1">Student Course :</h6>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="java" value="Java" checked /> <label
													class="form-check-label" for="java">Java</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="python" value="Python" /> <label
													class="form-check-label" for="python">Python</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="testing" value="Testing" /> <label
													class="form-check-label" for="testing">Testing</label>
											</div>

										</div>

									</div>

									<div class="row">
										<div class="col">

											<select class="select form-control-sm" name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>

											</select> <label class="form-label select-label">Batch Mode</label>

										</div>
										<div class="col">

											<select class="select form-control-sm" name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-160">FDJ-160</option>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-162</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>
												<option value="FDJ-163">FDJ-163</option>
												<option value="REG-163">REG-163</option>
												<option value="FDJ-164">FDJ-164</option>
												<option value="REG-164">REG-164</option>
												<option value="FDJ-165">FDJ-165</option>
												<option value="REG-165">REG-165</option>
											</select> <label class="form-label select-label">Batch Number</label>

										</div>
									</div>

									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary" type="submit"
											value="Submit" />
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="table-container" id="view"|>
		<h1 class=" text-center">Student info..!</h1>
		<form name="fn">

				<table border="1" class=" table-bordered fs-6 w-100" >
					<thead>
						<tr>
							<th>StudentId</th>
							<th>StudentFullName</th>
							<th>StudentEmail</th>
							<th>StudentAge</th>
							<th>StudentCollageName</th>
							<th>FeesPaid</th>
							<th>StudentCourse</th>
							<th>BatchMode</th>
							<th>BatcNumber</th>
							<th>Select</th>
							<th>Action</th>

						</tr>
					</thead>


					<tbody>
						<c:forEach var="s" items="${data}">
							<tr>
								<td>${s.studentId}</td>
								<td>${s.studentFullName}</td>
								<td>${s.studentEmail}</td>
								<td>${s.studentAge}</td>
								<td>${s.studentCollageName}</td>
								<td>${s.feesPaid}</td>
								<td>${s.studentCourse}</td>
								<td>${s.batchMode}</td>
								<td>${s.batchNumber}</td>
									<td><input type="radio" name="StudentId"
									value="${s.studentId}"></td>
									<td>
									<div class="d-flex justify-content-between p-1 border border-success">
									<button class="btn btn-outline-primary" onClick="fees()">fees</button>
									<button class="btn btn-outline-danger" onClick="batch()">batch</button>
									<button class="btn btn-outline-warning" onClick="remove()">remove</button>
									</div>
									</td>
						



							</tr>
						</c:forEach>

					</tbody>
				</table>
		
		</section>
		</form>
</body>
</html>