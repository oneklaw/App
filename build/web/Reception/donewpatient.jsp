<%-- 
    Document   : donewpatient
    Created on : Jun 22, 2015, 8:29:09 PM
    Author     : ken
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <TABLE BORDER="1">
                <TR>
                    <TH>ID</TH>
                    <TH>First Name</TH>
                    <TH>Last Name</TH>
                </TR>
        </table>
        <% 
        
        
String patientID=request.getParameter("patientID");                                    
String firstName=request.getParameter("firstName");
String  lname=request.getParameter("lastName");
String  sex=request.getParameter("sex");

String BirthPlace=request.getParameter("BirthPlace");
String  DOB=request.getParameter("DOB");
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
java.util.Date dateStr = formatter.parse(DOB);
String occupation=request.getParameter("occupation");
String Tribe=request.getParameter("Tribe");
String  District=request.getParameter("District");
String region=request.getParameter("region");
String Contact=request.getParameter("Contact");
String village=request.getParameter("village");
String  county=request.getParameter("County");
String subCounty=request.getParameter("subcounty");
String parish=request.getParameter("Parish");

             %>
        
        
        
        
        
        <%
            String username = request.getParameter("username");    
    String password = request.getParameter("password"); 
    String Department= request.getParameter("Department");
    String DptPharmacy = Department;
    
    
           
  
          
           Class.forName("com.mysql.jdbc.Driver");
            
           
            
         
            
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer", "root", "");
                 Statement st = con.createStatement();
             st=con.createStatement();
            String stmt=("insert into patient(firstName,lname,sex,BirthPlace,DOB,occupation,tribe,district ,region,Contact,county,subCounty,parish) values('"+firstName+"','"+lname+"','"+sex+"','"+BirthPlace+"','"+DOB+"','"+occupation+"','"+Tribe+"','"+District+"' ,'"+region+"','"+Contact+"','"+county+"','"+subCounty+"','"+parish+"')");	
	
	st.executeUpdate(stmt);
        ResultSet resultset = st.executeQuery("select * from patient where dob='"+DOB+"'");
        
        
        

        
            while(resultset.next()){ 
        %>
        <p align="center"> The patient below has been added to the database
            <TABLE BORDER="1">
                
                <TR>
                    <TD> <%= resultset.getString(1) %> </TD>
                    <TD> <%= resultset.getString(2) %> </TD>
                    <TD> <%= resultset.getString(3) %> </TD>
                    <TD> <%= resultset.getString(4) %> </TD>
                    <TD> <%= resultset.getString(5) %> </TD>
                    <TD> <%= resultset.getString(6) %> </TD>
                    <TD> <%= resultset.getString(7) %> </TD>
                    <TD> <%= resultset.getString(8) %> </TD>
                    <TD> <%= resultset.getString(9) %> </TD>
                </TR>
            </TABLE>
                
  Thank you
        <% 
            } 
        %><%

	

            
           
            
            %>
    </body>
</html>
