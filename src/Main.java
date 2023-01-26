import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {

        System.out.println("hello ");
        System.out.println("Hello group nr.5");

        Scanner scanner = new Scanner(System.in);

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
                String username = scanner.nextLine();

            }
        }

    }
}
