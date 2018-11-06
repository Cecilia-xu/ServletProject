<%-- 
    Document   : index
    Created on : 2018-11-4, 16:49:14
    Author     : 64167
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <!-- Log in -->
                <div class="content1">
                <h2>Log in</h2>
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="inputEmail" class="control-label">Email</label>
                            <div class="col">
                                <input type="input" class="form-control" id="inputEmail" name="email">
                            </div>
                        </div>
                    <div class="form-group">
                        <label for="inputPassword" class="control-label">Password</label>
                        <div class="col">
                            <input type="password" class="form-control" id="inputPassword" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col">
                            <br>
                            <button type="submit" value="submit">Log in</button>
                        </div>
                    </div>
                </form>
                </div>
                <!-- Sign up -->
                <div class="content2">
                <h2>Registeration</h2>
                <form action="RegisterServlet" method="post">
                        <div class="form-group">
                            <label for="inputEmail" class="control-label">Email</label>
                            <div class="col">
                                <input type="input" class="form-control" id="inputEmail" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label">Password</label>
                            <div class="col">
                                <input type="password" class="form-control" id="inputPassword" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputUsername" class="control-label">User name</label>
                            <div class="col">
                                <input type="input" class="form-control" id="inputEmail" name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputGender" class="control-label">Gender</label>
                            <div class="col">
                                <input type="radio" name="gender" value="Male">Male
                                <input type="radio" name="gender" value="Female">Female
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col">
                                <br>
                                <button type="submit" value="Submit" >Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
