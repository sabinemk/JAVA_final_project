package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class dbConnection {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java34", "root", "Spiegoshana");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM countries");

            while (rs.next()){
                System.out.printf(" Country: %s Capital: %s  \n",
                        rs.getString(1),rs.getString(2));
            }
            con.close();


        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
