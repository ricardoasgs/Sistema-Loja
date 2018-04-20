




import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author usuario
 */
public class ConexaoBD {
    
    //cria objeto conexao,responsavel pela conexao com BD
    private  Connection conexao;
    
    //cria objeto statement,responsavel pelo caminho ate o local
    public Statement statement;
    
    //cria objeto resultset , responsavel por armazenar os resultados dos comandos SQL
    public ResultSet resultset;
    
    //metodo que conecta com o BD
    public void conecta()
    {
        try
        {
            conexao= DriverManager.getConnection("jdbc:mysql://localhost/loja","root","");
            
        }
        catch (SQLException erro)
        {
          JOptionPane.showMessageDialog(null,"erro ao tentar conectar"+ erro);  
        }
    }
    public void desconecta()
    {
        try
        {
            conexao.close();
            JOptionPane.showMessageDialog(null,"banco de dados fechado");
        }
        catch (SQLException erro)
        {
          JOptionPane.showMessageDialog(null,"não foi possivel fechar o banco"+ erro);  
        }
    }
    //metodo que executa comando sql (apenas select)
    public void executaSql (String sql)
    {
        try
        {
            //abre caminho para ligaçao com BD
            statement = (Statement) conexao.createStatement();
            //executa sql e armazena resultado no resultset
            resultset = statement.executeQuery(sql);
        }
        catch (SQLException erro)
        {
          JOptionPane.showMessageDialog(null,"erro ao executar SQL"+ erro);  
        }
        
    }
    
}
