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
	<a href="${pageContext.request.contextPath }/user/acticle.html">Test</a>
	<form id="submitForm" action="${pageContext.request.contextPath }/user/singleSave.html" method="post" enctype="multipart/form-data">
	<table border="0" cellpadding="0" cellspacing="0">
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
					
					<input type="file" name="upload" id="upload"></input>
				</td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>
					<a href="javascript:" id="saveImageChange">Save Change</a>
				</td>
				<td>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>Full Name</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
							</div>
						</div>
						<div class="controll-info-edit">
							<div>
								<input type="text" name="name">
							</div>
							<div>
								<a href="javascript:">Save</a>
								<a href="javascript:" class="cancel">Cancel</a>
							</div>
						</div>
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>Sex</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
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
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>Date Of Birth</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
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
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>Phone</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
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
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>E-mail</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
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
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
			<tr class="tr-controll-info">
				<td>Address</td>
				<td>
					<div class="controll-info-row">
						<div style="position: relative;" class="controll-top">
							<div class="titleinfo-right">E KOSAL</div>
							<div class="setting-left">
								<a href="javascript:" class="controll-edit">edit</a>
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
						<div style="clear: both;"></div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</form>
	<script type="text/javascript" src="<c:url value='../resources/js/jquery-2.1.0.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='../resources/js/custom.js'/>"></script>
     <script>
     	$(document).ready(function(){
     		$("#saveImageChange").click(function(){
     			 $.ajax({
     		            type:'POST',
     		            url: "/user/singleSave.html",
     		            data:"id="+10,
     		            success:function(data){
     		                console.log("success");
     		                console.log(data);
     		            },
     		            error: function(data){
     		                console.log("error");
     		                console.log(data);
     		            }
     		        });
     		});
     	});
     </script>

</body>
</html>