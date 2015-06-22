<%-- 
    Document   : dopatientReg
    Created on : Jun 20, 2015, 4:05:38 PM
    Author     : onekalit
--%>

<html>

<head>
        
</head>

<body>
    <%@page language="java"%>
    <%@page import="java.sql.*"%>

    <%

        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");

        PreparedStatement ps=null;
        Connection cn=null;
  
         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer",
            "root", "");
       // Statement st = con.createStatement();
        ps=con.prepareStatement("insert into patients(fname,lname) values('"+firstname+"', '"+lastname+"')");
        //ps=cn.prepareStatement("insert into patients values(?,?)");
        //ps.setString(1,firstname);
        //ps.setString(2,lastname);
        ps.executeUpdate();
        
   // ResultSet rs;
    //rs = st.execute("insert into patients(fname,lname) values('"+firstname+"', '"+lastname+"')");
   // if (rs !=null) {
        out.println("insertion done");
    //}
    %>

</body>


    
    
    </html>