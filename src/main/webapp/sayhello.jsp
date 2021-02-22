<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
    </head>
    <body>
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>SayHello.jsp</h1>
        <% String lang = request.getParameter("lang"); %>
        <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
        <% String nome = request.getParameter("nome"); %>
        <jsp:setProperty name="myBean" property="nome" value="<%=nome%>"/>
        <% String sobrenome = request.getParameter("sobrenome"); %>
        <jsp:setProperty name="myBean" property="sobrenome" value="<%=sobrenome%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, 
        <jsp:getProperty name="myBean" property="nome"/> 
        <jsp:getProperty name="myBean" property="sobrenome"/>!
    </body>
</html>
