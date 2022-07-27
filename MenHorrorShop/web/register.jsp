<%-- 
    Document   : register
    Created on : Mar 10, 2022, 10:16:13 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="include/css/login.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="d-flex">
                                    <a href="#" class="active" id="register-form-link">Register</a>
                                </div>
                            </div>
                            <hr>
                        </div>
                       
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">                                  
                                    <h3 class="text-center text-danger">${mess3}</h3>
                                    <form id="register-form" action="Register" method="post" role="form">
                                        <div class="form-group">
                                            <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                        </div>                                      
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="repassword" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <a name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" href="LoginPage">Login</a>
                                                </div>
                                            </div>
                                        </div> 
                                        <h3 class="text-center text-danger">${mess1}</h3>
                                        <h3 class="text-center text-danger">${mess2}</h3>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="include/js/login.js"></script>
    </body>
</html>
