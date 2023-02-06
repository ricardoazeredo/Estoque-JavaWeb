<%@page import="java.util.ArrayList"%>
<%@page import="br.com.estoque.DTO.Cliente"%>
<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    <body>
        <jsp:include page="../Includes/navbar.jsp">
            <jsp:param name="title" value="Lista de Clientes" />
        </jsp:include>
        
        <div class="container">
            <h1 class="mt-3">Lista de Clientes</h1>
            <div class="mt-1 mb-3">
                <a type="button" class="btn btn-primary" href="/Estoque/Clientes/frmCadastrarCliente.jsp" >Cadastrar Cliente</a>
            </div>
            <table class="table">
                <thead>
                  <tr>    
                    <th scope="col">Código</th>
                    <th scope="col">Nome</th>                    
                    <th scope="col">email</th>
                    <th scope="col">vip</th>
                                      
                    <th scope="col" colspan="3">Ação</th>
                  </tr>
                </thead>
                <tbody>                    
                        <%                                                    
                            try {
                                ClienteDAO clienteDAO = new ClienteDAO();
                                ArrayList<Cliente> lista = clienteDAO.PesquisarClientes();
                                
                                for(int i = 0; i < lista.size(); i++){
                                
                                %>
                                <tr>                                    
                                <%
                                    out.print("<td>"+ lista.get(i).getId()+"</td>");
                                    out.print("<td>"+ lista.get(i).getNome() +"</td>");
                                    out.print("<td>"+lista.get(i).getEmail() +"</td>");
                                    if(lista.get(i).getVip()== false){
                                        out.print("<td>Não</td>");
                                    }else {
                                        out.print("<td>Sim</td>");
                                    }
                                    
                                    out.print("<td><a type='button' class='btn btn-success me-2' href='frmEditarCliente.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+
                                                "&vip="+ lista.get(i).getVip()+                                                
                                                "'>Editar</a>");
                                    out.print("<a type='button' class='btn btn-danger me-2' href='frmExcluirCliente.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+
                                                "&vip="+ lista.get(i).getVip()+ 
                                                "'>Excluir</a>");
                                     
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
