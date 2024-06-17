<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%
    String errorMessage = null;
    try {
        int rollno = Integer.parseInt(request.getParameter("u1"));
        String column = request.getParameter("column");
        String value = request.getParameter("u2");

        // Establish database connection
        Connection conn = null;
        PreparedStatement prep = null;
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Gitesh@2002");
            
            // Construct the update query
            String updateQuery = "UPDATE student SET " + column + "=? WHERE rollno=?";
            prep = conn.prepareStatement(updateQuery);
               if (column.equals("phone")) {
                prep.setInt(1, Integer.parseInt(value));
            } else {
                prep.setString(1, value);
            }
            prep.setInt(2, rollno);

            // Execute the update
            int result = prep.executeUpdate();
            if (result == 1) {
                %>
                  <script>
        alert("record updated successfully"); 
                  </script>
                <%
            } else {
                   %>
                  <script>
        alert("record not updated "); 
                  </script>
                <%
                
            }
        } finally {
            // Close resources
            if (prep!= null) {
                prep.close();
            }
            if (conn!= null) {
                conn.close();
            }
        }
    } catch (NumberFormatException e) {
        errorMessage = "Invalid roll number format.";
    } catch (Exception e) {
        errorMessage = e.getMessage();
    }
    
    // Display error message if any
    if (errorMessage != null) {
        out.print("Error: " + errorMessage);
    }
%>
</body>
</html>
