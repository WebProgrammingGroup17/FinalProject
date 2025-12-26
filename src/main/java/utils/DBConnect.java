package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static String url = "jdbc:mysql://localhost:3306/products";
    private static String user = "root";
    private static String password = "";
    
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
