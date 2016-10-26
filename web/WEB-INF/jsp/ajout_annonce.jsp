<%-- 
    Document   : ajout_annonce
    Created on : 2 déc. 2015, 12:34:38
    Author     : Christelle
--%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/ajout_annonce.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter une annonce</title>
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
            <c:when test="${user == null}">
                <div id="header_non_connecte"> <a href="login_form.htm"><fmt:message key="Ajout_Annonce_Connexion"/></a><fmt:message key="AjoutAnnonce_Afin"/></div>
            </c:when>
        </c:choose>
        <div class="titre_annonce">Formulaire</div>
        <div class="col-md-3">
            <br>
            <br>
            <br>
            <br>
            <br>           
            <div id="publier"><fmt:message key="Publier_AjoutAnnonce"/><span> <fmt:message key="Annonce_AjoutAnnonce"/></span></div>
        </div>

        <div class="col-md-6">
            <div class="annonce-form">

                <form action="save_annonce.htm" method="POST" onsubmit="return(validerInfosAnnonce())" > 
                    <c:choose>
                        <c:when test="${user == null}">
                            <input name="nom" type="text" id="nom" class="feedback-input" readonly placeholder="Nom" />
                        </c:when>
                        <c:when test="${user.getPrenom() != null}">
                            <input name="nom" type="text" id="nom" class="feedback-input" readonly placeholder="<c:out value="${user.getPrenom() }" ></c:out><c:out value="${user.getNom()}"></c:out>" />
                        </c:when>
                    </c:choose>           
                    <input name="titre" type="text" id="titre" class="feedback-input" placeholder="Titre annonce" />   
                    <textarea name="description" class="feedback-input" placeholder="Description annonce"></textarea>
                    <div class="form-group">

                        <div class="radio">
                            <label for="Gender-0">
                                <input name="Gender" id="Gender-0" value="0" checked="checked" type="radio">
                                <fmt:message key="AjoutAnnonce_OffreService"/></label>
                        </div>
                        <div class="radio">
                            <label for="Gender-1">
                                <input name="Gender" id="Gender-1" value="1" type="radio">
                                <fmt:message key="AjoutAnnonce_ChercheService"/> </label>
                        </div>
                    </div>
                    <br>
                    <c:choose>
                        <c:when test="${user == null}">
                            <input id="publier_annonce_disabled" type="submit" value="Publier mon annonce"/>
                        </c:when>
                        <c:when test="${user != null}">
                            <input id="publier_annonce" type="submit" value="Publier mon annonce"/>
                        </c:when>
                    </c:choose>

                </form>
            </div>
        </div>

        <div class="col-md-3">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>


            <div id="block_choix">
                <span name="service_offert" id="choisir_service"><fmt:message key="AjoutAnnonce_choixService"/></span>
                <c:choose>
                    <c:when test="${listeServices.get(0).getIdService() == 0}">
                        <select id="service_offert">
                            <option value="Pas_de_service" selected><fmt:message key="AjoutAnnonce_AucunService"/></option>   
                        </select>
                    </c:when>
                    <c:when test="${listeServices.size() != 0}">
                        <select>
                            <c:forEach var="item" items="${listeServices}">
                                <c:choose>
                                    <c:when test="${item.getIdService() == 1}">
                                        <option><fmt:message key="Plomber_Service"/></option>
                                    </c:when>
                                    <c:when test="${item.getIdService() == 2}">
                                        <option><fmt:message key="Electricien_Service"/></option>
                                    </c:when>
                                    <c:when test="${item.getIdService() == 3}">
                                        <option><fmt:message key="Coiffeur_Service"/></option>
                                    </c:when>
                                    <c:when test="${item.getIdService() == 4}">
                                        <option><fmt:message key="Cuisinier_Service"/></option>
                                    </c:when>
                                    <c:when test="${item.getIdService() == 5}">
                                        <option><fmt:message key="Programmeur_Service"/></option>
                                    </c:when>
                                    <c:when test="${item.getIdService() == 6}">
                                        <option><fmt:message key="AideMenager_Service"/></option>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                        </select>
                    </c:when>
                </c:choose>

                <div id="ajouter_service_message"><fmt:message key="AjoutAnnonce_serviceMessage"/></div>
            </div>
        </div>

        <!-------------- SCRIPTS ----------->

        <script src="<c:url value="/resources/js/jquery/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/login_form.js" />"></script>
    </body>
</html>
