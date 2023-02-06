package br.com.estoque.DAO;

import br.com.estoque.DTO.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ClienteDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Cliente> lista = new ArrayList<>();
    
    public void CadastrarCliente(Cliente cliente) throws ClassNotFoundException{
        String sql = "INSERT INTO clientes (nome,email,vip) VALUES (?,?,?)";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
           pstm = conn.prepareStatement(sql);
           
           String nome = cliente.getNome();
           String email = cliente.getEmail();
           Boolean vip = cliente.getVip();
           
           pstm.setString(1,nome);
           pstm.setString(2, email);
           pstm.setBoolean(3, vip);
                      
           pstm.execute();
           pstm.close();
           
           
        } catch(SQLException e){
            System.out.println("Não cadastrou o Cliente. Erro: " + e);
        }
    
    }
    
    public ArrayList<Cliente> PesquisarClientes(){
        String sql = "Select * from clientes";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setVip(rs.getBoolean("vip"));
                lista.add(cliente);
            }
            pstm.close();
        }catch(SQLException e){
        
        }
        return lista;
    }
    
    public ArrayList<Cliente> PesquisarClientePorId(int id){
        String sql = "Select * from clientes WHERE id="+id;
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setVip(rs.getBoolean("vip"));
                lista.add(cliente);
            }
            pstm.close();
        }catch(SQLException e){
        
        }
        return lista;
    }
    
    public void EditarCliente(Cliente cliente){
        String sql = "UPDATE clientes SET nome=?, email=?, vip=? WHERE id=?";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, cliente.getNome());
            pstm.setString(2, cliente.getEmail());
            pstm.setBoolean(3, cliente.getVip());
            pstm.setInt(4, cliente.getId());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){ 
            System.out.println("Não foi possível alterar. Erro: " + e);
        }
    }
    
    public void ExcluirCliente(Cliente cliente){
        
        String sql = "DELETE FROM clientes WHERE id=?";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1,cliente.getId());
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
        }
    }
}
