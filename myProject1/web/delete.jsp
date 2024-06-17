<%-- 
    Document   : delete
    Created on : 7 Apr, 2024, 11:01:58 AM
    Author     : GITESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       

        <%   int rollno = Integer.parseInt(request.getParameter("t9"));
            try {
                Class.forName("org.postgresql.Driver");
                Connection cont = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Gitesh@2002");
                Statement st = cont.createStatement();
                String q = "delete from student where rollno='" + rollno + "'";
                int result = st.executeUpdate(q);
       if (result == 1){
        %>
        <script>
        alert("record delete dsuccessfully"); 
        window.location="select.jsp";
        </script>
        <%
            }else { 
        %>
        <script>
           alert("record not deleted"); 
        </script>
        <%
            }
        cont.close();
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
