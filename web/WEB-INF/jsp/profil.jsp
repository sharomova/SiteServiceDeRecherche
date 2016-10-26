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
        <%@ include file="/WEB-INF/jsp/header_connected.jsp" %>


        <!-- /.header -->

        <div class="main-container">
            <div class="container">
                <div class="row">

                    <!--/.page-sidebar-->

                    <div class="col-sm-12 page-content">
                        <div class="inner-box">
                            <div class="row">
                                <div class="col-md-4 col-xs-4 col-xxs-12">
                                    <p></p>
                                    <p></p>
                                    <a href="#accordion"><fmt:message key="modifierProfil"/></a>
                                    <h2><c:out value="${user.getPrenom()}"></c:out> <c:out value="${user.getNom()}"></c:out> </h2>
                                        <h5 class="no-padding text-center-480 useradmin"><img class="propreImg" src="images/user.jpg" alt="user"> 
                                        </h5>
                                        <p></p>
                                        <p></p>
                                            <a href="#win2" class="btn btn-primary btn-block"role="button"><fmt:message key="envoyerMessage"/></a>
                                    <!-- popup №1 -->
                                    <a href="#x" class="overlay" id="win2"></a>
                                    <div class="popup">
                                        <label for="usr"><fmt:message key="titreMessage"/></label>
                                        <input type="text" class="form-control" id="message">
                                        <label for="ameliorer">
                                            <fmt:message key="ecrivezMessage"/>
                                        </label>   
                                        <textarea name="ameliorer" id="message" rows="5" cols="70">                                               
                                        </textarea> 
                                        <a href="#" class="btn btn-default" role="button"><fmt:message key="envoyer"/></a>
                                        <!--<a href="#" class="btn btn-default" role="button">Transaction</a>-->
                                        <a class="close" title="Close" href="#close"></a>
                                    </div>
                                    <p></p>
                                    <p></p>
                                    <h3><fmt:message key="langues"/></h3>
                                    <p>                                      
                                        <!--français, anglais-->
                                        <c:set var="id_user" value="${user.getId()}"/>
                                        <c:set var="langue" value="${user.getLangue()}"/>
                                        <c:choose>
                                            <c:when test="${langue == 1}">
                                                <fmt:message key="lnFran"/>
                                            </c:when>
                                            <c:when test="${langue == 2}">
                                                <fmt:message key="lnEnglish"/>
                                            </c:when>
                                        </c:choose>
                                    </p>
                                    <br>
                                    <label class="checkbox-inline"><input type="checkbox" id="verifie" value=""><fmt:message key="verifie"/></label>
                                    <br/> 
                                    <br>
                                    <c:out value="${user.getAddresseLine1()}"></c:out>
                                        <br>
                                    <c:out value="${user.getCodePostal()}"></c:out>
                                        <br/> 
                                        <br>
                                        <p>
                                            <label for="ameliorer">
                                            <fmt:message key="APropos"/>
                                        </label>   
                                        <textarea name="ameliorer" id="ameliorer" rows="3" cols="150"> 
                                            <c:out value="${user.getDescription()}"></c:out>    
                                            </textarea>       
                                        </p>
                                        <br/> 
                                    </div>


                                    <div class="col-md-4 col-xs-8 col-xxs-12">
                                        <div class="header-data text-center-xs"> 
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="page-sub-header2 clearfix no-padding"><fmt:message key="EvaluationOffreur"/></h3>                 
                                            </div>
                                            <div class="panel-collapse collapse in" id="collapseB">
                                                <div class="panel-body">
                                                    <form class="form-horizontal" role="form">

                                                        <div class="form-group">
                                                            <label  class="col-sm-3 control-label"><fmt:message key="fiabilite"/></label>
                                                            <div class="col-sm-9">
                                                                <div class='movie_choice'>
                                                                    <div class="stars" id="stars_content" align="right">
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
                                                                    <div class="stars" align="right">
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
                                                            <label  class="col-sm-3 control-label"><fmt:message key="qualite"/></label>
                                                            <div class="col-sm-9">
                                                                <div class='movie_choice'>
                                                                    <div class="stars" align="right">
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
                                                <div class="form-group">
                                                    <div class="col-sm-11">
                                                        <label>11</label>
                                                        <img src="images/like.jpg" alt="20" style="width:70px;height:70px;">
                                                        <label>9</label>
                                                        <img src="images/dislike.jpg" alt="5" style="width:70px;height:70px;">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-xs-8 col-xxs-12">
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
                                                <div class="form-group">
                                                    <div class="col-sm-11">
                                                        <label>20</label>
                                                        <img src="images/like.jpg" alt="20" style="width:70px;height:70px;">
                                                        <label>5</label>
                                                        <img src="images/dislike.jpg" alt="5" style="width:70px;height:70px;">
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



                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class="panel-title"><fmt:message key="annonces"/></h4>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-sm-12">

                                    <c:forEach var="item" items="${service}" varStatus="status">
                                        <h3 ><c:out value="${item.getNomServiceFr()}"/></h3>

                                        <c:forEach var="ann" items="${annonce}" varStatus="stat">

                                            <c:choose>
                                                <c:when test="${status.index == stat.index}">
                                                    <h5><c:out value="${ann.getDescription()}"/></h5>
                                                    <hr style="height: 2px; color: #000000; background-color: #000000; width: 100%; border: none;"> 
                                                </c:when>
                                            </c:choose>

                                        </c:forEach>
                                    </c:forEach>
                                    <a href="#accordion"><fmt:message key="ajouterService"/></a>
                                </div>
                            </div>
                    </div>

                    </form>
                </div>


                <div class="dropup">
                    <a href="#win3"><button type="button" class="btn btn-primary" onclick="ajoutCommentaire()"><fmt:message key="ajouterCommainter"/></button></a>
                     <!-- popup №2 -->
                                    <a href="#x" class="overlay" id="win3"></a>
                                    <div class="popup">
                                        
                                        <label for="ameliorer">
                                            <fmt:message key="ajouterCommainter"/>
                                        </label>   
                                        <textarea name="ameliorer" id="message" rows="5" cols="70">                                               
                                        </textarea> 
                                        <a href="#" class="btn btn-default" role="button"><fmt:message key="envoyer"/></a>
                                        <!--<a href="#" class="btn btn-default" role="button">Transaction</a>-->
                                        <a class="close" title="Close" href="#close"></a>
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
                    <li>
                        <hr style="height: 2px; color: #000000; background-color: #000000; width: 100%; border: none;"> 
                        <h3>Ménage</h3>

                        <h4 class="no-padding text-center-480 useradmin"><a href=""><img class="userImg" src="images/user.jpg" alt="user"> 
                                Pole Novak </a> </h4>
                        Il a bien lavé le lavabo comme prevu. 
                        <div class='movie_choice'>
                            <div class="stars">
                                <label class="star star-5" for="star-5"></label>                                                                              
                                <label class="star star-4" for="star-4"></label>                                                                             
                                <label class="star star-3" for="star-3"></label>                                                                            
                                <label class="star star-2" for="star-2"></label>                                                                            
                                <label class="star star-1" for="star-1"></label>
                            </div>
                        </div>
                        19/07/2015 
                    </li>
                    <li>
                        <hr style="height: 2px; color: #000000; background-color: #000000; width: 100%; border: none;"> 
                        <h3>Electricité</h3>
                        <h4 class="no-padding text-center-480 useradmin"><a href=""><img class="userImg" src="images/user.jpg" alt="user"> 
                                Anna Belle </a> </h4>
                        J'ai pas aimé son service. 
                        <div class='movie_choice'>
                            <div class="stars">
                                <label class="star star-5" for="star-5"></label>                                                                              
                                <label class="star star-4" for="star-4"></label>                                                                             
                                <label class="star star-3" for="star-3"></label>                                                                            
                                <label class="star star-2" for="star-2"></label>                                                                            
                                <label class="star star-1" for="star-1"></label>
                            </div>
                        </div>
                        20/04/2015 
                    </li>
                </ul>



                <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><fmt:message key="ajouterService"/>
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <c:forEach var="item" items="${toutservice}" varStatus="status">
                            
                             <li><a href="#"><c:out value="${item.getNomServiceFr()}"/></a></li>
                         

                        </c:forEach>
                    </ul>
                </div>

                <div class="inner-box">
                    <div class="welcome-msg">
                        <p> </p>
                        <p> </p>
                        <div id="accordion" class="panel-group">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1"  data-toggle="collapse"><fmt:message key="myDetails"/></a> </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseB1">
                                    <div class="panel-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="prenom"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  id ="prenom" placeholder=<c:out value="${user.getPrenom()}"></c:out>>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label"><fmt:message key="nom"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id = "nom" placeholder=<c:out value="${user.getNom()}"></c:out>>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label"><fmt:message key="email"/></label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control"  id ="email" placeholder=<c:out value="${user.getCourriel()}"></c:out>>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label" ><fmt:message key="adresse"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  id ="adress" placeholder= <c:out value="${user.getAddresseLine1()}"></c:out>>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Phone" class="col-sm-3 control-label"><fmt:message key="phone"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="phone" placeholder=<c:out value="${user.getNo_telephone()}"></c:out>>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label"><fmt:message key="codePostal"/></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"  id ="postcode" placeholder= <c:out value="${user.getCodePostal()}"></c:out>>
                                                    </div>
                                                </div>

                                                <div class="form-group hide"> <!-- remove it if dont need this part -->
                                                    <label  class="col-sm-3 control-label"><fmt:message key="facebook"/></label>
                                                <div class="col-sm-9">
                                                    <div class="form-control"> <a class="link" href="fb.com"><c:out value="${user.getNom()}"></c:out></a> <a class=""> <i class="fa fa-minus-circle"></i></a> </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-9"> </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-9">
                                                        <a href="profil.html"><button type="submit" class="btn btn-default" id = "updateProfil"><fmt:message key="update"/></button></a>                                                                               
                                                </div>
                                               
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB2"  data-toggle="collapse"><fmt:message key="settings"/></a> </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapseB2">
                                    <div class="panel-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <!-- <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox">
                                                             Comments are enabled on my ads </label>
                                                     </div>-->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="newPassword"/></label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"  id="newPas" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label  class="col-sm-3 control-label"><fmt:message key="confirmPassword"/></label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"  id="confirm" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-default" id = "updatePassworde" onclick="misajourPassworde()"><fmt:message key="update"/></button>
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
                    <li><a href="index.html"><fmt:message key="home"/></a> <a href="about-us.html"><fmt:message key="aboutUs"/></a> <a href="#"><fmt:message key="termesConditions"/></a><a href="contact.html"><fmt:message key="contactUs"/></a> 
                </ul>
                <ul class=" pull-right navbar-link footer-nav">
                    <li> &copy; 2015 BootClassified </li>
                </ul>
            </div>

        </div>
        <!--/.footer--> 
    </div>
    <!-- /.wrapper --> <!-- Le javascript
    ================================================== --> 

    <!-- Placed at the end of the document so the pages load faster --> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script><script src="assets/bootstrap/js/bootstrap.min.js"></script> 

    <script src="resources/bootstrap/js/bootstrap.min.js"></script> 
    <!-- include carousel slider plugin  --> 
    <script src="resources/js/owl.carousel.min.js"></script> 
    <script src="resources/js/profileFonction.js"></script> 

    <!-- include jquery.fs plugin for custom scroller and selecter  --> 
    <script src="resources/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
    <script src="resources/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
    <!-- include custom script for site  --> 
    <script src="resources/js/script.js"></script>
</body>
</html>
