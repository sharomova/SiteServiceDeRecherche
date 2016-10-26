<%-- 
    Document   : messages_utilisateur
    Created on : 10 déc. 2015, 02:19:40
    Author     : Christelle
--%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/messages_utilisateur.css" />" rel="stylesheet"  type="text/css" />
        
        <script type="text/javascript" src="<c:url value="resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery/1.10.2/jquery-ui.min.js"/>" ></script>
        <script src="<c:url value="/resources/plugins/autocomplete/jquery.autocomplete.js"/>" ></script>
        <title>Messages prives</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${user.getNom() == null}">
                <%@ include file="/WEB-INF/jsp/header.jsp" %>
            </c:when>
            <c:when test="${user.getNom() != null}">
                <%@ include file="/WEB-INF/jsp/header_connected.jsp" %>
            </c:when>
        </c:choose>


        <div class="col-md-12">
            <ul>
                <li>
                    <span class="from">Mike @ Hotmail</span>
                    <span class="date">27/09/15</span>
                    <p class="subject">My last homework</p>
                    <p class="preview">Lorem Ipsum....</p>
                </li>
            </ul>
        </div>
        
    </body>
</html>
