<%-- 
    Document   : apropos
    Created on : 10 déc. 2015, 02:49:07
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
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/apropos.css" />" rel="stylesheet"  type="text/css" />

        <title>A propos</title>
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
        

            <div id="titre-apropos">L'equipe<span> Servider</span></div>

        <div class="col-md-12 apropos_image">

            <div class="personne">
                <div><img src="//stanhub.com/tutorials/meet-the-team-page/img/speaker-4-hover.png"/></div>
                <span>Developeur web</span>
                <h4>Alaa<span> Akhde</span></h4>
            </div>

            <div class="personne">
                <div><img src="http://assistovet.fr/sites_veterinaires/sites/demo-assistovet/ressources/images/upload/14202199100_f387d7d614_o.jpg"/></div>
                <span>Developeur web</span>
                <h4>Louis<span>Contant</span></h4>
            </div>

            <div class="personne">
                <div><img src="//assistovet.fr/sites_veterinaires/sites/demo-assistovet/ressources/images/upload/5337130736_f9e52ff91d_b.jpg"/></div>
                <span>Developeur web</span>
                <h4>Christelle<span>Sissoko</span></h4>
            </div>
            <div class="personne">
                <div><img src="http://assistovet.fr/sites_veterinaires/sites/demo-assistovet/ressources/images/upload/14202199100_f387d7d614_o.jpg"/></div>
                <span>Developeur web</span>
                <h4>Olga<span>Sharamova</span></h4>
            </div>

            <div class="personne">
                <div><img src="//assistovet.fr/sites_veterinaires/sites/demo-assistovet/ressources/images/upload/5337130736_f9e52ff91d_b.jpg"/></div>
                <span>Developeur web</span>
                <h4>Steve<span>Mbiele</span></h4>
            </div>
        </div>

    </body>
</html>
