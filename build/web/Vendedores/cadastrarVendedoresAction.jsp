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
            try {
                Vendedor vendedor = new Vendedor();

                vendedor.setNome(request.getParameter("nome"));
                vendedor.setEmail(request.getParameter("email"));
                
                VendedorDAO vendedorDAO = new VendedorDAO();
                vendedorDAO.CadastrarVendedor(vendedor);
                
                response.sendRedirect("listarVendedores.jsp");
            } catch(Exception e){
                System.out.println("Não cadastrou o Produto. Erro: " + e);
            }
            
        %>    
    </body>
</html>
