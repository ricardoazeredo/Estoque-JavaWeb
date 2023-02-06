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
            try {
                Cliente cliente = new Cliente();

                cliente.setNome(request.getParameter("nome"));
                cliente.setEmail(request.getParameter("email"));
                cliente.setVip(Boolean.parseBoolean(request.getParameter("vip")));
                
                ClienteDAO clienteDAO = new ClienteDAO();
                clienteDAO.CadastrarCliente(cliente);
                
                response.sendRedirect("listarClientes.jsp");
            } catch(Exception e){
                System.out.println("Não cadastrou o Produto. Erro: " + e);
            }
            
        %>    
    </body>
</html>
