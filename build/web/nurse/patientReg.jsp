
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <title>Patient reg</title>
    <body>
        <form action="dopatientReg.jsp" method="post">
            
            First name:<input type="text" name="firstname">
            Last name:<input type="text" name="lastname">
            
            <input type="submit" value="save">
            
            
        </form>
    </body>
</html>
