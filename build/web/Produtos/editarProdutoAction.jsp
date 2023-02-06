<%@page import="br.com.estoque.DAO.ProdutoDAO"%>
<%@page import="br.com.estoque.DTO.Produto"%>
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
                produto.setNome(request.getParameter("nome"));
                produto.setValor(Double.parseDouble(request.getParameter("valor")));
                produto.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
                produto.setMinQuantidade(Integer.parseInt(request.getParameter("minQuantidade")));
                
                ProdutoDAO produtoDAO = new ProdutoDAO();
                produtoDAO.EditarProduto(produto);
                
                response.sendRedirect("listarProdutos.jsp");
            }catch(Exception e){
            
            }  
        %>    
    </body>
</html>
