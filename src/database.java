import java.sql.*;

public class database {

    public static void registerUser (Connection connection, String UserName, String FullName) throws SQLException {

        String sql = "INSERT INTO gameUsers (UserName, FullName) VALUES (?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, UserName);
        statement.setString(2, FullName);

        int rowInserted = statement.executeUpdate();

        if (rowInserted > 0) {
            System.out.println("user registered successfully@");
        } else {
            System.out.println("sorry, something went wrong..");
        }
    }

    public static void logIn (Connection connection, String existingUserName) throws SQLException {

        String sql = "SELECT UserName FROM gameUsers WHERE name = 'existingUserName'";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);


    }






}
