<%-- 
    Document   : profil
    Created on : 23 oct. 2015, 14:30:33
    Author     : Olga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/popupprofile.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/styleprofile.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />

        <script src="<c:url value="/resources/js/jquery/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/login_form.js" />"></script>
        <script src="<c:url value="/resources/js/pace.min.js" />"></script>
        <script>
            paceOptions = {
                elements: true
            };
        </script>
        <title>Welcome <c:out value="${user.getNom()}"></c:out></title>
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

        <!-- /.header -->
        <div class="main-container">
            <div class="container">
                <div class="row">

                    <!--/.page-sidebar-->

                    <div class="col-sm-12 page-content">
                        <div class="inner-box">
                            <div class="row">
                                <div class="col-md-5 col-xs-4 col-xxs-12">
                                    <p></p>
                                    <p></p>
                                    <a href="#accordion"><fmt:message key="modifierProfil"/></a>
                                    <h2 class="no-padding text-center-480 useradmin"><a href=""><img class="userImg" src="images/user.jpg" alt="user"> 
                                            <c:out value="${user.getNom()}"></c:out> </a> </h2>
                                        <p></p>
                                        <p></p>
                                        <a href="#win2" class="btn btn-primary btn-block"role="button"><fmt:message key="envoyerMessage"/></a>
                                    <!-- popup №1 -->
                                    <a href="#x" class="overlay" id="win2"></a>
                                    <div class="popup">
                                        <label for="ameliorer">
                                            <fmt:message key="ecrivezMessage"/>
                                        </label>   
                                        <textarea name="ameliorer" id="message" rows="5" cols="84">                                               
                                        </textarea>  
                                        <a class="close" title="Close" href="#close"></a>
                                    </div>
                                    <p></p>
                                    <p></p>
                                    <h3>Langues  :</h3>
                                    <p>                                      
                                        <!--français, anglais-->
                                        <c:set var="langue" value="${user.getLangue()}"/>
                                        <c:choose>
                                            <c:when test="${langue == 1}">
                                                Français
                                            </c:when>
                                            <c:when test="${langue == 2}">
                                                Anglais
                                            </c:when>
                                        </c:choose>
                                    </p>
                                    <br>
                                    <form method="post" action="traitement.php">
                                        <label class="checkbox-inline"><input type="checkbox" id="verifie" value=""><fmt:message key="verifie"/></label>
                                    </form>
                                    <br/> 
                                    <br>
                                    <form method="post" action="traitement.php">
                                        Montreal, CA 
                                    </form>	   
                                    <br/> 
                                    <br>
                                    <form method="post" action="traitement.php">
                                        <p>
                                            <label for="ameliorer">
                                                <fmt:message key="APropos"/>
                                            </label>   
                                            <textarea name="ameliorer" id="ameliorer" rows="5" cols="150"> 
                                              J'aime payé des gens pour faire des choses    
                                            </textarea>       
                                        </p>
                                    </form>
                                    <br/> 
                                    <div class="dropup">
                                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><fmt:message key="Commentaire"/>
                                            <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"><fmt:message key="Commentaire_prive"/></a></li>
                                            <li><a href="#"><fmt:message key="Commentaire_public"/></a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="col-md-7 col-xs-8 col-xxs-12">
                                    <div class="header-data text-center-xs"> 
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="page-sub-header2 clearfix no-padding"><fmt:message key="EvaluationClient"/></h3>                 
                                            </div>
                                            <div class="panel-collapse collapse in" id="collapseB">
                                                <div class="panel-body">

                                                    <form class="form-horizontal" role="form">

                                                        <div class="form-group">
                                                            <label  class="col-sm-3 control-label"><fmt:message key="transaction"/></label>
                                                            <div class="col-sm-9">

                                                                <div class='movie_choice'>
                                                                    <div class="stars">
                                                                        <label class="star star-5" for="star-5"></label>                                                                              
                                                                        <label class="star star-4" for="star-4"></label>                                                                             
                                                                        <label class="star star-3" for="star-3"></label>                                                                            
                                                                        <label class="star star-2" for="star-2"></label>                                                                            
                                                                        <label class="star star-1" for="star-1"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label  class="col-sm-3 control-label"><fmt:message key="relation"/></label>
                                                            <div class="col-sm-9">
                                                                <div class='movie_choice'>
                                                                    <div class="stars">
                                                                        <label class="star star-5" for="star-5"></label>                                                                              
                                                                        <label class="star star-4" for="star-4"></label>                                                                             
                                                                        <label class="star star-3" for="star-3"></label>                                                                            
                                                                        <label class="star star-2" for="star-2"></label>                                                                            
                                                                        <label class="star star-1" for="star-1"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label  class="col-sm-3 control-label"><fmt:message key="ponctualite"/></label>
                                                            <div class="col-sm-9">
                                                                <div class='movie_choice'>
                                                                    <div class="stars">
                                                                        <label class="star star-5" for="star-5"></label>                                                                              
                                                                        <label class="star star-4" for="star-4"></label>                                                                             
                                                                        <label class="star star-3" for="star-3"></label>                                                                            
                                                                        <label class="star star-2" for="star-2"></label>                                                                            
                                                                        <label class="star star-1" for="star-1"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group" >
                                                    <div class="col-sm-11" align="left">
                                                        <p></p>
                                                        <img src="images/like.jpg" alt="20" style="width:70px;height:70px;">
                                                        <label>20</label>
                                                        <img src="images/dislike.jpg" alt="5" style="width:70px;height:70px;">
                                                        <label>5</label>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <ul> 
                    <li><h3>Client</h3>
                        <h4 class="no-padding text-center-480 useradmin"><a href=""><img class="userImg" src="images/user.jpg" alt="user"> 
                                Jean Smit</a> </h4>
                        La transaction c'est bien déroullée, laisse beaucoup de tips. 
                        <div class='movie_choice'>
                            <div class="stars">
                                <label class="star star-5" for="star-5"></label>                                                                              
                                <label class="star star-4" for="star-4"></label>                                                                             
                                <label class="star star-3" for="star-3"></label>                                                                            
                                <label class="star star-2" for="star-2"></label>                                                                            
                                <label class="star star-1" for="star-1"></label>
                            </div>
                        </div>
                        03/12/2015 
                    </li>
                </ul>





                <div class="inner-box">
                    <div class="welcome-msg">
                        <p> </p>
                        <p> </p>
                        <div id="accordion" class="panel-group">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1"  data-toggle="collapse"> <fmt:message key="myDetails"/> </a> </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseB1">
                                    <div class="panel-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="prenom"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  placeholder="Jhon">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="nom"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" placeholder="Doe">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="email"/></label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control"  placeholder="jhon.deo@example.com">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label" ><fmt:message key="adresse"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  placeholder="..">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="Phone" class="col-sm-3 control-label"><fmt:message key="phone"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="Phone" placeholder="880 124 9820">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="codePostal"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  placeholder="1217">
                                                </div>
                                            </div>

                                            <div class="form-group hide"> <!-- remove it if dont need this part -->
                                                <label  class="col-sm-3 control-label"><fmt:message key="facebook"/></label>
                                                <div class="col-sm-9">
                                                    <div class="form-control"> <a class="link" href="fb.com">Jhone.doe</a> <a class=""> <i class="fa fa-minus-circle"></i></a> </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9"> </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-default"><fmt:message key="update"/></button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB2"  data-toggle="collapse"> <fmt:message key="settings"/></a> </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseB2">
                                    <div class="panel-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox">
                                                            <fmt:message key="Commentaire_actif"/>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="newPassword"/></label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"  placeholder="">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="confirmPassword"/></label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"  placeholder="">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-default">Update</button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--/.row-box End--> 

                        </div>
                    </div>
                    <!--/.page-content--> 
                </div>
                <!--/.row--> 
            </div>
            <!--/.container--> 
        </div>
        <!-- /.main-container -->

        <div class="footer" id="footer">
            <div class="container">
                <ul class=" pull-left navbar-link footer-nav">
                    <li><a href="index.html"> Home </a> <a href="about-us.html"> About us </a> <a href="#"> Terms and Conditions </a> <a href="#"> Privacy Policy </a> <a href="contact.html"> Contact us </a> <a href="faq.html"> FAQ </a></li>
                </ul>
                <ul class=" pull-right navbar-link footer-nav">
                    <li> &copy; 2015 BootClassified </li>
                </ul>
            </div>

        </div>
        <!--/.footer--> 
        <!-- /.wrapper --> <!-- Le javascript
        ================================================== --> 

        <!-- Placed at the end of the document so the pages load faster --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script><script src="assets/bootstrap/js/bootstrap.min.js"></script> 

        <script src="resources/bootstrap/js/bootstrap.min.js"></script> 
        <!-- include carousel slider plugin  --> 
        <script src="resources/js/owl.carousel.min.js"></script> 

        <!-- include jquery.fs plugin for custom scroller and selecter  --> 
        <script src="resources/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
        <script src="resources/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
        <!-- include custom script for site  --> 
        <script src="resources/js/script.js"></script>
    </body>
</html>
