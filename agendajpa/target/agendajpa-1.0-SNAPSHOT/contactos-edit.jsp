<%@page import="com.emergentes.entidades.Contacto"%>
<%
    Contacto contacto = (Contacto) request.getAttribute("contacto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de Contactos</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h1>Registro de Contactos</h1>
    <form action="MainController" method="post">
        <input type="hidden" name="id" value="<%= contacto.getId()%>">
        <table>
            <tr>
                <td>Nombre</td>
                <td><input type="text" name="nombre" value="<%= contacto.getNombre()%>"></td>
            </tr>
            <tr>
                <td>Teléfono</td>
                <td><input type="text" name="telefono" value="<%= contacto.getTelefono()%>"></td>
            </tr>
            <tr>
                <td>Correo</td>
                <td><input type="text" name="correo" value="<%= contacto.getCorreo()%>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Guardar Cambios"></td>
            </tr>
        </table>
    </form>
</body>
</html>