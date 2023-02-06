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
            <h1 class="mt-3">Relatório dos Produtos - Baixo Estoque</h1>
            <div class="mt-1 mb-3">
                <button class="btn btn-secondary" onclick="window.print()" >Imprimir</button>
            </div>
            <table class="table">
                <thead>
                  <tr>    
                    <th scope="col">Código</th>
                    <th scope="col">Produto</th>                    
                    <th scope="col">Valor</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col">Quantidade Mínima</th>                    
                    
                  </tr>
                </thead>
                <tbody>                    
                        <%                                                    
                            try {
                                ProdutoDAO produtoDAO = new ProdutoDAO();
                                ArrayList<Produto> lista = produtoDAO.PesquisarRelatorio();
                            
                                for(int i = 0; i < lista.size(); i++){
                                
                                %>
                                <tr>                                    
                                <%
                                    out.print("<td>"+ lista.get(i).getIdProduto() +"</td>");
                                    out.print("<td>"+ lista.get(i).getNome() +"</td>");
                                    out.print("<td>"+String.format("%.2f",lista.get(i).getValor()) +"</td>");
                                    out.print("<td>"+lista.get(i).getQuantidade()+"</td>");
                                    out.print("<td>"+lista.get(i).getMinQuantidade()+"</td>");
                                    
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

