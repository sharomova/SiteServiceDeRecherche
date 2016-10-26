<%-- 
    Document   : contact
    Created on : 7 oct. 2015, 01:03:10
    Author     : Melissa
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
        <title>Contact</title>

        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.theme.css" />" rel="stylesheet"  type="text/css" />
    </head>
    <body>
         <jsp:include page="header.jsp" />

        <div class="coordonnees">
            <div class="contact_title"><fmt:message key="Coordone_Contact"/></div>
            <hr class="medium">
            <p align="center" class="fa-marker"><i class="fa fa-map-marker fa-4x"></i></p>
            <div class="coordonnees_info">
                <p><fmt:message key="Adress_Contact"/></p>
                <p> H4N 1L4</p>
            </div>
        </div>
        
                <div class="contact_title"><fmt:message key="Contact_Contact"/></div>
        <hr class="medium">
        <div class="contact_body">
            <div class="row">
               <div class="col-md-offset-3 col-md-6">
                    <div class="contact_form">
                        <form action="#">

                            <div>
                                <div>
                                    <p class="contact_nom"><input id="Field1" name="Field1" placeholder="Nom complet" type="text" class="field text fn" value="" size="70" tabindex="1"></p>
                                </div>
                            </div>
                            <br>
                            <div>

                                <div>
                                    <p class="contact_email"><input id="Field3" name="Field3" type="email" placeholder="Email" spellcheck="false" size="70" value="" maxlength="255" tabindex="3"></p>
                                </div>
                            </div>
                            <br>
                            <div>
                                <div>
                                    <textarea id="Field4" name="Field4" spellcheck="true" placeholder="Tapez votre message ici..." rows="7" cols="70" tabindex="4"></textarea>
                                </div>
                            </div>
                            <br>
                            <div>

                            </div>
                            <div>
                                <div>
                                    <button type="submit" class="btn btn-success">
                                        <i class="fa fa-paper-plane-o fa-4x"></i>
                                    </button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>



        </div>
        <br>
        
        <div class="footer" id="footer">
            <jsp:include page="footer.jsp"/>
    
  </div>
  <!-- /.footer --> 
    </body>
</html>
