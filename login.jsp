<%-- 
    Document   : login
    Created on : May 22, 2023, 8:20:36 PM
    Author     : Khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body {
            background: graytext;
            background-size: cover;
            font-family: Montserrat;
            margin-top: 50px;
        }

        .logo {
            width: 213px;
            height: 36px;
            background: url('http://i.imgur.com/fd8Lcso.png') no-repeat;
            margin: 30px auto;
        }

        .login-block {
            width: 320px;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            border-top: 5px solid #ff656c;
            margin: 0 auto;
        }

        .login-block h1 {
            text-align: center;
            color: #000;
            font-size: 18px;
            text-transform: uppercase;
            margin-top: 0;
            margin-bottom: 20px;
        }

        .login-block input {
            width: 100%;
            height: 42px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            font-size: 14px;
            font-family: Montserrat;
            padding: 0 20px 0 50px;
            outline: none;
        }

        .login-block input#username {
            background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
            background-size: 16px 80px;
        }

        .login-block input#username:focus {
            background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
            background-size: 16px 80px;
        }

        .login-block input#password {
            background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
            background-size: 16px 80px;
        }

        .login-block input#password:focus {
            background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
            background-size: 16px 80px;
        }

        .login-block input:active, .login-block input:focus {
            border: 1px solid #ff656c;
        }

        .login-block input.button {
            width: 100%;
            height: 40px;
            background: red;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #e15960;
            color: #fff;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            font-family: Montserrat;
            outline: none;
            cursor: pointer;
            text-align: center;
        }

        
        .button{
  text-align: center;
  cursor: pointer;
  font-size:15px;
  margin: 10px 10px 10px 80px;
}
        .button {
    position: relative;
    background-color: red;
    border: none;
    padding: 10px;
    width: 150px;
    text-align: center;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
}

.button:hover{
   background:#fff;
   box-shadow:0px 2px 10px 5px #97B1BF;
   color:#000;
}

.button:after {
    content: "";
    background: #f1c40f;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    margin-left: -20px !important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
}

.button:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
}
        </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form class="login-block" action="LoginController" method="post">
            <h1>Login</h1>
            <div class="form">
                <input type="text" class="form-control" name="username" id="username" placeholder="Username" required />
            </div>
            <div class="form">
                <div class="password-input">
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" required />
                </div>
                <p style="color: red;">${requestScope.MESSAGE}</p>
            </div>

            <div>
                <button class="button" type="submit" class="btn">Login</button>
            </div>
            <div>
                <button class="button" type="reset">Reset</button>
            </div>
        </form>
    </body>
</html>
