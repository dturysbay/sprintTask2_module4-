<%@ page import="java.util.ArrayList" %>
<%@ page import="bitlab.shop.kz.db.Items" %>
<%--<%@ page import="bitlab.TaskManagement.kz.db.Task" %>--%>
<%--Created by IntelliJ IDEA.--%>
<%--  User: dinmukhambetturysbay--%>
<%--  Date: 10.04.2023--%>
<%--  Time: 03:37--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head lang="ru">
    <title>Tasks</title>

    <%@include file="config.jsp"%>
</head>
<body>
<%@include file="storeNavbar.jsp"%>
    <div class="container">
        <div class="row mt-3">
            <div class="col-12 mx-auto">
                <h1>Welcome to BITLAB SHOP</h1>
            </div>
        </div>
<%%>
        <div class="mx-auto"
             style="display: flex; flex-wrap: wrap;width: 80%;justify-content: space-between;
                align-content: space-between; flex-direction: row;
"
        >
        <%
            ArrayList<Items> items =(ArrayList<Items>) request.getAttribute("items");
            if(items != null){
                for (Items item: items) {
        %>

            <div class="card" style="width: 18rem;margin-bottom: 20px;height: 150px">
                <div>
                    <div class="card-header">
                        <h5 class="card-title"><%=item.getName()%></h5>
                    </div>
                    <div class="card-body">
                        <p class="card-text"><%=item.getDescription()%></p>
                    </div>
                    <a href="/auth" class=" btn btn-success"
                       style="position: absolute;bottom: 20px; left: 10px"
                    >Buy Now</a>
                </div>
            </div>


        <%
                }
            }
        %>
        </div>
    </div>
</body>
</html>
