package br.com.estoque.DAO;

import br.com.estoque.DTO.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdutoDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Produto> lista = new ArrayList<>();
    
    public void CadastrarProduto(Produto produto) throws ClassNotFoundException{
        String sql = "INSERT INTO produtos (nome,valor,quantidade,min_quantidade) VALUES (?,?,?,?)";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
           pstm = conn.prepareStatement(sql);
           
           String nome = produto.getNome();
           double valor = produto.getValor();
           int quantidade = produto.getQuantidade();
           int minQuantidade = produto.getMinQuantidade();
           
           pstm.setString(1,nome);
           pstm.setDouble(2, valor);
           pstm.setInt(3, quantidade);
           pstm.setInt(4, minQuantidade);
           
           pstm.execute();
           pstm.close();
           
           
        } catch(SQLException e){
            System.out.println("Não cadastrou o Produto. Erro: " + e);
        }
    
    }
    
    public ArrayList<Produto> PesquisarProdutos() throws ClassNotFoundException{
        String sql = "SELECT * FROM produtos";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                produto.setIdProduto(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setValor(rs.getDouble("valor"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setMinQuantidade(rs.getInt("min_quantidade"));
                lista.add(produto);
            }
            pstm.close();
        }catch(SQLException e){
            System.out.println("Não tem produtos. " + e);
        }
    
        return lista;
    }
    
    public void EditarProduto(Produto produto){
        String sql = "UPDATE produtos SET nome= ?, valor= ?, quantidade= ?, min_quantidade=? WHERE id = ?";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, produto.getNome());
            pstm.setDouble(2,produto.getValor());
            pstm.setInt(3,produto.getQuantidade());
            pstm.setInt(4,produto.getMinQuantidade());
            pstm.setInt(5,produto.getIdProduto());
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
        }
    }
    
    public void ExcluirProduto(Produto produto){
        String sql = "DELETE FROM produtos WHERE id = ?";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, produto.getIdProduto());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
        }
    }
    
    public ArrayList<Produto> PesquisarProdutoPorId(int id){
        String sql = "SELECT * FROM produtos WHERE id ="+ id;
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);           
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                produto.setIdProduto(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setValor(rs.getDouble("valor"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setMinQuantidade(rs.getInt("min_quantidade"));
                lista.add(produto);
            }
            pstm.close();           
            
        }catch(SQLException e){
        }
        return lista;
    }
    
    public void AlterarQuantidadeProduto(Produto produto){
        String sql = "UPDATE produtos SET quantidade  = ? WHERE id = ?";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, produto.getQuantidade());
            pstm.setInt(2,produto.getIdProduto());
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
        }        
    }        
    
    public ArrayList<Produto> PesquisarRelatorio(){
        String sql = "SELECT * FROM produtos WHERE min_quantidade > quantidade";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                produto.setIdProduto(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setValor(rs.getDouble("valor"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setMinQuantidade(rs.getInt("min_quantidade"));
                lista.add(produto);
            }
            pstm.close();
        }catch(SQLException e){
        
        }        
        return lista;
    }
}
