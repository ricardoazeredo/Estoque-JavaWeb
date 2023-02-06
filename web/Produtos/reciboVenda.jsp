<%@page import="br.com.estoque.DAO.VendedorDAO"%>
<%@page import="br.com.estoque.DTO.Vendedor"%>
<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page import="br.com.estoque.DTO.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.estoque.DTO.Produto"%>
<%@page import="br.com.estoque.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
        <jsp:include page="../Includes/navbar.jsp">
            <jsp:param name="title" value="Recibo de Venda" />
        </jsp:include>
        
        <div class="container">
            <h1 class="mt-3">Recibo de Venda:</h1>
            <div class="col-md-8">
            
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">Produto: </div>
                            <div class="col-md-4"><%=request.getParameter("produto")%></div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-3">Valor: </div>
                            <div class="col-md-4">R$ <%=request.getParameter("valor")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Cliente: </div>
                            <div class="col-md-4"><%=request.getParameter("cliente")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Vendedor: </div>
                            <div class="col-md-4"> <%=request.getParameter("vend")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Comissão do Vendedor: </div>
                            <div class="col-md-4">R$ <%=request.getParameter("comissao")%></div>
                        </div>
                                                    
                        
                    </div>
                        <div class="mt-3">
                            <a role="button" href="listarProdutos.jsp" class="btn btn-secondary">Voltar para os Produtos</a>
                        </div>    
                        
            </div>               
            
        </div>
    </body>
</html>
