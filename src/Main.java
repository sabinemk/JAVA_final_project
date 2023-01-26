import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {

        String dbURL = "jdbc:mysql://localhost:3306/java34";
        String username = "root";
        String password = "Spiegoshana";
        Scanner scanner = new Scanner(System.in);
        char again = 'y';

        try (Connection connection = DriverManager.getConnection(dbURL, username, password)) {
            //System.out.println("connected to the database");

            System.out.println("Welcome to our geography quiz!"+ '\n' +"What would you like to do?");

            while (again == 'y') {
                System.out.println("please type 'register' / 'log in' ");

                String action = scanner.nextLine().toLowerCase().trim();

                if (action == "register") {
                    System.out.println("enter a username");
                    String newUserName = scanner.nextLine();

                    System.out.println("enter your name");
                    String newFullName = scanner.nextLine();

                    database.registerUser(connection, newUserName, newFullName);

                } else if (action == "log in") {
                    System.out.println("enter your username");
                    String existingUserName = scanner.nextLine();
                    database.logIn(connection, existingUserName);

                } else {
                    System.out.println("invalid input");
                }


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
