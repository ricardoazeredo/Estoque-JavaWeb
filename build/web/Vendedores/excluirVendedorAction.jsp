<%-- 
    Document   : excluirVendedorAction
    Created on : 29 de jan. de 2023, 22:40:39
    Author     : Rico
--%>

<%@page import="br.com.estoque.DAO.VendedorDAO"%>
<%@page import="br.com.estoque.DTO.Vendedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Vendedor vendedor = new Vendedor();
            int id = Integer.parseInt(request.getParameter("id"));
            vendedor.setId(id);
            
            VendedorDAO vendedorDAO = new VendedorDAO();
            vendedorDAO.ExcluirVendedor(vendedor);

            response.sendRedirect("listarVendedores.jsp");
        %>
    </body>
</html>
