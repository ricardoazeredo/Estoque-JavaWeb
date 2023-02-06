<%@page import="java.util.ArrayList"%>
<%@page import="br.com.estoque.DTO.Produto"%>
<%@page import="br.com.estoque.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
    <jsp:include page="../Includes/navbar.jsp">
        <jsp:param name="title" value="Lista de Produtos" />
    </jsp:include>
        
        <div class="container">
            <h1 class="mt-3">Listar Produtos</h1>
            <div class="mt-1 mb-3">
                <a type="button" class="btn btn-primary" href="/Estoque/Produtos/frmCadastrarProduto.jsp" >Cadastrar Produto</a>
                <a type="button" class="btn btn-secondary" href="/Estoque/Produtos/frmRelatorio.jsp" >Relatório dos Produtos</a>
            </div>
            <table class="table">
                <thead>
                  <tr>    
                    <th scope="col">Código</th>
                    <th scope="col">Produto</th>                    
                    <th scope="col">Valor</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col">Quantidade Mínima</th>                    
                    <th scope="col" colspan="3">Ação</th>
                  </tr>
                </thead>
                <tbody>                    
                        <%                                                    
                            try {
                                ProdutoDAO produtoDAO = new ProdutoDAO();
                                ArrayList<Produto> lista = produtoDAO.PesquisarProdutos();
                            
                                for(int i = 0; i < lista.size(); i++){
                                
                                %>
                                <tr>                                    
                                <%
                                    out.print("<td>"+ lista.get(i).getIdProduto() +"</td>");
                                    out.print("<td>"+ lista.get(i).getNome() +"</td>");
                                    out.print("<td>"+String.format("%.2f",lista.get(i).getValor()) +"</td>");
                                    out.print("<td>"+lista.get(i).getQuantidade()+"</td>");
                                    out.print("<td>"+lista.get(i).getMinQuantidade()+"</td>");
                                    
                                    out.print("<td><a type='button' class='btn btn-success me-2' href='frmDetalhesProduto.jsp?id=" 
                                                + lista.get(i).getIdProduto() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&valor="+ lista.get(i).getValor()+
                                                "&quantidade="+ lista.get(i).getQuantidade()+
                                                "&min_quantidade="+ lista.get(i).getMinQuantidade()+
                                                "'>Detalhes</a>");
                                    out.print("<a type='button' class='btn btn-primary me-2' href='frmEditarProdutoView.jsp?id=" 
                                                + lista.get(i).getIdProduto() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&valor="+ lista.get(i).getValor()+
                                                "&quantidade="+ lista.get(i).getQuantidade()+
                                                "&min_quantidade="+ lista.get(i).getMinQuantidade()+
                                                "'>Alterar </a>");
                                    out.print("<a type='button' class='btn btn-danger' href='frmExcluirProduto.jsp?id=" 
                                                + lista.get(i).getIdProduto() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&valor="+ lista.get(i).getValor()+
                                                "&quantidade="+ lista.get(i).getQuantidade()+
                                                "&min_quantidade="+ lista.get(i).getMinQuantidade()+                                               
                                                "'>Excluir </a></td>");  
                                %>    
                                </tr>
                                <%
                                }     
                            }catch(Exception e){
                            }

                       %>  
                             
                </tbody>
            </table>    
        </div>
    </body>
</html>
