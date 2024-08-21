<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String url="jdbc:mysql://localhost:3306/emp_22RP04270

String user="root";
String pass=""
connection conn=null;
String employee id=request.getparameter("employee id")
String sql="DELETEfrom employee WHERE employee id=?";
if(rowsAfected >0){
	message="product deleted successfully";
}
else{
	message="failed to delete"
}

%>


</body>
</html>