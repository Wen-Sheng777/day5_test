<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.test"
    import="model.student"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="page" data-theme="a">
		<div data-role="header" data-position="fixed" data-theme="b" data-add-back-btn="true">
			<h1>title</h1>
		</div>
	
		<div data-role="content" data-theme="b">
		<div data-role="navbar">
				<ul>
					<li><a href="index.jsp" data-role="button" data-icon="plus">新增</a>
					<li><a href="query.jsp" data-role="button" data-icon="search">查詢</a>
					<li><a href="update.jsp" data-role="button" data-icon="edit">修改</a>
					<li><a href="delete.jsp" data-role="button" data-icon="delete">刪除</a>
				</ul>
			
			</div>
		
		</div>
		<form action="query" method="post">
			<table width=50% align=center>
				<tr align=center>
					<td colspan=3 align=center>
					id:<input type="text" name="id">
				<tr align=center>
					<td colspan=3 align=center>
					<input type="button" value="提交" onclick="this.disabled=true;this.form.submit()">
			</table>
		</form>
		
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h4>end</h4>
		</div>

</body>
</html>