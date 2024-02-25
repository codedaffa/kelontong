package program;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
public class koneksi_db {
Connection koneksi=null;
    public static Connection koneksiDb(){
        try{            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection filekoneksi =  (Connection) DriverManager.getConnection("jdbc:mysql://localhost/tokokelontong_db","root","");
            return filekoneksi;            
        }catch(Exception e){
            return null;
        }
    }    
}