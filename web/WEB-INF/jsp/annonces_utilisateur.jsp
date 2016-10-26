<%-- 
    Document   : annonces_utilisateur
    Created on : 3 déc. 2015, 23:16:44
    Author     : Christelle
--%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="MesAnnonces_Annonces"/></title>
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/annonces_utilisateur.css" />" rel="stylesheet"  type="text/css" />
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
            <c:when test="${listeAnnonce.size() == 0}">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div id="error">Erreur 404</div>
                            <div class="pas-annonces"><fmt:message key="PasAnnonces_Text"/></div>
                        </div>
                        <div class="col-md-6"><img class="img-sad" src="http://icons.iconarchive.com/icons/iconka/meow/256/cat-eyes-icon.png" /></div>
                    </div>
                </div>
            </c:when>
            <c:when test="${listeAnnonce.size() > 0}">
                <div class="col-md-3">
                    <c:forEach items="${listeAnnonce}" var="item">
                        <c:set var="p" value="1" />
                        <c:set var="p" value="${p+1}"/>
                    </c:forEach>
                </div>
                <div class="col-md-9" id="titre-annonces">

                    <fmt:message key="NbrAnnoncesPre_Annonce"/> <span id="nombre_annonces">${listeAnnonce.size()} </span><fmt:message key="NbrAnnoncesPost_Annonce"/>

                    <c:forEach items="${listeAnnonce}" var="item">
                        <div class="annonce_desc">
                            <br>
                            <div id="titre">${item.titre} 
                                <span id="publie-le"><fmt:message key="Publie_Annonce"/>${item.date}</span>
                                <span class="supprimer_annonce">
                                    <a href="#"><fmt:message key="Supprimer_Annonce"/></a>
                                </span>
                            </div>
                            <hr>
                            <div class="description">
                                ${item.description} <br>
                            </div>
                        </div>


                    </c:forEach>

                </div>
            </c:when>
        </c:choose>


    </body>
</html>
