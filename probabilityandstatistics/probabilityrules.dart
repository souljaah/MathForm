import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class ProbabilityRules extends StatelessWidget {
  final Color chosenColor;
  ProbabilityRules  ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Probability Rules and Distributions'),
        backgroundColor: chosenColor,
      ),
      body: Container(
        color: chosenColor,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Probability Rules and Distributions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Probability and statistics are branches of mathematics that deal with analyzing data and making predictions or inferences based on that data. Probability focuses on quantifying uncertainty and randomness, while statistics involves methods for collecting, analyzing, interpreting, and presenting data.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Probability Rules:\n\n1. Probability Basics: The probability of an event happening is a number between 0 and 1, where 0 indicates impossibility and 1 indicates certainty.\n\n2. Complement Rule: The probability of the complement of an event (not the event happening) is 1 minus the probability of the event itself.\n\n3. Addition Rule: The probability of either of two mutually exclusive events happening is the sum of their individual probabilities.\n\n4. Multiplication Rule (for Independent Events): The probability of two independent events both happening is the product of their individual probabilities.\n\n5. Conditional Probability: The probability of an event occurring given that another event has already occurred. It`s calculated as the probability of the intersection of the two events divided by the probability of the given condition.\n\n6. Bayes` Theorem: A way to update probabilities based on new evidence. It provides a method for revising the probability of a hypothesis in light of new information.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Probability Distributions:\n\n1. Discrete Probability Distributions: These distributions are applicable when the variable can only take on specific, isolated values. Examples include the Bernoulli distribution, binomial distribution, and Poisson distribution.\n\n2. Continuous Probability Distributions: These distributions apply when the variable can take on any value within a given range. Examples include the normal (Gaussian) distribution, exponential distribution, and uniform distribution.\n\n3. Normal Distribution: A bell-shaped curve characterized by its mean (average) and standard deviation. Many natural phenomena follow this distribution due to the central limit theorem.\n\n4. Binomial Distribution: Describes the number of successes in a fixed number of independent Bernoulli trials (experiments with two possible outcomes).\n\n5. Poisson Distribution: Models the number of events occurring in a fixed interval of time or space under certain conditions, such as rare occurrences.\n\n6. Exponential Distribution: Describes the time between events in a Poisson process, where events occur continuously and independently at a constant average rate.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'These rules and distributions serve as fundamental tools in probability and statistics for analyzing data, making predictions, and drawing conclusions. They are widely used in various fields, including science, engineering, finance, and social sciences.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Rolling a Die\n\nSuppose we roll a fair six-sided die. We want to calculate the probability of rolling an even number or a number greater than 4.\n\nStep 1: Define the Events\n\nLet:\n\nEvent A be rolling an even number (2, 4, or 6).\n\nEvent B be rolling a number greater than 4 (5 or 6).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Determine Individual Probabilities\n\nThe probability of rolling an even number (Event A) can be calculated by dividing the number of favorable outcomes by the total number of outcomes:\n\n P(A) = Number of even numbers/Total numbers of outcomes = 3/6 = 1/2\n\nSimilarly, the probability of rolling a number greater than 4 (Event B) is:\n\nP(B) = Number of numbers greater than 4/Total number of outcomes = 2/6 = 1/3\n\nStep 3: Apply Probability Rules\n\na) Union (Addition Rule): To find the probability of either Event A or Event B happening, we sum the probabilities of A and B. Since A and B are mutually exclusive (you can`t roll both an even number and a number greater than 4 simultaneously on a single roll), we can use the addition rule.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nP(A∪B)=P(A)+P(B)\n\nP(A∪B)=1/2 + 1/3 = 3/6 + 2/6 = 5/6\n\nSo, the probability of rolling an even number or a number greater than 4 is 5/6.\n\nb) Complement Rule: The complement of Event A (not rolling an even number) is rolling an odd number. The probability of this is:\n\nP(A`)= 1 -P(A) = 1- 1/2 = 1/2\n\nSimilarly, the complement of Event B (not rolling a number greater than 4) is rolling a number less than or equal to 4, so:\n\nP(B`)= 1-P(B) = 1-1/3= 2/3\n\nStep 4: Interpretation\n\nThe probability of rolling an even number or a number greater than 4 is 5/6\n\nThe probability of not rolling an even number is 1/2, and the probability of not rolling a number greater than 4 is 2/3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThis example demonstrates the application of probability rules (addition rule, complement rule) in calculating probabilities based on events related to rolling a die.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nA fair six-sided die is rolled. Find the probability of rolling an even number or a number greater than 4.',
                solution: 'Solution:\n\n'
                    '1. Define the Events:\n'
                    '   Let:\n'
                    '   Event A be rolling an even number (2, 4, or 6).\n'
                    '   Event B be rolling a number greater than 4 (5 or 6).\n\n'
                    '2. Determine Individual Probabilities:\n'
                    '   Probability of rolling an even number (Event A):\n'
                    '   P(A) = Number of even numbers / Total number of outcomes\n'
                    '        = 3 / 6\n'
                    '        = 1/2\n\n'
                    '   Probability of rolling a number greater than 4 (Event B):\n'
                    '   P(B) = Number of numbers greater than 4 / Total number of outcomes\n'
                    '        = 2 / 6\n'
                    '        = 1/3\n\n'
                    '3. Apply Probability Rules:\n'
                    '   a) Union (Addition Rule):\n'
                    '      P(A ∪ B) = P(A) + P(B)\n'
                    '               = 1/2 + 1/3\n'
                    '               = 5/6\n\n'
                    '   b) Complement Rule:\n'
                    '      Probability of not rolling an even number:\n'
                    '      P(A\') = 1 - P(A) = 1 - 1/2 = 1/2\n\n'
                    '      Probability of not rolling a number greater than 4:\n'
                    '      P(B\') = 1 - P(B) = 1 - 1/3 = 2/3\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of rolling an even number or a number greater than 4 is 5/6.\n'
                    '   - The probability of not rolling an even number is 1/2.\n'
                    '   - The probability of not rolling a number greater than 4 is 2/3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nA bag contains 5 red balls, 4 green balls, and 3 blue balls. If a ball is randomly selected from the bag, what is the probability that it is red or blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of selecting a red ball:\n'
                    '   P(Red) = Number of red balls / Total number of balls\n'
                    '          = 5 / (5 + 4 + 3)\n'
                    '          = 5 / 12\n\n'
                    '   Probability of selecting a blue ball:\n'
                    '   P(Blue) = Number of blue balls / Total number of balls\n'
                    '           = 3 / (5 + 4 + 3)\n'
                    '           = 3 / 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Union (Addition Rule):\n'
                    '      P(Red ∪ Blue) = P(Red) + P(Blue)\n'
                    '                     = 5/12 + 3/12\n'
                    '                     = 8/12\n'
                    '                     = 2/3\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a red ball or a blue ball from the bag is 2/3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nIn a class of 30 students, 18 students play basketball, 12 students play football, and 8 students play both basketball and football. What is the probability that a randomly selected student plays basketball or football?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of playing basketball:\n'
                    '   P(Basketball) = Number of basketball players / Total number of students\n'
                    '                  = 18 / 30\n'
                    '                  = 3/5\n\n'
                    '   Probability of playing football:\n'
                    '   P(Football) = Number of football players / Total number of students\n'
                    '               = 12 / 30\n'
                    '               = 2/5\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Union (Addition Rule):\n'
                    '      P(Basketball ∪ Football) = P(Basketball) + P(Football)\n'
                    '                                = 3/5 + 2/5\n'
                    '                                = 5/5\n'
                    '                                = 1\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student playing basketball or football is 1 (or 100%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nA box contains 8 blue balls and 6 red balls. If a ball is randomly selected from the box and then replaced, and this process is repeated twice, what is the probability of selecting a blue ball both times?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of selecting a blue ball on the first draw:\n'
                    '   P(Blue on 1st draw) = Number of blue balls / Total number of balls\n'
                    '                       = 8 / (8 + 6)\n'
                    '                       = 8 / 14\n\n'
                    '2. Since the ball is replaced after each draw, the probability remains the same for the second draw.\n\n'
                    '3. Apply Probability Rules:\n'
                    '   a) Multiplication Rule (for Independent Events):\n'
                    '      P(Blue on both draws) = P(Blue on 1st draw) * P(Blue on 2nd draw)\n'
                    '                             = (8/14) * (8/14)\n'
                    '                             = 64/196\n'
                    '                             = 16/49\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of selecting a blue ball both times is 16/49.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nA company produces smartphones with three models: Model A, Model B, and Model C. The probabilities of a customer purchasing each model are as follows:\n'
                    '   - Model A: 0.4\n'
                    '   - Model B: 0.3\n'
                    '   - Model C: 0.3\n'
                    'If a customer purchases a smartphone, what is the probability that they will choose Model A or Model B?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of choosing Model A:\n'
                    '   P(Model A) = 0.4\n\n'
                    '   Probability of choosing Model B:\n'
                    '   P(Model B) = 0.3\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Union (Addition Rule):\n'
                    '      P(Model A ∪ Model B) = P(Model A) + P(Model B)\n'
                    '                            = 0.4 + 0.3\n'
                    '                            = 0.7\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a customer choosing Model A or Model B is 0.7 (or 70%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nA card is drawn from a standard deck of 52 playing cards. What is the probability of drawing a red card (hearts or diamonds)?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red cards (hearts or diamonds) = 26 (13 hearts + 13 diamonds)\n'
                    '   Total number of cards = 52\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of drawing a red card:\n'
                    '      P(Red card) = Number of red cards / Total number of cards\n'
                    '                  = 26 / 52\n'
                    '                  = 0.5\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of drawing a red card from a standard deck is 0.5 (or 50%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nSuppose a fair six-sided die is rolled. What is the probability of rolling a prime number?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Prime numbers on a six-sided die: 2, 3, 5\n'
                    '   Total number of outcomes on a die = 6\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of rolling a prime number:\n'
                    '      P(Prime number) = Number of prime numbers / Total number of outcomes\n'
                    '                       = 3 / 6\n'
                    '                       = 0.5\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of rolling a prime number on a fair six-sided die is 0.5 (or 50%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nIn a game, a spinner is divided into 8 equal sections, numbered 1 through 8. If the spinner is spun once, what is the probability of landing on a multiple of 3?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Multiples of 3 on the spinner: 3, 6\n'
                    '   Total number of sections on the spinner = 8\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of landing on a multiple of 3:\n'
                    '      P(Multiple of 3) = Number of multiples of 3 / Total number of sections\n'
                    '                        = 2 / 8\n'
                    '                        = 0.25\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of landing on a multiple of 3 when spinning the spinner is 0.25 (or 25%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nA jar contains 5 red marbles, 4 blue marbles, and 3 green marbles. If a marble is randomly selected from the jar, what is the probability of selecting a blue marble?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of blue marbles = 4\n'
                    '   Total number of marbles = 5 + 4 + 3 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a blue marble:\n'
                    '      P(Blue marble) = Number of blue marbles / Total number of marbles\n'
                    '                      = 4 / 12\n'
                    '                      = 1/3\n'
                    '                      ≈ 0.3333\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a blue marble from the jar is approximately 0.3333 (or 33.33%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nA box contains 2 red balls, 3 green balls, and 5 blue balls. If a ball is randomly drawn from the box, what is the probability of selecting a red or green ball?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 2\n'
                    '   Number of green balls = 3\n'
                    '   Total number of balls = 2 + 3 + 5 = 10\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a red or green ball (Union of events):\n'
                    '      P(Red or Green ball) = P(Red ball) + P(Green ball)\n'
                    '                             = (2/10) + (3/10)\n'
                    '                             = 5/10\n'
                    '                             = 0.5\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a red or green ball from the box is 0.5 (or 50%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nIn a class of 30 students, 20 students play basketball, 15 students play soccer, and 10 students play both basketball and soccer. If a student is randomly selected from the class, what is the probability that they play either basketball or soccer?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who play basketball = 20\n'
                    '   Number of students who play soccer = 15\n'
                    '   Number of students who play both basketball and soccer = 10\n'
                    '   Total number of students = 30\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of playing basketball or soccer (Union of events):\n'
                    '      P(Basketball or Soccer) = P(Basketball) + P(Soccer) - P(Basketball and Soccer)\n'
                    '                                = (20/30) + (15/30) - (10/30)\n'
                    '                                = (20 + 15 - 10) / 30\n'
                    '                                = 25/30\n'
                    '                                = 5/6\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a student playing either basketball or soccer is 5/6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nA bag contains 8 red marbles, 6 green marbles, and 4 blue marbles. If a marble is randomly selected from the bag and not replaced, and then a second marble is randomly selected, what is the probability that both marbles are green?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green marbles = 6\n'
                    '   Total number of marbles = 8 + 6 + 4 = 18\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a green marble first:\n'
                    '      P(First marble is green) = 6/18\n'
                    '                                 = 1/3\n\n'
                    '   b) Probability of selecting a green marble second (without replacement):\n'
                    '      P(Second marble is green after the first marble was green) = 5/17\n'
                    '                                                                 (5 green marbles left out of 17 marbles)\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(Both marbles are green) = P(First marble is green) * P(Second marble is green after the first marble was green)\n'
                    '                                 = (1/3) * (5/17)\n'
                    '                                 ≈ 0.0980\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two green marbles consecutively is approximately 0.0980.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nIn a survey of 150 people, 90 people like pizza, 60 people like burgers, and 30 people like both pizza and burgers. If a person is selected at random from the survey, what is the probability that they like either pizza or burgers?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of people who like pizza = 90\n'
                    '   Number of people who like burgers = 60\n'
                    '   Number of people who like both pizza and burgers = 30\n'
                    '   Total number of people surveyed = 150\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of liking pizza or burgers (Union of events):\n'
                    '      P(Pizza or Burgers) = P(Pizza) + P(Burgers) - P(Pizza and Burgers)\n'
                    '                            = (90/150) + (60/150) - (30/150)\n'
                    '                            = (90 + 60 - 30) / 150\n'
                    '                            = 120/150\n'
                    '                            = 4/5\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a person liking either pizza or burgers is 4/5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nA bag contains 4 red balls and 5 black balls. Two balls are drawn at random without replacement. What is the probability that the first ball is red and the second ball is black?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 4\n'
                    '   Number of black balls = 5\n'
                    '   Total number of balls = 4 + 5 = 9\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a red ball first:\n'
                    '      P(First ball is red) = 4/9\n\n'
                    '   b) Probability of selecting a black ball second (after a red ball was selected):\n'
                    '      P(Second ball is black after the first ball was red) = 5/8\n'
                    '                                                            (5 black balls left out of 8 balls after one red ball was removed)\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(First ball is red and second ball is black) = P(First ball is red) * P(Second ball is black after the first ball was red)\n'
                    '                                                     = (4/9) * (5/8)\n'
                    '                                                     ≈ 0.2778\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a red ball followed by a black ball is approximately 0.2778.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nA company produces two types of products: Product A and Product B. The probability of a defective product for each type is as follows:\n'
                    '   - Product A: 0.05\n'
                    '   - Product B: 0.1\n'
                    'If a defective product is randomly selected, what is the probability that it is Product A?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of a defective Product A = 0.05\n'
                    '   Probability of a defective Product B = 0.1\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a defective Product A:\n'
                    '      P(Defective Product A) = 0.05\n\n'
                    '   b) Probability of selecting a defective Product B:\n'
                    '      P(Defective Product B) = 0.1\n\n'
                    '3. Interpretation:\n'
                    '   - Since the probability of selecting a defective Product A is 0.05, the probability that a randomly selected defective product is Product A is 0.05 (or 5%).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nA box contains 6 red balls and 4 blue balls. Two balls are drawn at random with replacement. What is the probability that both balls are red?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 6\n'
                    '   Total number of balls = 6 + 4 = 10\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a red ball on each draw (with replacement):\n'
                    '      P(First ball is red) = P(Second ball is red) = 6/10 = 0.6\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(Both balls are red) = P(First ball is red) * P(Second ball is red)\n'
                    '                             = 0.6 * 0.6\n'
                    '                             = 0.36\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two red balls (with replacement) is 0.36.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nA box contains 5 white balls and 3 black balls. Two balls are drawn at random without replacement. What is the probability that the first ball is white and the second ball is black?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of white balls = 5\n'
                    '   Number of black balls = 3\n'
                    '   Total number of balls = 5 + 3 = 8\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a white ball first:\n'
                    '      P(First ball is white) = 5/8\n\n'
                    '   b) Probability of selecting a black ball second (after a white ball was selected):\n'
                    '      P(Second ball is black after the first ball was white) = 3/7\n'
                    '                                                             (3 black balls left out of 7 balls after one white ball was removed)\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(First ball is white and second ball is black) = P(First ball is white) * P(Second ball is black after the first ball was white)\n'
                    '                                                      = (5/8) * (3/7)\n'
                    '                                                      ≈ 0.2679\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a white ball followed by a black ball is approximately 0.2679.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nA box contains 8 red balls and 6 blue balls. Two balls are drawn at random without replacement. What is the probability that both balls are the same color?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 8\n'
                    '   Number of blue balls = 6\n'
                    '   Total number of balls = 8 + 6 = 14\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two red balls:\n'
                    '      P(Both balls are red) = (8/14) * (7/13)\n'
                    '                              ≈ 0.3028\n\n'
                    '   b) Probability of selecting two blue balls:\n'
                    '      P(Both balls are blue) = (6/14) * (5/13)\n'
                    '                               ≈ 0.1615\n\n'
                    '3. Add the probabilities for both events:\n'
                    '      P(Both balls are the same color) = P(Both balls are red) + P(Both balls are blue)\n'
                    '                                        ≈ 0.3028 + 0.1615\n'
                    '                                        ≈ 0.4643\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two balls of the same color is approximately 0.4643.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nA box contains 3 red balls, 4 green balls, and 5 blue balls. Three balls are drawn at random without replacement. What is the probability of selecting two green balls and one blue ball in any order?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green balls = 4\n'
                    '   Number of blue balls = 5\n'
                    '   Total number of balls = 3 + 4 + 5 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two green balls and one blue ball in any order:\n'
                    '      P(Green-Green-Blue or Green-Blue-Green or Blue-Green-Green) = P(Green-Green-Blue) + P(Green-Blue-Green) + P(Blue-Green-Green)\n'
                    '                                                                    = (4/12) * (3/11) * (5/10) + (4/12) * (5/11) * (3/10) + (5/12) * (4/11) * (3/10)\n\n'
                    '3. Simplify and calculate the probabilities:\n'
                    '      P(Green-Green-Blue or Green-Blue-Green or Blue-Green-Green) = 60/220 + 60/220 + 60/220\n'
                    '                                                                   = 180/220\n'
                    '                                                                   = 9/11\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two green balls and one blue ball in any order is 9/11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nIn a group of 50 people, 30 people like ice cream, 25 people like cake, and 15 people like both ice cream and cake. If a person is randomly selected from the group, what is the probability that they like ice cream or cake?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of people who like ice cream = 30\n'
                    '   Number of people who like cake = 25\n'
                    '   Number of people who like both ice cream and cake = 15\n'
                    '   Total number of people = 50\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of liking ice cream or cake (Union of events):\n'
                    '      P(Ice cream or Cake) = P(Ice cream) + P(Cake) - P(Ice cream and Cake)\n'
                    '                             = (30/50) + (25/50) - (15/50)\n'
                    '                             = (30 + 25 - 15) / 50\n'
                    '                             = 40/50\n'
                    '                             = 4/5\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a person liking either ice cream or cake is 4/5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nA box contains 8 red balls and 5 blue balls. If two balls are drawn at random without replacement, what is the probability that at least one ball is blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 8\n'
                    '   Number of blue balls = 5\n'
                    '   Total number of balls = 8 + 5 = 13\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two red balls:\n'
                    '      P(Both balls are red) = (8/13) * (7/12)\n\n'
                    '3. Calculate the probability of at least one blue ball:\n'
                    '      P(At least one blue ball) = 1 - P(Both balls are red)\n'
                    '                                 = 1 - ((8/13) * (7/12))\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of drawing at least one blue ball is approximately 0.6154.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nIn a group of 60 students, 40 students study Mathematics and 35 students study Physics. If 25 students study both Mathematics and Physics, what is the probability that a randomly selected student studies Mathematics or Physics?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students studying Mathematics = 40\n'
                    '   Number of students studying Physics = 35\n'
                    '   Number of students studying both Mathematics and Physics = 25\n'
                    '   Total number of students = 60\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of studying Mathematics or Physics (Union of events):\n'
                    '      P(Mathematics or Physics) = P(Mathematics) + P(Physics) - P(Mathematics and Physics)\n'
                    '                                  = (40/60) + (35/60) - (25/60)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student studying Mathematics or Physics is 5/6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nA bag contains 7 red balls, 5 green balls, and 4 blue balls. Two balls are drawn at random without replacement. What is the probability that the first ball is green and the second ball is blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green balls = 5\n'
                    '   Number of blue balls = 4\n'
                    '   Total number of balls = 7 + 5 + 4 = 16\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a green ball first:\n'
                    '      P(First ball is green) = 5/16\n\n'
                    '   b) Probability of selecting a blue ball second (after a green ball was selected):\n'
                    '      P(Second ball is blue after the first ball was green) = 4/15\n'
                    '                                                             (4 blue balls left out of 15 balls after one green ball was removed)\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(First ball is green and second ball is blue) = P(First ball is green) * P(Second ball is blue after the first ball was green)\n'
                    '                                                      = (5/16) * (4/15)\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of selecting a green ball followed by a blue ball is approximately 0.0833.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nIn a game, a six-sided fair die is rolled twice. What is the probability of rolling a 4 on the first roll and a 6 on the second roll?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Probability of rolling a 4 on the first roll = 1/6\n'
                    '   Probability of rolling a 6 on the second roll = 1/6\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of rolling a 4 on the first roll and a 6 on the second roll:\n'
                    '      P(First roll is 4 and second roll is 6) = (1/6) * (1/6)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of rolling a 4 on the first roll and a 6 on the second roll is approximately 0.0278.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nA box contains 10 red balls, 6 green balls, and 4 blue balls. If three balls are drawn at random without replacement, what is the probability of selecting at least one blue ball?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of blue balls = 4\n'
                    '   Total number of balls = 10 + 6 + 4 = 20\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of not selecting any blue balls:\n'
                    '      P(Not selecting any blue balls) = (16/20) * (15/19) * (14/18)\n\n'
                    '3. Calculate the probability of selecting at least one blue ball:\n'
                    '      P(At least one blue ball) = 1 - P(Not selecting any blue balls)\n'
                    '                                 = 1 - ((16/20) * (15/19) * (14/18))\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of selecting at least one blue ball is approximately 0.5921.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nA box contains 6 red balls, 4 green balls, and 2 blue balls. Three balls are drawn at random without replacement. What is the probability of selecting exactly one green ball?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green balls = 4\n'
                    '   Total number of balls = 6 + 4 + 2 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting exactly one green ball:\n'
                    '      - Choose 1 green ball: C(4, 1)\n'
                    '      - Choose 2 non-green balls: C(8, 2) (6 red + 2 blue)\n'
                    '      - Total possible outcomes: C(12, 3)\n'
                    '      - P(Exactly one green ball) = (C(4, 1) * C(8, 2)) / C(12, 3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting exactly one green ball is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nA box contains 5 red balls and 3 blue balls. Two balls are drawn at random with replacement. What is the probability that both balls are red?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 5\n'
                    '   Total number of balls = 5 + 3 = 8\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a red ball on each draw (with replacement):\n'
                    '      P(First ball is red) = P(Second ball is red) = 5/8\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(Both balls are red) = P(First ball is red) * P(Second ball is red)\n'
                    '                             = (5/8) * (5/8)\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of drawing two red balls (with replacement) is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nA box contains 10 balls, numbered from 1 to 10. If one ball is drawn at random, what is the probability that the number on the ball is a multiple of 3 or 5?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of balls that are multiples of 3 = 3 (3, 6, 9)\n'
                    '   Number of balls that are multiples of 5 = 2 (5, 10)\n'
                    '   Number of balls that are multiples of both 3 and 5 (15) = 0\n'
                    '   Total number of balls = 10\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a ball that is a multiple of 3 or 5 (Union of events):\n'
                    '      P(Multiple of 3 or 5) = P(Multiple of 3) + P(Multiple of 5) - P(Multiple of 3 and 5)\n'
                    '                              = (3/10) + (2/10) - (0/10)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting a ball that is a multiple of 3 or 5 is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nIn a group of 80 students, 50 students play football and 40 students play basketball. If 30 students play both football and basketball, what is the probability that a randomly selected student plays either football or basketball?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who play football = 50\n'
                    '   Number of students who play basketball = 40\n'
                    '   Number of students who play both football and basketball = 30\n'
                    '   Total number of students = 80\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of playing football or basketball (Union of events):\n'
                    '      P(Football or Basketball) = P(Football) + P(Basketball) - P(Football and Basketball)\n'
                    '                                  = (50/80) + (40/80) - (30/80)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student playing either football or basketball is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nIn a box, there are 8 red balls, 5 green balls, and 4 blue balls. If two balls are drawn at random without replacement, what is the probability that at least one ball is green?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green balls = 5\n'
                    '   Total number of balls = 8 + 5 + 4 = 17\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of not selecting any green balls:\n'
                    '      P(Not selecting any green balls) = (12/17) * (11/16)\n\n'
                    '3. Calculate the probability of selecting at least one green ball:\n'
                    '      P(At least one green ball) = 1 - P(Not selecting any green balls)\n'
                    '                                 = 1 - ((12/17) * (11/16))\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of selecting at least one green ball is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nIn a deck of 52 playing cards, what is the probability of drawing a heart or a diamond?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of hearts = 13\n'
                    '   Number of diamonds = 13\n'
                    '   Total number of cards = 52\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of drawing a heart or a diamond (Union of events):\n'
                    '      P(Heart or Diamond) = P(Heart) + P(Diamond) - P(Heart and Diamond)\n'
                    '                            = (13/52) + (13/52) - (0/52)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of drawing a heart or a diamond from a standard deck of 52 cards is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nA bag contains 8 red balls and 6 blue balls. If two balls are drawn at random without replacement, what is the probability that one ball is red and one ball is blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 8\n'
                    '   Number of blue balls = 6\n'
                    '   Total number of balls = 8 + 6 = 14\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting one red ball and one blue ball:\n'
                    '      - Choose 1 red ball: C(8, 1)\n'
                    '      - Choose 1 blue ball: C(6, 1)\n'
                    '      - Total possible outcomes: C(14, 2)\n'
                    '      - P(One red ball and one blue ball) = (C(8, 1) * C(6, 1)) / C(14, 2)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting one red ball and one blue ball is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nIn a group of 60 students, 30 students study Mathematics, 25 students study Physics, and 20 students study Chemistry. If 15 students study both Mathematics and Physics, 10 students study both Physics and Chemistry, and 5 students study all three subjects, what is the probability that a randomly selected student studies at least one of the subjects?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who study Mathematics = 30\n'
                    '   Number of students who study Physics = 25\n'
                    '   Number of students who study Chemistry = 20\n'
                    '   Number of students who study both Mathematics and Physics = 15\n'
                    '   Number of students who study both Physics and Chemistry = 10\n'
                    '   Number of students who study all three subjects = 5\n'
                    '   Total number of students = 60\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of studying at least one subject (Union of events):\n'
                    '      P(Mathematics or Physics or Chemistry) = P(Mathematics) + P(Physics) + P(Chemistry) - P(Mathematics and Physics) - P(Physics and Chemistry) - P(Mathematics, Physics, and Chemistry)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student studying at least one subject is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nA box contains 12 red balls, 8 green balls, and 6 blue balls. If three balls are drawn at random without replacement, what is the probability of selecting two red balls and one blue ball?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 12\n'
                    '   Number of green balls = 8\n'
                    '   Number of blue balls = 6\n'
                    '   Total number of balls = 12 + 8 + 6 = 26\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two red balls and one blue ball:\n'
                    '      - Choose 2 red balls: C(12, 2)\n'
                    '      - Choose 1 blue ball: C(6, 1)\n'
                    '      - Total possible outcomes: C(26, 3)\n'
                    '      - P(Two red balls and one blue ball) = (C(12, 2) * C(6, 1)) / C(26, 3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two red balls and one blue ball is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nA fair coin is flipped three times. What is the probability of getting exactly two heads?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Total number of outcomes for flipping a coin = 2 (Heads, Tails)\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of getting exactly two heads:\n'
                    '      - Number of favorable outcomes = C(3, 2) (Selecting 2 heads out of 3 flips)\n'
                    '      - Total possible outcomes = 2^3 (Total number of outcomes for 3 coin flips)\n'
                    '      - P(Exactly two heads) = (C(3, 2) / 2^3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of getting exactly two heads when flipping a fair coin three times is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nIn a group of 50 students, 30 students like pizza, 25 students like burgers, and 20 students like both pizza and burgers. If a student is chosen randomly, what is the probability that the student likes either pizza or burgers?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who like pizza = 30\n'
                    '   Number of students who like burgers = 25\n'
                    '   Number of students who like both pizza and burgers = 20\n'
                    '   Total number of students = 50\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of liking either pizza or burgers (Union of events):\n'
                    '      P(Pizza or Burgers) = P(Pizza) + P(Burgers) - P(Pizza and Burgers)\n'
                    '                            = (30/50) + (25/50) - (20/50)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly chosen student liking either pizza or burgers is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nA bag contains 5 red balls, 4 green balls, and 3 blue balls. If two balls are drawn at random with replacement, what is the probability that both balls are red?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 5\n'
                    '   Total number of balls = 5 + 4 + 3 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting a red ball on each draw (with replacement):\n'
                    '      P(First ball is red) = P(Second ball is red) = 5/12\n\n'
                    '3. Multiply the probabilities for both events:\n'
                    '      P(Both balls are red) = P(First ball is red) * P(Second ball is red)\n'
                    '                             = (5/12) * (5/12)\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of drawing two red balls (with replacement) is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nA box contains 8 white balls, 5 black balls, and 4 red balls. If three balls are drawn at random without replacement, what is the probability of selecting one ball of each color?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of white balls = 8\n'
                    '   Number of black balls = 5\n'
                    '   Number of red balls = 4\n'
                    '   Total number of balls = 8 + 5 + 4 = 17\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting one ball of each color:\n'
                    '      - Choose 1 white ball: C(8, 1)\n'
                    '      - Choose 1 black ball: C(5, 1)\n'
                    '      - Choose 1 red ball: C(4, 1)\n'
                    '      - Total possible outcomes: C(17, 3)\n'
                    '      - P(One ball of each color) = (C(8, 1) * C(5, 1) * C(4, 1)) / C(17, 3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting one ball of each color is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nA box contains 10 red balls and 8 blue balls. If four balls are drawn at random without replacement, what is the probability that at least two balls are red?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 10\n'
                    '   Total number of balls = 10 + 8 = 18\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of not selecting any red balls:\n'
                    '      P(Not selecting any red balls) = (8/18) * (7/17) * (6/16) * (5/15)\n\n'
                    '3. Calculate the probability of selecting at least two red balls:\n'
                    '      P(At least two red balls) = 1 - P(Not selecting any red balls) - P(Selecting exactly one red ball)\n\n'
                    '4. Interpretation:\n'
                    '   - The probability of selecting at least two red balls out of four drawn is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nA jar contains 12 red candies, 8 green candies, and 6 blue candies. If two candies are drawn at random without replacement, what is the probability that both candies are green?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of green candies = 8\n'
                    '   Total number of candies = 12 + 8 + 6 = 26\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two green candies:\n'
                    '      - Choose 2 green candies: C(8, 2)\n'
                    '      - Total possible outcomes: C(26, 2)\n'
                    '      - P(Both candies are green) = (C(8, 2)) / C(26, 2)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two green candies is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nIn a group of 80 students, 50 students study English, 40 students study Mathematics, and 30 students study Science. If 20 students study English and Mathematics, 15 students study Mathematics and Science, and 10 students study all three subjects, what is the probability that a randomly selected student studies at least one subject?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who study English = 50\n'
                    '   Number of students who study Mathematics = 40\n'
                    '   Number of students who study Science = 30\n'
                    '   Number of students who study both English and Mathematics = 20\n'
                    '   Number of students who study both Mathematics and Science = 15\n'
                    '   Number of students who study all three subjects = 10\n'
                    '   Total number of students = 80\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of studying at least one subject (Union of events):\n'
                    '      P(English or Mathematics or Science) = P(English) + P(Mathematics) + P(Science) - P(English and Mathematics) - P(Mathematics and Science) - P(English, Mathematics, and Science)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student studying at least one subject is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nA box contains 6 red balls, 4 blue balls, and 2 green balls. If two balls are drawn at random without replacement, what is the probability that one ball is red and the other ball is green?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 6\n'
                    '   Number of blue balls = 4\n'
                    '   Number of green balls = 2\n'
                    '   Total number of balls = 6 + 4 + 2 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting one red ball and one green ball:\n'
                    '      - Choose 1 red ball: C(6, 1)\n'
                    '      - Choose 1 green ball: C(2, 1)\n'
                    '      - Total possible outcomes: C(12, 2)\n'
                    '      - P(One red ball and one green ball) = (C(6, 1) * C(2, 1)) / C(12, 2)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting one red ball and one green ball is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nA jar contains 20 marbles: 8 red marbles, 6 blue marbles, and 6 green marbles. If three marbles are drawn at random without replacement, what is the probability of selecting exactly two blue marbles?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of blue marbles = 6\n'
                    '   Total number of marbles = 20\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting exactly two blue marbles:\n'
                    '      - Choose 2 blue marbles: C(6, 2)\n'
                    '      - Choose 1 non-blue marble: C(14, 1)\n'
                    '      - Total possible outcomes: C(20, 3)\n'
                    '      - P(Exactly two blue marbles) = (C(6, 2) * C(14, 1)) / C(20, 3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting exactly two blue marbles is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nA box contains 5 red balls, 4 blue balls, and 3 green balls. If three balls are drawn at random without replacement, what is the probability of selecting two balls of the same color and one ball of a different color?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red balls = 5\n'
                    '   Number of blue balls = 4\n'
                    '   Number of green balls = 3\n'
                    '   Total number of balls = 5 + 4 + 3 = 12\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two balls of the same color and one ball of a different color:\n'
                    '      - Choose 2 balls of the same color: C(5, 2) + C(4, 2) + C(3, 2)\n'
                    '      - Choose 1 ball of a different color: 3 * 4 * 5 (three different color combinations)\n'
                    '      - Total possible outcomes: C(12, 3)\n'
                    '      - P(Two balls of the same color and one ball of a different color) = ((C(5, 2) + C(4, 2) + C(3, 2)) * 3 * 4 * 5) / C(12, 3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two balls of the same color and one ball of a different color is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nA fair six-sided die is rolled three times. What is the probability that the sum of the numbers rolled is 9?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Total number of outcomes for rolling a six-sided die = 6\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of getting a sum of 9:\n'
                    '      - List all possible outcomes that sum up to 9 (e.g., (3, 3, 3), (4, 3, 2), etc.)\n'
                    '      - Count the number of favorable outcomes\n'
                    '      - Total possible outcomes = 6^3\n'
                    '      - P(Sum of 9) = (Number of favorable outcomes) / (Total possible outcomes)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of getting a sum of 9 when rolling a fair six-sided die three times is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nIn a class of 40 students, 25 students play basketball, 20 students play football, and 15 students play both basketball and football. What is the probability that a randomly selected student plays at least one of the sports?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of students who play basketball = 25\n'
                    '   Number of students who play football = 20\n'
                    '   Number of students who play both basketball and football = 15\n'
                    '   Total number of students = 40\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of playing at least one sport (Union of events):\n'
                    '      P(Basketball or Football) = P(Basketball) + P(Football) - P(Basketball and Football)\n'
                    '                                   = (25/40) + (20/40) - (15/40)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of a randomly selected student playing at least one sport is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nA box contains 10 red balls and 6 blue balls. If two balls are drawn at random without replacement, what is the probability that both balls are blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of blue balls = 6\n'
                    '   Total number of balls = 10 + 6 = 16\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting two blue balls:\n'
                    '      - Choose 2 blue balls: C(6, 2)\n'
                    '      - Total possible outcomes: C(16, 2)\n'
                    '      - P(Both balls are blue) = (C(6, 2)) / C(16, 2)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting two blue balls is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nA bag contains 5 red marbles, 3 green marbles, and 2 blue marbles. If two marbles are drawn at random without replacement, what is the probability that one marble is red and the other marble is blue?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of red marbles = 5\n'
                    '   Number of blue marbles = 2\n'
                    '   Total number of marbles = 5 + 3 + 2 = 10\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting one red marble and one blue marble:\n'
                    '      - Choose 1 red marble: C(5, 1)\n'
                    '      - Choose 1 blue marble: C(2, 1)\n'
                    '      - Total possible outcomes: C(10, 2)\n'
                    '      - P(One red marble and one blue marble) = (C(5, 1) * C(2, 1)) / C(10, 2)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting one red marble and one blue marble is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nA fair six-sided die is rolled four times. What is the probability of getting at least one even number?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Total number of outcomes for rolling a six-sided die = 6\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of getting at least one even number:\n'
                    '      - Find the complement probability of getting all odd numbers\n'
                    '      - P(At least one even number) = 1 - P(All odd numbers)\n'
                    '                                   = 1 - (3/6)^4\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of getting at least one even number when rolling a fair six-sided die four times is calculated.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nA box contains 12 white balls and 8 black balls. If three balls are drawn at random with replacement, what is the probability that all three balls are black?',
                solution: 'Solution:\n\n'
                    '1. Determine Individual Probabilities:\n'
                    '   Number of black balls = 8\n'
                    '   Total number of balls = 12 + 8 = 20\n\n'
                    '2. Apply Probability Rules:\n'
                    '   a) Probability of selecting three black balls (with replacement):\n'
                    '      - Choose 3 black balls: C(8, 3)\n'
                    '      - Total possible outcomes: 20^3\n'
                    '      - P(All three balls are black) = (C(8, 3)) / (20^3)\n\n'
                    '3. Interpretation:\n'
                    '   - The probability of selecting all three balls as black (with replacement) is calculated using combinations.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
