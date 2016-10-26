<%@ include file="/WEB-INF/jsp/include.jsp" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<c:set var="salary" scope="session" value="${message}"/>    
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html lang="${language}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link rel="stylesheet" type="text/css" href="assets/css/login_style.css"> -->
        <!--<script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript" src="login_effect.js"></script>

        <title>BOOTCLASIFIED - Responsive Classified Theme</title>
        <!-- Bootstrap core CSS -->
        <!--<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->

        <!-- Custom styles for this template -->
        <!--<link href="assets/css/style.css" rel="stylesheet"> -->
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/icheck/skins/_all.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.theme.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/jquery-ui.css" />" rel="stylesheet"  type="text/css" />


        <script type="text/javascript" src="<c:url value="resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery-ui.js"/>" ></script>

        <!-- styles needed for carousel slider -->
        <!-- <link href="assets/css/owl.carousel.css" rel="stylesheet"> -->
        <!-- <link href="assets/css/owl.theme.css" rel="stylesheet"> -->
        <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>

        <!-- Just for debugging purposes. -->
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <!-- include pace script for automatic web page progress bar  -->

        <script>
            paceOptions = {
                elements: true
            };
        </script>
        <script src="resources/js/pace.min.js"></script>
        <script src="resources/js/onChangeFunction.js"></script>

        <script>
            $(function () {
                var availableTags = [
                    "Plombier",
                    "Electricien",
                    "Coiffeur",
                    "Cuisinier",
                    "Programmeur",
                    "Aide-menagere"
                ];
                $("#services_autocomplete").autocomplete({
                    source: availableTags,
                    autoFocus: true
                });
            });
            
            $('li .ui-menu-item').on('click', function () {
                alert("Click");
            });
        </script>
    </head>
    <body>

        <div id="wrapper">

            <c:choose>
                <c:when test="${user.getNom() == null}">
                    <%@ include file="/WEB-INF/jsp/header.jsp" %>
                </c:when>
                <c:when test="${user.getNom() != null}">
                    <%@ include file="/WEB-INF/jsp/header_connected.jsp" %>
                </c:when>
            </c:choose>

            <!-- /.header -->

            <div class="intro">
                <div class="dtable hw100">
                    <div class="dtable-cell hw100">
                        <div class="container text-center">
                            <h1 class="intro-title animated fadeInDown"><fmt:message key="titreTrouverServices"/></h1>
                            <p class="sub animateme fittext3 animated fadeIn"><fmt:message key="sousTitreTrouverServices"/></p>          
                            <div class="row search-row animated fadeInUp">
                                <div
                                    class="col-lg-4 col-sm-4">
                                    <a href="ajout_annonce.htm"><button class="btn btn-primary btn-search btn-block"><strong><fmt:message key="boutonRecherche"/></strong></button></a>
                                </div>

                                <div class="col-lg-4 col-sm-4 search-col relative"> 

                                    <input type="text" placeholder="Selectionnez un service" name="ads"  class="form-control_recherche_annonce" id="services_autocomplete"/>
                                    <!--<select OnChange="goToRecherche()" class="form-control_recherche_annonce" id="rechercheDropDown">
                                    </select> -->
                                </div>


                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- Fin intro !-->
            <div class="footer" id="footer">
                <%@ include file="/WEB-INF/jsp/footer.jsp" %>

            </div>
            <!-- /.footer --> 
        </div>

        <!-- Le javascript
        ================================================== --> 

        <!-- Placed at the end of the document so the pages load faster --> 
        <!--<script src="assets/bootstrap/js/bootstrap.min.js"></script> 
        <!-- include custom script for site  --> 
        <!--<script src="assets/js/script.js"></script>
        <!-- include jquery autocomplete plugin  -->


        <!--<script>
            $(document).ready(function () {
                 $("#services_autocomplete").autocomplete("GetServices.jsp");
            });
           
        </script> -->
    </body>
</html>
