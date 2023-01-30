// <<<<<<< HEAD -  these line was imported from git and
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Objects;
import java.util.Scanner;
// =======
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// >>>>>>> 4f7c61625014183683c9481582c1b43f3558c57d
public class Main {
    public static void main(String[] args) {

        String dbURL = "jdbc:mysql://localhost:3306/java34";
        String username = "root";
        String password = "Spiegoshana";
        Scanner scanner = new Scanner(System.in);
        char again = 'y';

        try (Connection connection = DriverManager.getConnection(dbURL, username, password)) {


            System.out.println("Welcome to our geography quiz!"+ '\n' +"What would you like to do?");

            while (again == 'y') {
                System.out.println("Please type 'register' / 'log in' ");

                String action = scanner.nextLine().toLowerCase().trim();


                String existingUserName;
                if (action.equals("register")) {
                    System.out.println("enter a new username");
                    String newUserName = scanner.nextLine();


                    if (database.logIn(connection, newUserName)) {
                        System.out.println("this username is taken");
                        break;
                    }

                    System.out.println("enter your full name");
                    String newFullName = scanner.nextLine();

                    database.registerUser(connection, newUserName, newFullName);

                } else if (action.equals("log in")) {
                    System.out.println("please, input your username");
                    existingUserName = scanner.nextLine();
                    if(database.logIn(connection, existingUserName)){
                        System.out.println("You have logged in");
                    }else {
                        System.out.println("Ņot existing user");
                    }


                } else {
                    System.out.println("invalid input");
                }


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

//<<<<<<< HEAD
       //Scanner scanner = new Scanner(System.in);
//=======


        /* Scanner scanner = new Scanner(System.in);
>>>>>>> 15bc0f36c2d09582c26c7584f0f0d7f0f14e875d

        boolean i = true;

       System.out.println("Please enter your personal number");

        while(i) {
            String personalNumber = scanner.nextLine();

            Pattern pattern = Pattern.compile("[0-9]{6}-[0-9]{5}");
            Matcher matcher = pattern.matcher(personalNumber);

            boolean validPersonalNumber = matcher.matches();

            if (validPersonalNumber != true) {
                System.out.println("Your inputted personal number is not valid.Enter valid personal number");
            } else {
                System.out.println("Please enter username");
                String name = scanner.nextLine();

            }
        }

         */

    }
}
