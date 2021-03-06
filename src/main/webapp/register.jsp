<!DOCTYPE html>
<html lang="en">

<head>
    <%@page session="true" %>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Obaju : e-commerce template
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">
    <script src="js/jquery-1.11.0.min.js"></script>

    <script src="js/respond.min.js"></script>
    <!--Ajax Script-->
    <script src="js/myJs/loginScript.js"></script>
    <script src="js/myJs/registerScript.js"></script>


    <link rel="shortcut icon" href="favicon.png">



</head>

<body>

<jsp:include page="/head.jsp"/>

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>New account</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form id="registerForm" onsubmit="return registerHandler()">
                            <div class="form-group">
                                <label for="reg-name">Name</label>
                                <input type="text" class="form-control" id="reg-name" required>
                            </div>
                            <div class="form-group">
                                <label for="reg-email">Email</label>
                                <input type="email" class="form-control" id="reg-email" required>
                            </div>
                            <div class="form-group">
                                <label for="reg-password">Password</label>
                                <input type="password" class="form-control" id="reg-password" required maxlength="10">
                            </div>
                            <div class="form-group">
                                <label for="reg-birthdate">Birth Date</label>
                                <input type="date" class="form-control" id="reg-birthdate" required>
                            </div>
                            <div class="form-group">
                                <label for="reg-address">Address</label>
                                <input type="text" class="form-control" id="reg-address" required>
                            </div>
                            <div class="form-group">
                                <label for="reg-job">Job</label>
                                <input type="text" class="form-control" id="reg-job" required>
                            </div>
                            <div class="form-group">
                                <label for="reg-limit">Credit Limit</label>
                                <input type="number" class="form-control" id="reg-limit" required max="6">
                            </div>
                            <div class="text-center">
                                <p style="color: red" id="registerErrorLabel"></p>
                                <button type="submit" class="btn btn-primary" id="registerBtn" ><i class="fa fa-user-md"></i> Register</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Login</h1>

                        <p class="lead">Already our customer?</p>
                        <p class="text-muted">Please Login</p>

                        <hr>

                        <form onsubmit="return loginHandlerRegisterPage()" method="post">
                            <div class="form-group">
                                <label for="email-modal-register">Email</label>
                                <input type="email" class="form-control" id="email-modal-register" required>
                            </div>
                            <div class="form-group">
                                <label for="password-modal-register">Password</label>
                                <input type="password" class="form-control" id="password-modal-register" required max="10">
                            </div>
                            <div class="text-center">
                                <p style="color: red" id="errorMsg-register"></p>
                                <button type="submit" class="btn btn-primary" id="loginBtn-register"><i class="fa fa-sign-in"></i> Log in</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
 _________________________________________________________ -->
        <jsp:include page="footer.jsp"/>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© 2015 Your name goes here.</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right">Template by <a href="https://bootstrapious.com/e-commerce-templates">Bootstrapious</a> & <a href="https://fity.cz">Fity</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <%--<script src="js/jquery-1.11.0.min.js"></script>--%>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>



</body>

</html>
