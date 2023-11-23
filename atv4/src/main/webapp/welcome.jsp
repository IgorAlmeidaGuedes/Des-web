<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
        body {
            background-color: #007BFF; /* Define o fundo azul */
            color: white;
        }

        .content-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .list {
            list-style-type: georgian;
        }

        .custom-button {
            background-color: #ff0676;
            color: black;
            border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            transition: transform 0.5s ease;
        }

        .custom-button:hover {
            transform: rotate(360deg);
        }
    </style>
</head>
<body>
    <div class="container-fluid content-container">
        <h1 class="text-center">Bem Vindo <%= request.getSession().getAttribute("logged") %></h1>

        <h2 class="text-center">Lista de coisas implementadas</h2>
        <ul class="list text-center">
            <li>Servlets</li>
            <li>JSP</li>
            <li>Session</li>
            <li>Redirecionamento</li>
            <li>Pagina de erros</li>
            <li>Parametro por servlet</li>
        </ul>

        <form method="POST" action="Controller">
            <input type="hidden" name="operacao" value="menu">
            <button class="custom-button mx-auto d-block">Voltar</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
