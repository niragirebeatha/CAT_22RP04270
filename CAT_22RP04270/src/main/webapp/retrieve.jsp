<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="get"></form>
<h1>enter the id you want to retrieve</h1>
<input type="text" name="email" value="email">
<input type="password" name="password" value="password">
</form>
<table boader="1">
<tr>
<th>employee id</th>
<th>email</th>
<th>password</th>
<tr>
<% 
sql="SELECT * FROM employee WHERE employee id=?"; 
pstmt=conn.prepareStatement(sql);
pstmt=setString(1,employee id);
}
else{
	sql="SELECT * FROM employee";
	pstmt=conn.prepareStatement(sql);
}
rs=pstmt.executeQuery();
while(rs.next())
	int id=rs.getInt(id);
String email=rs.getString(email);
String password=rs.getString(password);

%>
<tr>
<td><%=employee id %></td>
<td><%=email %></td>
<td><%=password %></td>








</body>
</html>