package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class dbConnection {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

//<<<<<<< HEAD
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java34", "root", "1234");
//=======
//git

          //  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java34", "root", "1234");

            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javafinalprojectdb", "root", "0315");

//>>>>>>> 00630cab88d1a88ace0aa44e34e31d7eaa5f9d79
            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java34", "root", "1234");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM countries");

            while (rs.next()){
                System.out.printf("CountryID %d Country:  %s Capital: %s Region: %s  \n",
                        rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
            }
            con.close();


        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
