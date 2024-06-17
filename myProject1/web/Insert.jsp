<%-- 
    Document   : Insert
    Created on : 6 Apr, 2024, 9:24:59 AM
    Author     : GITESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.Connection "%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head
                <link href="style.css"  rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title></title>
    </head>
    <body>
         <%
             int rollno=Integer.parseInt(request.getParameter("t1"));
            String name=request.getParameter("t2");
                String address=request.getParameter("t3");
            int phone=Integer.parseInt(request.getParameter("t4"));
            String qual=request.getParameter("t5");
            String div= request.getParameter("t6");
             
          try{
              
              Class.forName("org.postgresql.Driver");
              Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Gitesh@2002");
               Statement stmt= conn.createStatement();
                String query="insert into student values('"+rollno+"','"+name+"','"+address+"','"+phone+"','"+qual+"','"+div+"')";
                int result=stmt.executeUpdate(query);
                if(result==1){
                      %>
                  <script>
                   alert("record Inserted successfully"); 
                  </script>
                <%
                }
                else{
                      %>
                  <script>
                 alert("record not inserted"); 
                  </script>
                <%
                }
             }catch(Exception e)
             {
                   %>
                  <script>
        alert("<%=e%>"); 
                  </script>
                <%
             }
          %>
          
    </body>
</html>
