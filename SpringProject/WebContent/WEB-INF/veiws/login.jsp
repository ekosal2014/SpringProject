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
	<form action="${pageContext.request.contextPath }/login.html" method="post">
		<table>
			<thead>
				<tr>
					<th colspan="2"><h1>User Log In</h1>/th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
			</tbody>
		</table>
		</form>
	</center>
</body>
</html>