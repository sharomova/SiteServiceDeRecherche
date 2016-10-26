<%-- 
    Document   : header
    Created on : 15 oct. 2015, 12:36:49
    Author     : Melissa
--%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html lang="${language}">
    <head>
        <title>Page index non connecte</title>
    </head>
    <body>
        <div class="container">
      <ul class=" pull-left navbar-link footer-nav">
          <li><a href="index.html"><fmt:message key="Home_Foot"/></a> <a href="about-us.html"><fmt:message key="About_Foot"/></a> <a href="#"><mft:messages key="Terms_Fott"/></a> <a href="contact.html"><fmt:message key="Contat_Foot"/></a> <a href="faq.html"> FAQ </a>
      </ul>
      <ul class=" pull-right navbar-link footer-nav">
        <li> &copy; 2015 Servider </li>
      </ul>
    </div>
    </body>
</html>
