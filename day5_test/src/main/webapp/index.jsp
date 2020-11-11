<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="DAO.test"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("p").click();
  });
});
</script>
</head>
<body>
	<div data-role="page" data-theme="a">
		<div data-role="header" data-position="fixed" data-theme="b">
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
	<form action="add" method="post">
		<table width=50% align=center>
			<tr align=center>
				<td colspan=3 align=center>
				name:<input type="text" name="name">
			<tr align=center>
				<td>
				國文:<input type="text" name="chi">
				<td>
				英文:<input type="text" name="eng">
				<td>
				數學:<input type="text" name="math">
			<tr align=center>
				<td colspan=3 align=center>
				<!-- <input type="submit" value="提交"> -->
				<input type="button" onclick="alert('完成提交'),this.disabled=true;this.form.submit()" value="提交" >
				
		</table>
	</form>
	
	
		<!--  <form action="add" method="post">
      		<div class="ui-field-contain">
        	<label for="fullname">name：</label>
        	<input type="text" name="fullname" id="fullname">       
        	<label for="bday">生日：</label>
        	<input type="date" name="bday" id="bday">
        	<label for="email">E-mail:</label>
        	<input type="email" name="email" id="email" placeholder="你的電子信箱..">
      		</div>
     		 <input type="submit" data-inline="true" value="提交">
    	</form>-->
	
	
	
	
	
	<div data-role="footer" data-position="fixed" data-theme="b">
		<h4>end</h4>
	</div>
	</div>
</body>
</html>
