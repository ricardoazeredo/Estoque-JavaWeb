<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page import="br.com.estoque.DTO.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cliente cliente = new Cliente();
                int id = Integer.parseInt(request.getParameter("id"));
                cliente.setId(id);
                cliente.setNome(request.getParameter("nome"));
                cliente.setEmail(request.getParameter("email"));
                cliente.setVip(Boolean.parseBoolean(request.getParameter("vip")));

                ClienteDAO clienteDAO = new ClienteDAO();
                clienteDAO.EditarCliente(cliente);

                response.sendRedirect("listarClientes.jsp");
        %>
    </body>
</html>
