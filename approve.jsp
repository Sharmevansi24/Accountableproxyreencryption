<%-- 
    Document   : request_key
    Created on : 11 Jan, 2021, 12:10:30 PM
    Author     : JAVA-JP
--%>

<%@page import="Networks.Mail"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uid = request.getParameter("uid");
    String fileid = request.getParameter("fileid");
    String time = request.getParameter("time");

    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        ResultSet rs1 = st1.executeQuery("SELECT * FROM request where uid='" + uid + "' AND fid='" + fileid + "' AND time='" + time + "'");
        if (rs1.next()) {
            String umail = rs1.getString("umail");
            String RDkey = rs1.getString("rdkey");
            String filename = rs1.getString("filename");
            String msggg = "File Name: " + filename + "  \nFile Re_Decryption Key : " + RDkey + "";
            Mail ma = new Mail();
            ma.secretMail(msggg, "Secret_Key", umail);

            System.out.println("success");
            int i = st.executeUpdate("update request set status ='Approved' where uid='" + uid + "' AND fid ='" + fileid + "' AND time='" + time + "'");
            if (i != 0) {
                response.sendRedirect("req_files.jsp?File_approved");
            } else {
                response.sendRedirect("req_files.jsp?Failed");
            }
        } else {
            response.sendRedirect("req_files.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

