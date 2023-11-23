<%--
    Document   : index
    Created on : 5 de set. de 2023, 21:24:30
    Author     : igor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Start Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        body {
            background-color: #3498db; /* Blue background color */
        }
    </style>
</head>
<body class="body">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form class="form-box p-4" method="POST" action="Controller">
                    <h1 class="mb-4 text-center">Login</h1>
                    <div class="mb-3">
                        <input type="text" class="form-control" placeholder="Usuário" name="userName">
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" placeholder="Senha" name="userPass">
                    </div>
                    <input type="hidden" name="operacao" value="login">
                    <button type="submit" class="btn btn-primary btn-block">Logar</button>
                </form>
                <%
                    String resp = (String) request.getSession().getAttribute("msg");
                    if (resp != null) {
                %>
                <div class="alert alert-danger mt-3 text-center">
                    <%= request.getSession().getAttribute("msg") %>
                </div>
                <% } %>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
