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
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <script src="<c:url value="/resources/js/dropdown_utilisateur.js"/>" ></script>
        <script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>" ></script>
        <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>" ></script>
        <title>Welcome to Servider</title>
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
                            <li><a href="?language=<fmt:message key="browserLanguageCode"/>" onclick="languageSwitch(${language})"> <u><fmt:message key="linkChangerLangue"/></u></a></li>
                            <li><a href="contact.htm"><u><fmt:message key="contactUs"/></u></a></li>
                            <li> <a href="listeAnnonces.htm"><u><fmt:message key="Header_Annonces"/></u></a> </li>
                            <li><a href="messages_utilisateur.htm"><i class="fa fa-envelope-o"></i></a></li>



                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><div class="icon-user-3" id="show_login"></div></a>
                                <ul class="dropdown-menu">
                                    <li><a href="profil.htm"><fmt:message key="DropDown_Profil"/></a></li>
                                    <li><a href="annonces_utilisateur.htm"><fmt:message key="Dropdown_Annonces"/></a></li>
                                    <li><a href="messages_utilisateur.htm"><fmt:message key="Dropdown_message"/></a></li>
                                    <li><a href="#"><fmt:message key="Dropdown_settings"/></a></li>
                                        <li class="divider"></li>
                                        <li><a href="deconnection.htm"><fmt:message key="Dropdown_deconnection"/></a></li>
                                    </ul>
                                </li>
                                <li id="connected"><div id="nom_connecte"><fmt:message key="Header_Welcome"/> <c:out value="${user.getPrenom()}"></c:out></div></li>
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
