import java.util.Scanner;

    class QuizQuestion {
            String question;
            String answer;
            String userAnswer;    QuizQuestion(String question, String answer) {
                this.question = question;
                this.answer = answer;
            }    void display() {
                System.out.println(question);
            }    boolean checkAnswer(String userAnswer) {
                return userAnswer.equalsIgnoreCase(answer);
            }
        }class Quiz {
            QuizQuestion[] questions;
            int score;    Quiz(QuizQuestion[] questions) {
                this.questions = questions;
            }    void run() {
                Scanner input = new Scanner(System.in);
                for (QuizQuestion question : questions) {
                    question.display();
                    System.out.print("Answer: ");
                    question.userAnswer = input.nextLine();
                    if (question.checkAnswer(question.userAnswer)) {
                        score++;
                    }
                }
                System.out.println("Your score: " + score + " / " + questions.length);
            }
        }public class gpt {
            public static void main(String[] args) {
                QuizQuestion[] questions = {
                        new QuizQuestion("What is the capital of France?", "Paris"),
                        new QuizQuestion("What is the largest planet in the solar system?", "Jupiter"),
                        new QuizQuestion("Who painted the Mona Lisa?", "Leonardo da Vinci")
                };
                Quiz quiz = new Quiz(questions);
                quiz.run();
            }
        }


