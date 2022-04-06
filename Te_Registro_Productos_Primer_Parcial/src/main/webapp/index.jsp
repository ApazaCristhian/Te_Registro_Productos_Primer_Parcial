<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelos.Productos"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Productos</title>
    </head>
    <style>
        .bor {
            margin-left: 30%;
            margin-right: 30%;
            border: black 2px solid;

        }
    </style>

    <body>

        <div class="bor" style="text-align: center;"  >
            <h1>  PRIMER PARCIAL TEM - 742  </h1>
            <h3>  NOMBRE: CRISTHIAN CHOQUEHUANCA APAZA  </h3>
            <h3>  CARNET: 7099250 </h3>
        </div>    

        <h1><center>LISTADO DE PRODUCTOS</center></h1>

        <div style="text-align: center;"  >
            <a href="SessionServlet?op=nuevo">Nuevo Producto</a>
            <br>
            <br>
            <table border="1" style="margin: 0 auto;" > 
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
                <%
                    if (lista != null) {
                        for (Productos item : lista) {

                %>
                <tr>
                    <td><%= item.getId()%></td>
                    <td><%= item.getDescripcion()%></td>
                    <td><%= item.getCantidad()%></td>
                    <td><%= item.getPrecio()%></td>
                    <td><%= item.getCategoria()%></td>
                    <td><a href="SessionServlet?op=editar&id=<%= item.getId()%>">Editar</a></td>
                    <td><a href="SessionServlet?op=eliminar&id=<%= item.getId()%>"
                           onclick='return confirm("Esta Seguro de Eliminar el Producto");' >Eliminar</a></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </body>
</html>
