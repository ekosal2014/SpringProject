<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href='<c:url value="../resources/css/style.css"/>'/>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th colspan="2"><h1>Information Management</h1></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div id="broswer_image">
						<img src="<c:url value='../resources/images/default_image.jpg'/>"/>
					</div>
				</td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>
					<a href="javascript:">Save Change</a>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td>
					<div>
						<div style="position: relative;">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:">edit</a>
							</div>
						</div>
						<div class="controll-info-edit">
							<div>
								<input type="text" name="name">
							</div>
							<div>
								<a href="javascript:">Save</a>
								<a href="javascript:">Cancel</a>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>Sex</td>
				<td>
					<div>
						E kosal
					</div>
				</td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td>
					<div>
						E kosal
					</div>
				</td>
			</tr>
			<tr>
				<td>Phone</td>
				<td>
					<div>
						E kosal
					</div>
				</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>
					<div>
						E kosal
					</div>
				</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>
					<div>
						E kosal
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>