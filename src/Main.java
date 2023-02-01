
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Objects;
import java.util.Scanner;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class Main {
    public static void main(String[] args) {

        String dbURL = "jdbc:mysql://localhost:3306/java34";
        String username = "root";
        String password = "1234";
        Scanner scanner = new Scanner(System.in);
        char again = 'y';

        try (Connection connection = DriverManager.getConnection(dbURL, username, password)) {


            System.out.println("Welcome to our geography quiz!"+ '\n' +"What would you like to do?");

            while (again == 'y') {
                System.out.println("Please type 'register' / 'log in' ");

                String action = scanner.nextLine().toLowerCase().trim();


                String existingUserName;
                if (action.equals("register")) {
                    System.out.println("Enter a new username");
                    String newUserName = scanner.nextLine();


                    if (database.logIn(connection, newUserName)) {
<<<<<<< HEAD
                        System.out.println("this username is taken");
                       break;
=======
                        System.out.println("This username is taken");
                        break;
>>>>>>> 2d60ce5c08ae1722266631c47fec89de1de3e987
                    }

                    System.out.println("Enter your full name");
                    String newFullName = scanner.nextLine();

                    database.registerUser(connection, newUserName, newFullName);

                } else if (action.equals("log in")) {
                    System.out.println("Please, input your username");

                    existingUserName = scanner.nextLine();
                    database.logIn(connection, existingUserName);

                    QuizQuestionGenerator.Quiz();

                    existingUserName = scanner.nextLine();
                    if(database.logIn(connection, existingUserName)){
                        System.out.println("You have logged in");
                    }else {
                        System.out.println("Not an existing user");
                    }



                } else {
                    System.out.println("Invalid input");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
