
package br.com.estoque.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoDAO {
    public static String status = "Não conectou...";
    
   public Connection conexaoDB(){
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            String url = "jdbc:mysql://localhost:3306/estoque?user=root&password=";
            conn = DriverManager.getConnection(url);
            
            //Testa sua conexão//

            if (conn != null) {

                status = ("STATUS--->Conectado com sucesso!");

            } else {

                status = ("STATUS--->Não foi possivel realizar conexão");

            }
        } catch (ClassNotFoundException e) {  //Driver não encontrado



            System.out.println("O driver expecificado nao foi encontrado.");

            return null;

        } catch (SQLException e) {

            //Não conseguindo se conectar ao banco

            System.out.println("Nao foi possivel conectar ao Banco de Dados.");

            return null;

        }
        
        return conn;
    }
}
