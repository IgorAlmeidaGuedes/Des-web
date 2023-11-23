<%-- 
    Document   : menu
    Created on : 3 de out. de 2023, 21:34:01
    Author     : igor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background: rgb(237, 237, 237);
            background: radial-gradient(circle, rgba(237, 237, 237, 1) 0%, rgba(104, 104, 104, 1) 17%, rgba(0, 0, 0, 1) 100%);
        }

        h1 {
            text-shadow: 1px 1px 1px black;
        }

        .container {
            height: 96vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .form-box {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        button {
            font-size: 2rem;
            cursor: pointer;
            padding: 0.4rem 1rem;
            margin: 1rem;
        }

        button:hover {
            background: #3498db;
            color: #fff;
        }

        button::after {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            transform: scale(0, 0) rotate(-180deg);
        }

        button:hover::after {
            transform: scale(1, 1) rotate(0deg);
        }

        button::after {
            content: "";
            background: #ecf0f1;
            position: absolute;
            z-index: -1;
            padding: 0.85rem 1.5rem;
            display: block;
        }

        button::after {
            transition: all 0.3s ease;
        }

        button:hover::after {
            transition: all 0.3s ease-out;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Menu</h1>
    <form class="form-box" method="POST" action="Controller">
        <input type="hidden" name="operacao" value="welcome"/>
        <button type="submit" class="btn btn-primary">Seja Welcome</button>
    </form>

    <form class="form-box" method="POST" action="Controller">
        <input type="hidden" name="operacao" value="erro_java"/>
        <button type="submit" class="btn btn-primary">Erro Java</button>
    </form>

    <form class="form-box" method="POST" action="erro.jsp">
        <button type="submit" class="btn btn-primary">Erro HTML</button>
    </form>

    <form class="form-box" method="POST" action="Controller">
        <input type="hidden" name="operacao" value="sair"/>
        <button type="submit" class="btn btn-danger">Sair</button>
    </form>

    <%
        ServletContext context = request.getServletContext();
        int userCount = (int) context.getAttribute("userCount");
    %>
    <span>Usuários logados: <%= userCount %></span>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
