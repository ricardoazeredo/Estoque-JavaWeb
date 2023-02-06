package br.com.estoque.DAO;

import br.com.estoque.DTO.Vendedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class VendedorDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Vendedor> lista = new ArrayList<>();
    
    public void CadastrarVendedor(Vendedor vendedor) throws ClassNotFoundException{
        String sql = "INSERT INTO vendedores (nome,email) VALUES (?,?)";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
           pstm = conn.prepareStatement(sql);
           
           String nome = vendedor.getNome();
           String email = vendedor.getEmail();
                      
           pstm.setString(1,nome);
           pstm.setString(2, email);
           
                      
           pstm.execute();
           pstm.close();
           
           
        } catch(SQLException e){
            System.out.println("Não cadastrou o Cliente. Erro: " + e);
        }
    
    }
    
    public ArrayList<Vendedor> PesquisarVendedors(){
        String sql = "Select * from vendedores";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Vendedor vendedor = new Vendedor();
                vendedor.setId(rs.getInt("id"));
                vendedor.setNome(rs.getString("nome"));
                vendedor.setEmail(rs.getString("email"));
                
                lista.add(vendedor);
            }
            pstm.close();
        }catch(SQLException e){
        
        }
        return lista;
    }
    
    public ArrayList<Vendedor> PesquisarVendedorPorId(int id){
        String sql = "Select * from vendedores WHERE id="+id;
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Vendedor vendedor = new Vendedor();
                vendedor.setId(rs.getInt("id"));
                vendedor.setNome(rs.getString("nome"));
                vendedor.setEmail(rs.getString("email"));
                
                lista.add(vendedor);
            }
            pstm.close();
        }catch(SQLException e){
        
        }
        return lista;
    }
    
    public void EditarVendedor(Vendedor vendedor){
        String sql = "UPDATE vendedores SET nome=?, email=? WHERE id=?";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, vendedor.getNome());
            pstm.setString(2, vendedor.getEmail());           
            pstm.setInt(3, vendedor.getId());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){ 
            System.out.println("Não foi possível alterar. Erro: " + e);
        }
    }
    
    public void ExcluirVendedor(Vendedor vendedor){
        
        String sql = "DELETE FROM vendedores WHERE id=?";
        conn = new ConexaoDAO().conexaoDB();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1,vendedor.getId());
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
        }
    }
}
