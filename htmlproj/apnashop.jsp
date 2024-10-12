<%@ page import="java.sql.*"%>
<%
String s1=request.getParameter("uname");
String s2=request.getParameter("uemail");
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","siya@1234");
   PreparedStatement ps=con.PrepareStatement("insert in apnashop(Name,Email) values(?,?)");
   ps.setString(1,s1);
   ps.setString(2,s2);
   ps.executeUpdate();
}
catch(Exception e)
{
   out.println(e)
}
%>