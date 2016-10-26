<%-- 
    Document   : singup
    Created on : 8 oct. 2015, 10:20:23
    Author     : Melissa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="Properties.message" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <title>Sign up to Servider</title>


        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet"  type="text/css" />
        <link href="<c:url value="/resources/css/owl.theme.css" />" rel="stylesheet"  type="text/css" />

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
        <script src="assets/js/pace.min.js"></script>
        <script src="<c:url value="/resources/js/autocomplete.js"/>" ></script>
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

            <div class="main-container">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 page-content">
                            <div class="inner-box category-content">
                                <h2 class="title-2"> <i class="icon-user-add"></i> Create your account, Its free </h2>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <form name="register" class="form-horizontal" action="signupBtn" >
                                            <!--<fieldset>
                                            <!-- First Name  input-->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpFirstName"/><sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_First_Name" placeholder="<fmt:message key="signUpFirstName"/>" class="form-control input-md" required="" type="text">
                                                </div>
                                            </div>

                                            <!-- Last Name input-->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpLastName"/> <sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_Last_Name" placeholder="<fmt:message key="signUpLastName"/>" class="form-control input-md" type="text">
                                                </div>
                                            </div>

                                            <!-- Username  input-->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpUserName"/><sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_User_Name" placeholder="<fmt:message key="signUpUserName"/>" class="form-control input-md" required="" type="text">
                                                </div>
                                            </div>

                                            <!-- Email input-->
                                            <div class="form-group required">
                                                <label for="inputEmail" class="col-md-4 control-label" ><fmt:message key="signUpEmail"/> <sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_Email" id="inputEmail" placeholder="<fmt:message key="signUpEmail"/>" class="form-control input-md" type="email" >
                                                </div>
                                            </div>

                                            <!-- Password input-->
                                            <div class="form-group required">
                                                <label for="inputPassword" class="col-md-4 control-label" ><fmt:message key="signUpPassword"/> <sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_Password" placeholder="<fmt:message key="signUpPassword"/>" class="form-control input-md" type="password" id="signUpInputPassword">
                                                    <p class="help-block">At least 8 characters </p>
                                                </div>
                                            </div>

                                            <!-- Confirm Password input-->
                                            <div class="form-group required">
                                                <label for="inputPassword" class="col-md-4 control-label" ><fmt:message key="signIpConfirmPassword"/> <sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_Confirm_Password" placeholder="<fmt:message key="signIpConfirmPassword"/>" class="form-control input-md" type="password" id="signUpInputPassword">
                                                </div>
                                            </div>

                                            <!-- Sexe input -->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpSex"/></label>
                                                <div class="col-md-6">
                                                    <div class="radio">
                                                        <label for="Gender-0">
                                                            <input name="Gender" id="Gender-0" value="0" checked="checked" type="radio">
                                                            <fmt:message key="signUpMale"/> </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="Gender-1">
                                                            <input name="Gender" id="Gender-1" value="1" type="radio">
                                                            <fmt:message key="signUpFemale"/> </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Birthday Input -->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label"><fmt:message key="signUpBirthdate"/><sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="dateBirth" placeholder="<fmt:message key="signUpBirthdate"/>" class="form-control input-md" required="" type="date">
                                                </div>
                                            </div>


                                            <!-- customer type Input -->
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpCustomerType"/></label>
                                                <div class="col-md-6">
                                                    <div class="radio">
                                                        <label for="customer-0">
                                                            <input name="profileType" id="customer-0" value="0"  type="radio">
                                                            <fmt:message key="signUpPersonal"/> </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="customer-1">
                                                            <input name="profileType" id="customer-1" value="1" type="radio">
                                                            <fmt:message key="signUpBusiness"/> </label>
                                                    </div>
                                                </div>
                                            </div>



                                            <!-- phone  input-->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpPhoneNumber"/><sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input  name="txtBox_Phone_number" placeholder="<fmt:message key="signUpPhoneNumber"/>" class="form-control input-md" required="" type="text">
                                                </div>
                                            </div>

                                            <!-- address  input-->
                                            <div class="form-group required">
                                                <label class="col-md-4 control-label" ><fmt:message key="signUpAddress"/><sup>*</sup></label>
                                                <div class="col-md-6">
                                                    <input id="autocomplete"  name="txtBox_Adress" placeholder="<fmt:message key="signUpAddress"/>"  class="form-control" required="" type="text">
                                                </div>
                                            </div>

                                            <!-- services  input-->
                                            <div class="form-group required">
                                                <label  class="col-md-4 control-label"></label>
                                                <div class="col-md-8">
                                                    <div class="termbox mb10">
                                                        <label class="checkbox-inline" for="checkboxes-1">
                                                            <input type="checkbox" name="cb_services" id="cbServices" value="1" onclick="dynInput(this);">
                                                            <fmt:message key="signUpOfferServices"/></label>
                                                    </div>
                                                </div>

                                                <p id="insertinputs"></p>
                                            </div>


                                            <!-- agrements  input-->
                                            <div class="form-group">
                                                <label  class="col-md-4 control-label"></label>
                                                <div class="col-md-8">
                                                    <div class="termbox mb10">
                                                        <label class="checkbox-inline" for="checkboxes-1">
                                                            <input name="checkboxes" id="checkboxes-1" value="1" type="checkbox">
                                                            I have read and agree to the <a href="terms-conditions.html">Terms & Conditions</a> </label>
                                                    </div>
                                                    <div style="clear:both"></div>
                                                    <a class="btn btn-primary" type="submit" name= "signupBtn" id="signupBtn">Register</a> </div>
                                            </div>

                                            <!--</fieldset>-->
                                        </form>
                                    </div>
                                </div>
                            </div>                
                        </div>
                        <!-- /.page-content -->
                    </div>
                    <!-- /.row --> 
                </div>

                <!-- /.container --> 
            </div>
            <!-- /.main-container -->

            <div class="footer" id="footer">
                <div class="container">
                    <ul class=" pull-left navbar-link footer-nav">
                        <li><a href="index.html"> Home </a> <a href="about-us.html"> About us </a> <a href="#"> Terms and Conditions </a> <a href="#"> Privacy Policy </a> <a href="contact.html"> Contact us </a> <a href="faq.html"> FAQ </a>
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

        <!-- Placed at the end of the document so the pages load faster 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script><script src="assets/bootstrap/js/bootstrap.min.js"></script> 

        <!-- include carousel slider plugin  
        <script src="assets/js/owl.carousel.min.js"></script> 

        <!-- include jquery.fs plugin for custom scroller and selecter 
        <script src="assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
        <script src="assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
        <!-- include custom script for site  
        <script src="assets/js/script.js"></script>--> 
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAxzWICpTkS4PQbfPxpidh9oSv86yYb8T4&signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>


        <script>
            function dynInput(cbox) {
                if (cbox.checked) {
                    var input = document.createElement("input");
                    input.type = "text";
                    input.className = "form-control input-md";

                    var text = document.createTextNode("Service");
                    var label = document.createElement("LABEL");
                    label.appendChild(text);
                    label.className = "col-md-4 control-label";

                    var mainDiv = document.createElement("div");
                    mainDiv.id = "serviceinputs";
                    mainDiv.className = "from-group required";
                    mainDiv.appendChild(label);

                    var innerDiv = document.createElement("div");
                    innerDiv.id = "innerdiv";
                    innerDiv.className = "col-md-6";
                    innerDiv.appendChild(input);

                    mainDiv.appendChild(innerDiv);
                    document.getElementById("insertinputs").appendChild(mainDiv);
                } else {
                    document.getElementById("serviceinputs").remove();
                }
            }</script>
    </body>
</html>

