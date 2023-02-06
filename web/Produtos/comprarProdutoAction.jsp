<%@page import="br.com.estoque.DTO.Produto"%>
<%@page import="br.com.estoque.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            try{
                Produto produto = new Produto();
                produto.setIdProduto(Integer.parseInt(request.getParameter("id")));
                produto.setQuantidade(Integer.parseInt(request.getParameter("quantidade"))+1);
                
                ProdutoDAO produtoDAO = new ProdutoDAO();
                produtoDAO.AlterarQuantidadeProduto(produto);
                
                response.sendRedirect("listarProdutos.jsp");
            }catch(Exception e){
            
            }  
        %>  
    </body>
</html>
