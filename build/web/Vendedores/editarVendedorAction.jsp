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
            vendedor.setNome(request.getParameter("nome"));
            vendedor.setEmail(request.getParameter("email"));

            VendedorDAO vendedorDAO = new VendedorDAO();
            vendedorDAO.EditarVendedor(vendedor);

            response.sendRedirect("listarVendedores.jsp");
        %>
    </body>
</html>
