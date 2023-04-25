<%--
  Created by IntelliJ IDEA.
  User: dinmukhambetturysbay
  Date: 26.04.2023
  Time: 04:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>auth page</title>
    <%@include file="config.jsp"%>
</head>
<body>
<%@include file="storeNavbar.jsp"%>
    <div class="container">
        <div class="mx-auto mt-3">
            <form action="/get-user" method="post">
                <%
                    if(request.getAttribute("message") != null){
                        System.out.println(request.getAttribute("message"));
                %>
                     <div class="text-bg-danger p-3"><%=request.getAttribute("message")%></div>
                <%
                    }
                %>
                <div class="card mb-3 mx-auto w-50" >
                    <div class="card-header">Login page</div>
                    <div class="card-body">
                        <div class="form-floating pb-2">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        <button type="submit" class="mt-3 btn btn-success">Login</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</body>
</html>
