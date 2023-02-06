<%@page import="br.com.estoque.DAO.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.estoque.DAO.VendedorDAO"%>
<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page import="br.com.estoque.DTO.Vendedor"%>
<%@page import="br.com.estoque.DTO.Cliente"%>
<%@page import="br.com.estoque.DTO.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <%
          Produto produto = new Produto(); 
          Cliente cliente = new Cliente();          
          Vendedor vendedor = new Vendedor();
          String nomeCliente = "";
          String vend= "";
          String product = "";
          double valor = 0;
          int qtd = 0;
          
          produto.setIdProduto(Integer.parseInt(request.getParameter("id")));
          cliente.setId(Integer.parseInt(request.getParameter("cliente")));
          vendedor.setId(Integer.parseInt(request.getParameter("vendedor")));
          int idCliente = cliente.getId();
          int idVendedor = vendedor.getId();
         
          ClienteDAO clienteDAO = new ClienteDAO();
          ArrayList<Cliente> clientes = clienteDAO.PesquisarClientePorId(idCliente);
          
          VendedorDAO vendedorDAO = new VendedorDAO();
          ArrayList<Vendedor> vendedores = vendedorDAO.PesquisarVendedorPorId(idVendedor);
          
          int cod = produto.getIdProduto();
          ProdutoDAO produtoDAO = new ProdutoDAO();
          ArrayList<Produto> produtos = produtoDAO.PesquisarProdutoPorId(cod);
          
          for(int i=0; i< produtos.size(); i++){
            product = produtos.get(i).getNome();
            valor = produtos.get(i).getValor();
            qtd = produtos.get(i).getQuantidade();
          }          
          
          for(int i = 0; i < clientes.size(); i++){
            nomeCliente = clientes.get(i).getNome();
          }
          
          for(int i = 0; i < vendedores.size(); i++){
            vend = vendedores.get(i).getNome();       
          }
          
          double comissao = vendedor.calcularComissao(Double.parseDouble(request.getParameter("valor")));
          
          produto.setQuantidade(Integer.parseInt(request.getParameter("quantidade"))-1);
          produtoDAO.AlterarQuantidadeProduto(produto);
          response.sendRedirect("reciboVenda.jsp?produto="+product+"&qtd="+qtd+"&valor="+valor+"&cliente="+nomeCliente+"&vend="+vend+"&comissao="+comissao);
        %>    
    </body>
</html>
