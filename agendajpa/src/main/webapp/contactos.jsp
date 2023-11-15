<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contactos");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Contactos</title>
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a.button {
            display: inline-block;
            padding: 10px 15px;
            background-color: #28a745;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        a.button:hover {
            background-color: #218838;
        }

        a.edit, a.delete {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }

        a.edit:hover, a.delete:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Listado de Contactos</h1>
    <a class="button" href="MainController?action=add">Nuevo Contacto</a>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Teléfono</th>
            <th>Correo</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>
        <%
            for (Contacto item : lista){
        %>
        <tr>
            <td><%= item.getId()%></td>
            <td><%= item.getNombre()%></td>
            <td><%= item.getTelefono()%></td>
            <td><%= item.getCorreo()%></td>
            <td><a class="edit" href="MainController?action=edit&id=<%= item.getId() %>">Editar</a></td>
            <td><a class="delete" href="MainController?action=dele&id=<%= item.getId() %>">Eliminar</a></td>
        </tr>
        <%
          }
        %>
    </table>
</body>
</html>
