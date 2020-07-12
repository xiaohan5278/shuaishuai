<%--
  Created by IntelliJ IDEA.
  User: 28016
  Date: 2020/7/11
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>注册</title>
    <style>

        body {
            width: 100%;
            height: 100%;
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            background-color: #0e1e8b;
        }

        #login {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -150px 0 0 -150px;
            width: 300px;
            height: 300px;
        }

        #login h1 {
            color: #fff;
            text-shadow: 0 0 10px;
            letter-spacing: 1px;
            text-align: center;
        }



        input {
            width: 300px;
            height: 20px;
            margin-bottom: 10px;
            outline: none;
            padding: 10px;
            font-size: 15px;
            color: #fff;
            text-shadow: 1px 1px 1px;
            border-top: 1px solid #312E3D;
            border-left: 1px solid #312E3D;
            border-right: 1px solid #312E3D;
            border-bottom: 1px solid #56536A;
            border-radius: 4px;
            background-color: #2D2D3F;
        }

        .but {
            width: 300px;
            min-height: 20px;
            display: block;
            background-color: #4a77d4;
            border: 1px solid #3762bc;
            color: #fff;
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            margin: 0;
        }
    </style>
    <script>
        var a = '${sessionScope.wrongPassword}';
        if(a=='yes'){
            alert("两次输入密码不同，请重新输入！");
        }
    </script>
</head>
<body>
<div id="login">
<h1>欢迎注册</h1>
<center>
    <form action="login.jsp" method="post">
       <input type="text" required="required" placeholder="用户名" ></input>
            <input type="password" required="required" placeholder="密码" ></input>
        <input type="password" required="required" placeholder="确认密码" ></input>

         <button class="but" type="submit">提交</button>


    </form>
</center></div>
</body>

</html>
