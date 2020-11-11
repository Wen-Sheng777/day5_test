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
<script>

 if ( location.href.indexOf( "refresh=1" ) == -1 ) {

  location.href = location.href + "?refresh=1";

 }

</script>
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
		<form action="delete" method="post">
			<table width=50% align=center>
				<tr align=center>
					<td colspan=3 align=center>
					id:<input type="text" name="id">
				<tr align=center>
					<td colspan=3 align=center>
					<input type="submit" value="提交">
					
			</table>
		</form>
		<%
	           
					student[] s=new test().quer();
					
					out.println("<table width=600 align=center border=1>");
					
					out.println("<tr align=center><td>id<td>name<td>chi<td>eng<td>math");
				//int i=0;
					for(int i=0;i<s.length;i++)
					//while(true)
					{
						
						out.println("<tr align=center><td>"+s[i].getId()+
										"<td>"+s[i].getName()+
										"<td>"+s[i].getChi()+
										"<td>"+s[i].getEng()+
										"<td>"+s[i].getMath());
						//i++;
					}
					
					out.println("</table>");
				
				%>
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h4>end</h4>
		</div>

</body>
</html>