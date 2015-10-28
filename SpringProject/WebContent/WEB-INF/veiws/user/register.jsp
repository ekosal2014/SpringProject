<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
	<form action="${pageContext.request.contextPath }/user/register.html" method="post">
		<table>
			<thead>
				<tr>
					<th colspan="2"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Full Name : </td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Sex : </td>
					<td>
						<input type="radio" name="sex" value="0" checked="checked">Female
						<input type="radio" name="sex" value="1">Male
						
				    </td>
				</tr>
				<tr>
					<td>Date of Birth :</td>
					<td><input type="text" name="dob"></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password : </td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>Phone : </td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>Email : </td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Address : </td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Register"></td>
				</tr>
			</tbody>
		</table>
		</form>
	</center>
</body>
</html>