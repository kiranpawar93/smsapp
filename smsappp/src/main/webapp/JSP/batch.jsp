<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fees</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<body>
	<div class="d-flex justify-content-center align-center">
		<div class="w-50 align-middle border border-info border-3 mt-2"
			style="height: 570px">
			<h6 class="p-3 text-primary">
				<u>Batch details:-</u>
			</h6>

			<div class="border border-secondary m-2 p-2">
				<table class="table table-hover border border-secondary">
					<tbody>
						<tr class="table-primary fs-6">
							<th>Student Id</th>
							<td>${s.studentId}</td>

						</tr>
						<tr class="table-primary fs-6">
							<th>StudentFullName</th>
							<td>${s.studentFullName}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentEmail</th>
							<td>${s.studentEmail}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentAge</th>
							<td>${s.studentAge}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentCollageName</th>
							<td>${s.studentCollageName}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentCourse</th>
							<td>${s.studentCourse}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>BatchMode</th>
							<td>${s.batchMode}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>BatchNumber</th>
							<td>${s.batchNumber}</td>
						<tr class="table-primary fs-6">
							<th>FeesPaid</th>
							<td>${s.feesPaid}</td>
						</tr>

					</tbody>
				</table>

				<form action="batchshift">
					<input type="text" name="studentId" value="${s.studentId }"
						hidden="true">
					<div class="bg-dark p-2 d-flex justify-content-between">
						<label for="batch" class="text-info"><b>Enter
								New Batch
						</b> </label> <input type="text" name="batch" >

					</div>
					<div class="d-flex justify-content-center pt-2">
						<button class="btn btn-success btn-sm">Add Batch</button>

					</div>

				</form>




			</div>

		</div>
	</div>


</body>
</html>