<%-- 
    Document   : listeAnnonces
    Created on : 11 déc. 2015, 20:43:14
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
        <link href="<c:url value="/resources/css/annonces_utilisateur.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <title>Liste annonces</title>
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


        <c:choose>
            <c:when test="${allAnnonces.size() == 0}">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div id="error">Erreur 404</div>
                            <div class="pas-annonces"><fmt:message key="PasAnnonces_text"/></div>
                        </div>
                        <div class="col-md-6"><img class="img-sad" src="http://icons.iconarchive.com/icons/iconka/meow/256/cat-eyes-icon.png"></div>
                    </div>
                </div>
            </c:when>
            <c:when test="${allAnnonces.size() > 0}">
                <div class="col-md-3">
                </div>
                <div class="col-md-9" id="titre-annonces">

                    <fmt:message key="annonces"/> <span id="titre_annonce_servider">Servider</span>

                    <c:forEach items="${allAnnonces}" var="item">
                        <div class="annonce_desc">

                            <div id="titre">${item.titre} <span id="publie-le"><fmt:message key="Publie_Annonce"/> ${item.date}</span></div>
                            <hr>
                            <div class="description">
                                ${item.description} 
                                <br>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
        </c:choose>
        <script src="<c:url value="/resources/js/jquery/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/login_form.js" />"></script>
    </body>
</html>
