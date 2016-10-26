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
        <div class="header">
            <nav class="navbar   navbar-site navbar-default" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a href="index.htm" class="navbar-brand logo logo-title"> 
                            <!-- Original Logo will be placed here  --> 
                            <span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span> <span>Servider </span> </a> </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="?language=<fmt:message key="browserLanguageCode"/>"> <u><fmt:message key="linkChangerLangue"/></u></i></a></li>
                            <li> <a href="listeAnnonces.htm"><u>Toutes les annonces</u></a> </li>
                            <li><a href="contact.htm"><u><fmt:message key="contactUs"/></u></a></li>
                            <li><a href="login_form.htm"><div class="icon-user" id="show_login"></div></a></i></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse --> 
                </div>
                <!-- /.container-fluid --> 
            </nav>
        </div>
        <!-- /.header -->
    </body>
</html>
