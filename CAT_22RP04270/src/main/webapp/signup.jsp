<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>CAT_22RP04270</h1>
<form action="post">
<h2><center>sign in</center></h2>
<hr><br>
<input type="text" name="email" placeholder="enter your email"><br>
<input type="password" name="password" placeholder="enter your password"><br>
<button name="submitt">sign in</button>
</form>
<% 

if(request.getparameter("submit") !=null){
	String email=request.getparameter("email");
	String password= request.getparameter("password");
	
	
	String url="jdbc:mysql://localhost:3306/CAT_22RP04270";
	String user="root";
	  String pass = "";

      Connection conn = null;
      PreparedStatement pstmt = null;

      try {
          
          Class.forName("com.mysql.cj.jdbc.Driver");
          
          conn = DriverManager.getConnection(url, user, pass);

      String sql = "INSERT INTO employee (email, password) VALUES (?, ?)";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, email);
      pstmt.setString(2, password);

      pstmt.executeUpdate();
      out.println("<h3>sign in sucessfully</h3");
      response.sendRedirect("index.jsp");
      } catch(Exption e){
    	  out.println("<h3>Error: " + e.getMessage()+ "</h3>");
    	  
      }
      finally{
    	  if(pstmt !=null) try {pstmt.close(); } catch(SQLExcifeption e){}
      if (conn !=null)try {conn.close();} catch(SQLException e){}
      }}

%>

</body>
</html>