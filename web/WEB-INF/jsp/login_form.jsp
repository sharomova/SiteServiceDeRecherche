<%-- 
    Document   : login_form
    Created on : 8 oct. 2015, 10:34:11
    Author     : Melissa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><></title>


        <link href="<c:url value="/resources/css/login_form.css" />" rel="stylesheet"  type="text/css" />
    </head>
    <body>
        <div class="body">
            <div class="grad"></div>
            <div class="header">
                <div><fmt:message key="login_toServider"/></div>
            </div>
            <br>


            <form id="login" action="login.htm" method="post" onsubmit="return(validateFields())">

                <input type = "text" id="username" name="name" placeholder = "Username" autofocus="required">
                <input type = "password" id="password" name="password" placeholder = "******">

                <div id="buttons">
                    <div id="button1"><input type = "submit" id = "dologin" value = "Login" ></div>
                    <div id="button2"><a href="signup.htm"><input type = "button" id = "" value = "Sign up"></a></div>
                </div>
                <a href=""><fmt:message key="Login_OublierMotDePasse"/></a> <br>
                <br>
                <div id="message_erreur_connection"><c:out value="${message}"></c:out></div>

                </form>
            </div>
            <script src="<c:url value="/resources/js/jquery/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/login_form.js" />"></script>
    </body>
</html>
