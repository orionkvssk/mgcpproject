<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function msg_sent(){
                alert("Registration Successful"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="1; url=/Money_Mode_Exchange_System/signin.html">
        <title>Registration!!!</title>
    </head>
    <%
        PreparedStatement pst,pst1;
        String gender,bloodgroup,name,email,state,city,mobile,age;
        name=request.getParameter("a1");
        bloodgroup=request.getParameter("a2");
        email=request.getParameter("a3");
        state=request.getParameter("a4");
        city=request.getParameter("a5");
        mobile=request.getParameter("a6");
        age=request.getParameter("a7");
        gender=request.getParameter("a8");
        
        
        Date d=new Date();
        dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
        
        try{
                               
            pst=con.prepareStatement("insert into users(name,bloodgroup,email,state,city,mobile,age,gender) values(?,?,?,?,?,?,?,?)");
            pst.setString(1,name);
            pst.setString(2,bloodgroup);
            pst.setString(3,email);
            pst.setString(4,state);
            pst.setString(5,city);
            pst.setString(6,mobile);
            pst.setString(7,age);
            pst.setString(8,gender);
            
            int x=pst.executeUpdate();
            if(x==1)
            {
                out.println("Successfully regstered and submitted the details...!!!")
                
            }
        }
        catch(Exception e)
        {
            out.println("Please check the error "+e.getMessage());
        }
        %>
</html>