import java.sql.*;
import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;
import java.util.Set;

public class QuizQuestionGenerator {
    // The idea behind this is:
    //Quiz can be used for learning purpose-if answer is wrong, user can choose to see correct answer
    // 1. Select table in SQL and check which ID range is assigned to Asia, South + North America and Europe
    // separate methods for each region with validation of random generated country ID (1-46 Asia, 47-82 Americas, 83-135 Africa)


    //QUESTIONS
    // Do we need to have check results option in the beginning
    // Is it possible to optimise methods for each country ? The only difference there is different a random ID validation
    // "SELECT Country, Capital, Region FROM countries WHERE Region = 'Asia' AND CountryID  = " + randomID:  why this validation "WHERE Region = 'Asia" did not work ?


    //TO DO:
    //User login and validation
    //score calculation

    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:mysql://localhost:3306/java34";
        String username = "root";
        String password = "1234";
        Scanner scanner = new Scanner(System.in);
        int result = 0;

        try (Connection conn = DriverManager.getConnection(dbURL, username, password)) {
            System.out.println("Welcome to Capital cities quiz! Here you can check your knowledge or learn capital cities of many countries around the world. Lets start!");
            System.out.println("Choose what you want to do: ");
            System.out.println("q- take quiz");
            System.out.println("r- check your previous score");
            System.out.println("e - end quiz");

            char quiz = scanner.nextLine().charAt(0);
            if (quiz == 'q') {
                while (quiz == 'q') {
                    quizMenu();

                    String choice = scanner.nextLine();
                    while (choice.equalsIgnoreCase("a")) {
                        System.out.println("Capital cities of Asian countries: ");
                        AsiaCapitals(conn);
                        if (!continueOrEndQuiz()) break;
                    }
                    while (choice.equalsIgnoreCase("e")) {
                        System.out.println("Capital cities of European countries: ");
                        EuropeCapitals(conn);
                        if (!continueOrEndQuiz()) break;
                    }
                    while (choice.equalsIgnoreCase("am")) {
                        System.out.println("Capital cities of North and South American countries: ");
                        AmericaCapitals(conn);
                        if (!continueOrEndQuiz()) break;
                    }
                    while (choice.equalsIgnoreCase("af")) {
                        System.out.println("Capital cities of African countries: ");
                        AfricaCapitals(conn);
                        if (!continueOrEndQuiz()) break;
                    } if (!endQuiz())
                        break;
                }

            } else if (quiz == 'r') {
                System.out.println("Your score is: ");
                //calculateResults();
                //continueOrEndQuiz(); ????? or add a separate method to go back to menu ?
            } else if (quiz == 'e') {
                System.out.println("See you next time! ");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void AsiaCapitals(Connection conn) throws SQLException {
        Scanner scanner = new Scanner(System.in);

        // tracking if ID is already used
        Random rand = new Random();
        Set<Integer> usedIDs = new HashSet<>(); // will store the previously generated random IDs.
        int randomID = rand.nextInt(47) + 1; // generates a random number between 0 and 47 (inclusive) and then adds 1 to it, resulting in a random number between 1 and 3 (inclusive).
        while (usedIDs.contains(randomID)) {
            randomID = rand.nextInt(47) + 1;
        }
        usedIDs.add(randomID); // Once a unique random ID is generated, it is added to the usedIDs set using the add() method.

        //creating statement and a resultSet
        Statement statement = conn.createStatement();
        ResultSet resultSet;
        // selecting country, capital, and region with  random ID
        resultSet = statement.executeQuery("SELECT Country, Capital, Region FROM countries WHERE Region = 'Asia' AND CountryID  = " + randomID);
        resultSet.next();
        String randomCountry = resultSet.getString("Country");
        String randomCapital = resultSet.getString("Capital");

        System.out.println("What is the capital of " + randomCountry + "?");
        // Validating  user's answer. If answer is incorrect, user can check what was the correct answer
        String userAnswer = scanner.nextLine();
        if (userAnswer.equalsIgnoreCase(randomCapital)) {
            System.out.println("Correct! You get 1 point");
        } else {
            System.out.println("Incorrect. You get 0 points. Do you want me to show the correct answer y/n?");
            char knowCorrectAnswer = scanner.nextLine().charAt(0);
            if (knowCorrectAnswer == 'y') {
                System.out.println("The correct answer is " + randomCapital);
            } else if (knowCorrectAnswer == 'n') {
                System.out.println("OK :) We suggest you to check next question. You can do it! :)");
            }
        }
    }

    private static void AmericaCapitals(Connection conn) throws SQLException {
        Scanner scanner = new Scanner(System.in);

        // tracking if ID is already used
        /*   Set<Integer> usedIDs = new HashSet<>(); // will store the previously generated random IDs.
           int randomID = rand.nextInt(35) + 48; // generates a random number between 48 and 82 (inclusive) and then adds 1 to it, resulting in a random number between 1 and 3 (inclusive).
           while (usedIDs.contains(randomID)) {
               randomID = rand.nextInt(35) + 48;
           }usedIDs.add(randomID); // Once a unique random ID is generated, it is added to the usedIDs set using the add() method.
.*/
        Random rand = new Random();
        int randomID = rand.nextInt(35) + 48;

        //creating statement and a resultSetq
        Statement statement = conn.createStatement();
        ResultSet resultSet;
        // selecting country, capital, and region with  random ID
        resultSet = statement.executeQuery("SELECT Country, Capital, Region FROM countries WHERE CountryID  = " + randomID);
        resultSet.next();
        String randomCountry = resultSet.getString("Country");
        String randomCapital = resultSet.getString("Capital");

        System.out.println("What is the capital of " + randomCountry + "?");

        // Validating  user's answer. If answer is incorrect, user can check what was the correct answer
        String userAnswer = scanner.nextLine();
        if (userAnswer.equalsIgnoreCase(randomCapital)) {
            System.out.println("Correct! You get 1 point");
        } else {
            System.out.println("Incorrect. You get 0 points. Do you want me to show the correct answer y/n?");
            char knowCorrectAnswer = scanner.nextLine().charAt(0);
            if (knowCorrectAnswer == 'y') {
                System.out.println("The correct answer is " + randomCapital);
            } else if (knowCorrectAnswer == 'n') {
                System.out.println("OK :) We suggest you to check next question. You can do it! :)");
            }
        }
    }

    private static void AfricaCapitals(Connection conn) throws SQLException {
        Scanner scanner = new Scanner(System.in);

        // tracking if ID is already used
        /*   Set<Integer> usedIDs = new HashSet<>(); // will store the previously generated random IDs.
           int randomID = rand.nextInt(52) + 83; // generate a random integer between 83 and 135 (52 + 83)
           while (usedIDs.contains(randomID)) {
               randomID = rand.nextInt(52) + 83;
           }usedIDs.add(randomID); // Once a unique random ID is generated, it is added to the usedIDs set using the add() method.
.*/
        Random rand = new Random();
        int randomID = rand.nextInt(52) + 84;

        //creating statement and a resultSet
        Statement statement = conn.createStatement();
        ResultSet resultSet;
        // selecting country, capital, and region with  random ID
        resultSet = statement.executeQuery("SELECT Country, Capital, Region FROM countries WHERE Region = 'Africa' AND CountryID  = " + randomID);
        resultSet.next();
        String randomCountry = resultSet.getString("Country");
        String randomCapital = resultSet.getString("Capital");

        System.out.println("What is the capital of " + randomCountry + "?");

        // Validating  user's answer. If answer is incorrect, user can check what was the correct answer
        String userAnswer = scanner.nextLine();
        if (userAnswer.equalsIgnoreCase(randomCapital)) {
            System.out.println("Correct! You get 1 point");
        } else {
            System.out.println("Incorrect. You get 0 points. Do you want me to show the correct answer y/n?");
            char knowCorrectAnswer = scanner.nextLine().charAt(0);
            if (knowCorrectAnswer == 'y') {
                System.out.println("The correct answer is " + randomCapital);
            } else if (knowCorrectAnswer == 'n') {
                System.out.println("OK :) We suggest you to check next question. You can do it! :)");
            }
        }
    }

    private static void EuropeCapitals (Connection conn) throws SQLException{
        Scanner scanner = new Scanner(System.in);

        // tracking if ID is already used
        /*   Set<Integer> usedIDs = new HashSet<>(); // will store the previously generated random IDs.
           int randomID = rand.nextInt(42) + 137; // generate a random integer between 83 and 135 (52 + 83)
           while (usedIDs.contains(randomID)) {
               randomID = rand.nextInt(42) + 137;
           }usedIDs.add(randomID); // Once a unique random ID is generated, it is added to the usedIDs set using the add() method.
.*/
        Random rand = new Random();
        int randomID = rand.nextInt(42) + 137;

        //creating statement and a resultSet
        Statement statement = conn.createStatement();
        ResultSet resultSet;
        // selecting country, capital, and region with  random ID
        resultSet = statement.executeQuery("SELECT Country, Capital, Region FROM countries WHERE Region = 'Europe' AND CountryID  = " + randomID);
        resultSet.next();
        String randomCountry = resultSet.getString("Country");
        String randomCapital = resultSet.getString("Capital");

        System.out.println("What is the capital of " + randomCountry + "?");

        // Validating  user's answer. If answer is incorrect, user can check what was the correct answer
        String userAnswer = scanner.nextLine();
        if (userAnswer.equalsIgnoreCase(randomCapital)) {
            System.out.println("Correct! You get 1 point");
        } else {
            System.out.println("Incorrect. You get 0 points. Do you want me to show the correct answer y/n?");
            char knowCorrectAnswer = scanner.nextLine().charAt(0);
            if (knowCorrectAnswer == 'y') {
                System.out.println("The correct answer is " + randomCapital);
            } else if (knowCorrectAnswer == 'n') {
                System.out.println("OK :) We suggest you to check next question. You can do it! :)");
            }
        }
    }


    private static boolean continueOrEndQuiz() {
        System.out.println("press y to continue, e - to end and check your score, m - go to menu and choose other region");
        Scanner scanner = new Scanner(System.in);
        char choice = scanner.nextLine().charAt(0);
        if (choice == 'e') {
            System.out.println("Quiz ended. See you next time! Your score is: ");
            // CALL HERE METHOD calculateResults();
            System.out.println("If you want to play again, press y ");
            return false;
        } else if (choice == 'm') {
            System.out.println("Returning to menu. Press y to confirm");
            return false;
        }
        return true;
    }

        private static void quizMenu() {
        System.out.println("Choose region: ");
        System.out.println("a - capitals of Asia");
        System.out.println("e - capitals of Europe");
        System.out.println("am - capitals of South and North America");
        System.out.println("af - capitals of Africa");

    }

    private static boolean endQuiz() {
        //System.out.println("Press e to end quiz, or any case to go back to menu");
        Scanner scanner = new Scanner(System.in);
        char choice = scanner.nextLine().charAt(0);
        if (choice == 'e') {
            System.out.println("Quiz ended. See you next time! Your score is: ");
            // CALL HERE METHOD calculateResults();
            return false;
        }
        return true;
    }

    private static int score() { // not started
        int score = 0;
        System.out.println();
        return score;
    }

}



