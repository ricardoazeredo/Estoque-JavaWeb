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
            <jsp:param name="title" value="Detalhes do Produto" />
        </jsp:include>
        
        <div class="container">
            <h1 class="mt-3">Detalhes do Produto:</h1>
            <div class="col-md-8">
            <form action="venderProdutoAction.jsp" method="POST">
                    
                    <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
                    <input type="hidden" name="valor" value="<%=request.getParameter("valor")%>" />
                    <input type="hidden" name="quantidade" value="<%=request.getParameter("quantidade")%>" />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">Código do Produto: </div>
                            <div class="col-md-4"><%=request.getParameter("id")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Produto: </div>
                            <div class="col-md-4"><%=request.getParameter("nome")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Valor: </div>
                            <div class="col-md-4">R$ <%=request.getParameter("valor")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Quantidade: </div>
                            <div class="col-md-4"><%=request.getParameter("quantidade")%></div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">Quantidade Mínima: </div>
                            <div class="col-md-4"><%=request.getParameter("min_quantidade")%></div>
                        </div>     
                         
                    
                        <div class="mt-3 col-md-5">
                            <label class="form-label">Cliente</label>
                            <select name="cliente" class="form-select">
                                <%
                                    ClienteDAO clienteDAO = new ClienteDAO();
                                    ArrayList<Cliente> lista = clienteDAO.PesquisarClientes();
                                    for (int i = 0; i < lista.size(); i++) {
                                       %>
                                       <option  value="<%=lista.get(i).getId()%>"><%=lista.get(i).getId()%> - <%=lista.get(i).getNome()%></option>
                                        <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="mt-3 col-md-5">
                            <label class="form-label">Vendedor</label>
                            <select name="vendedor" class="form-select">
                                <%
                                    VendedorDAO vendedorDAO = new VendedorDAO();
                                    ArrayList<Vendedor> vendedor = vendedorDAO.PesquisarVendedors();
                                    for (int i = 0; i < vendedor.size(); i++) {
                                       %>
                                       <option  value="<%=vendedor.get(i).getId()%>"><%=vendedor.get(i).getId()%> - <%=vendedor.get(i).getNome()%></option>
                                        <%
                                    }
                                %>
                            </select>
                        </div>    
                                
                        <button type="submit" class="btn btn-success mt-3">Vender</button>
                    </div>     
                </form>
                
            
        </div>
    </body>
</html>
