<%-- 
    Document   : resultats_annonces
    Created on : 12 nov. 2015, 15:16:10
    Author     : Christelle
--%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/css/description_annonces.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script src="<c:url value="/resources/js/jquery.ui.datepicker.min.js"/>" ></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Description annonce</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${message == null}">
                <%@ include file="/WEB-INF/jsp/header.jsp" %>
            </c:when>
            <c:when test="${message != null}">
                <%@ include file="/WEB-INF/jsp/header_connected.jsp" %>
            </c:when>
        </c:choose>



        <!-- <div class="vwrPhotosBackgroundImg">
             <img class="img-thumbnail" src="resources/img/intervention-plombier.jpg"  width="304" height="236">
         </div> -->

        <div class = "row">
            <div class="col-md-3">
                <div class="present_offreur">
                    Petersen, Mario


                    <img class="img-responsive" width="150" height="150"
                         src="http://www.billboard.com/files/media/ed-sheeran-cover-04-billboard-400x600.jpg">
                    <div class="panel-body">
                        <ul class="list-unstyled text-center">
                            <li>
                                <a href="profil.htm"><button class="btn btn-primary btn-search btn-block">
                                        <i class="glyphicon glyphicon-user"></i>
                                        <strong>Voir le profil</strong>
                                    </button></a>
                            </li>
                        </ul>

                        <div class="more_infos_bar">
                            Annees d'experiences: <span class='info'>5 ans</span> <br>
                            Ville : <span class='info'>Montreal</span> <br>
                            Autres services offerts: <br>
                            - <span class='info'>Plombier</span> <br>
                            - <span class='info'>Cuisinier</span> <br> 
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <br>
                <br>
                <br>
                <div class="titre_annonce">Mecanicien a domicile</div>
                <div class="publie_le"> Publie le 25 novembre 2015</div>
                <div class="descr_annonce">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce laoreet, lacus 
                    vitae fringilla semper, enim ante mattis mauris, quis consequat felis risus at nibh.
                    Nunc sed tempus odio. Nulla turpis justo, scelerisque ut mauris ut, tempor commodo dui. 
                    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                    Aliquam id tellus metus. Nunc efficitur quam ac quam tempor, et ultrices diam faucibus.
                    Donec efficitur quis sapien in luctus. Cras viverra massa ac ornare faucibus. Nulla sagittis
                    vel eros in ultrices. Vestibulum sollicitudin mi dictum lectus sollicitudin imperdiet. 
                    Praesent faucibus dui eget euismod lobortis. Sed sodales tristique elit, nec molestie
                    sapien pretium vel. Suspendisse aliquet ac arcu vitae elementum. Vestibulum ante ipsum
                    primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla ligula purus,
                    interdum et bibendum finibus, consectetur in ligula. Phasellus at ipsum pellentesque,
                    scelerisque velit eu, faucibus neque.
                </div>
                <hr>
                <div id="dernier-commentaire">
                    <div class="voir_autres_annonces"><a href="#">Voir autres annonces similaires</a></div>

                </div>
            </div>
            <br>
            <br>
            <div class="col-md-3">
                <div class="titre_annonce">Disponibilites</div>

                <br>
                <br>
                <div id="calendar"></div>

                <br>

                <button class="btn btn-primary btn-search btn-block">
                    <i class="glyphicon glyphicon-pencil"></i>
                    <strong>Contacter</strong>
                </button>
                <button class="btn btn-primary btn-search btn-block">
                    <i class="glyphicon glyphicon-bullhorn"></i>
                    <strong>Signaler</strong>
                </button>
            </div>
        </div>

        <script>
            $('#calendar').datepicker({
                inline: true,
                firstDay: 1,
                showOtherMonths: true,
                dayNamesMin: ['Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam', 'Dim']
            });
        </script>



    </body>
</html>
