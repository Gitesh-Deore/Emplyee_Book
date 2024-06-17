<%-- 
    Document   : select
    Created on : 7 Apr, 2024, 4:41:52 PM
    Author     : GITESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css"  rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <table class="table"  border="1" >
            <tr>
                <th>Rollno</th>
                <th>Name</th>
                <th>Address</th>
                <th>Phone number</th>
                <th>Qualifications</th>
                <th>Division</th>
            </tr>
       <% 
             try{
                 Class.forName("org.postgresql.Driver");
             
                Connection cont = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Gitesh@2002");
                Statement st = cont.createStatement();
                ResultSet rs=st.executeQuery("select * from student");
                while(rs.next()){
       %>
       <tr>
           <td><%=rs.getInt("rollno")%></td>
           <td><%=rs.getString("name")%></td>
           <td><%=rs.getString("address")%></td>
           <td><%=rs.getInt("phone")%></td>
           <td><%=rs.getString("qualification")%></td>
           <td><%=rs.getString("division")%></td>
           <td><a href="update.html"  action="">update </a></td>
           <td><a href="delete.html" >delete </a></td>
           
           
       </tr>
       
       
       
       <%
           
           }
        }catch(Exception e)
         {
             %>
              <script>
        alert("<%= e %>"); 
    </script>
         <% }
       %>
       
    </body>
</html>
