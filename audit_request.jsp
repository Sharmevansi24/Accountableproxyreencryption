<%-- 
    Document   : DO_login
    Created on : 9 Mar, 2021, 5:34:14 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fid = request.getParameter("fid");
    String filename = request.getParameter("filename");
    
    String doid = (String)session.getAttribute("doid");
    String doname = (String)session.getAttribute("doname");
    String domail = (String)session.getAttribute("domail");
    System.out.println(" \n Fid :" + fid + "\n doid:" +doid);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("Select * from do_files where id ='" + fid + "' ");
        if (rs.next()) {
            String fname = rs.getString("filename");
            String dkey = rs.getString("dkey");
            String hashcode = rs.getString("hashcode");
            
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int i = st1.executeUpdate("INSERT into audit_request(filename, time, doid, doname, status, fid, hashcode) values('" + fname + "','" + time + "','" + doid + "','" + doname + "','waiting','" + fid + "', '" + hashcode + "')");
            if (i != 0) {
                response.sendRedirect("My_files.jsp?Request_sent");
            }
        } else {
            response.sendRedirect("My_files.jsp?failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

