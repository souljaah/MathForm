import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class EquationPage extends StatelessWidget {
  final Color chosenColor;
  EquationPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equation and Inequalities'),
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
                'Equation and Inequalities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebraic Equations and Inequalities are fundamental concepts in mathematics, particularly in the branch of algebra.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Equations: An equation is a mathematical statement that asserts the equality of two expressions. It typically contains one or more variables and specifies that the expressions on both sides of the equals sign have the same value. Solving an equation involves finding the values of the variables that make the equation true. For example, x + 2= 7 is an equation, and solving it yields x = 5. Equations can be linear, quadratic, cubic, etc., depending on the highest power of the variable involved. They can also be systems of equations, where multiple equations with multiple variables are solved simultaneously.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Inequalties: An inequality is a mathematical statement that asserts a relationship between two expressions, indicating that one is less than, greater than, less than or equal to, or greater than or equal to the other. Unlike equations, inequalities do not necessarily have a single solution; rather, they often represent a range of possible solutions. For example, x < 5 is an inequality, indicating take x can take any value less than 5.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Like equations, inequalities can also be linear, quadratic, etc., and can involve multiple variables. Solving an inequality involves finding the range of values that satisfy the given condition.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample 1: Algebraic Equation',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nProblem: Solve for x in the equation 3x -7 =5.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Start with the given equation: 3x− 7 = 5.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nAdd 7 to both sides to isolate the term with x: 3x = 5 + 7 = 12',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nDivide both sides by 3 to solve for x: x = 12/3 = 4.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nFinal Answer: So, the solution to the equation is x = 4.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nExample 2: Algebraic Inequality',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nProblem: Solve for x in the inequality 2x + 3< 9.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Start with the given inequality: 2x + 3<9.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSubtract 3 from both sides to isolate the term with x:2x< 9 -3 = 6.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nDivide both sides by 2 to solve for x. But since you`re dividing by a positive number (2 in this case), the inequality`s direction remains the same: x < 6/2 = 3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nFinal Answer: So, the solution to the inequality is x < 3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSolve the equation: 2x - 3 = 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x - 3 = 5.\n\n'
                    '2. Add 3 to both sides to isolate the term with x: 2x = 5 + 3 = 8.\n\n'
                    '3. Divide both sides by 2 to solve for x: x = 8 / 2 = 4.\n\n'
                    'Final Answer: The solution to the equation 2x - 3 = 5 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSolve the equation: 3(x + 2) = 15.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3(x + 2) = 15.\n\n'
                    '2. Distribute 3 to both terms inside the parentheses: 3x + 6 = 15.\n\n'
                    '3. Subtract 6 from both sides to isolate the term with x: 3x = 15 - 6 = 9.\n\n'
                    '4. Divide both sides by 3 to solve for x: x = 9 / 3 = 3.\n\n'
                    'Final Answer: The solution to the equation 3(x + 2) = 15 is x = 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSolve the equation: 2(x - 4) = 10.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2(x - 4) = 10.\n\n'
                    '2. Distribute 2 to both terms inside the parentheses: 2x - 8 = 10.\n\n'
                    '3. Add 8 to both sides to isolate the term with x: 2x = 10 + 8 = 18.\n\n'
                    '4. Divide both sides by 2 to solve for x: x = 18 / 2 = 9.\n\n'
                    'Final Answer: The solution to the equation 2(x - 4) = 10 is x = 9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSolve the inequality: 3x + 4 < 10.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3x + 4 < 10.\n\n'
                    '2. Subtract 4 from both sides to isolate the term with x: 3x < 10 - 4 = 6.\n\n'
                    '3. Divide both sides by 3. Since you\'re dividing by a positive number, the inequality direction remains the same: x < 6 / 3 = 2.\n\n'
                    'Final Answer: The solution to the inequality 3x + 4 < 10 is x < 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSolve the inequality: 2(x - 3) ≥ 8.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2(x - 3) ≥ 8.\n\n'
                    '2. Distribute 2 to both terms inside the parentheses: 2x - 6 ≥ 8.\n\n'
                    '3. Add 6 to both sides to isolate the term with x: 2x ≥ 8 + 6 = 14.\n\n'
                    '4. Divide both sides by 2. Since you\'re dividing by a positive number, the inequality direction remains the same: x ≥ 14 / 2 = 7.\n\n'
                    'Final Answer: The solution to the inequality 2(x - 3) ≥ 8 is x ≥ 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nSolve the inequality: 3(x - 2) > 15.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x - 2) > 15.\n\n'
                    '2. Distribute 3 to both terms inside the parentheses: 3x - 6 > 15.\n\n'
                    '3. Add 6 to both sides to isolate the term with x: 3x > 15 + 6 = 21.\n\n'
                    '4. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x > 21 / 3 = 7.\n\n'
                    'Final Answer: The solution to the inequality 3(x - 2) > 15 is x > 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nSolve the inequality: 4x + 7 ≤ 3x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4x + 7 ≤ 3x - 5.\n\n'
                    '2. Subtract 3x from both sides to isolate x on one side: 4x - 3x + 7 ≤ -5.\n\n'
                    '3. Combine like terms: x + 7 ≤ -5.\n\n'
                    '4. Subtract 7 from both sides to solve for x: x ≤ -5 - 7 = -12.\n\n'
                    'Final Answer: The solution to the inequality 4x + 7 ≤ 3x - 5 is x ≤ -12.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nSolve the inequality: 2(x + 4) ≥ 3(x - 2).',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2(x + 4) ≥ 3(x - 2).\n\n'
                    '2. Distribute 2 and 3 to both terms inside the parentheses: 2x + 8 ≥ 3x - 6.\n\n'
                    '3. Subtract 2x from both sides to isolate x on one side: 2x - 2x + 8 ≥ 3x - 2x - 6.\n\n'
                    '4. Combine like terms: 8 ≥ x - 6.\n\n'
                    '5. Add 6 to both sides to solve for x: 8 + 6 ≥ x - 6 + 6.\n\n'
                    '6. Simplify: 14 ≥ x.\n\n'
                    'Final Answer: The solution to the inequality 2(x + 4) ≥ 3(x - 2) is x ≤ 14.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nSolve the equation: 3x + 5 = 2x - 3.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3x + 5 = 2x - 3.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 3x - 2x + 5 = -3.\n\n'
                    '3. Combine like terms: x + 5 = -3.\n\n'
                    '4. Subtract 5 from both sides to solve for x: x = -3 - 5 = -8.\n\n'
                    'Final Answer: The solution to the equation 3x + 5 = 2x - 3 is x = -8.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nSolve the equation: 4(x - 2) = 8.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4(x - 2) = 8.\n\n'
                    '2. Distribute 4 to the term inside the parentheses: 4x - 8 = 8.\n\n'
                    '3. Add 8 to both sides to isolate the term with x: 4x = 8 + 8 = 16.\n\n'
                    '4. Divide both sides by 4 to solve for x: x = 16 / 4 = 4.\n\n'
                    'Final Answer: The solution to the equation 4(x - 2) = 8 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nSolve the equation: 2x - 3 = 3x + 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x - 3 = 3x + 2.\n\n'
                    '2. Subtract 3x from both sides to isolate x on one side: 2x - 3x - 3 = 2.\n\n'
                    '3. Combine like terms: -x - 3 = 2.\n\n'
                    '4. Add 3 to both sides to solve for x: -x = 2 + 3 = 5.\n\n'
                    '5. Multiply both sides by -1 to solve for x: x = -5.\n\n'
                    'Final Answer: The solution to the equation 2x - 3 = 3x + 2 is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nSolve the equation: 5x + 3 = 2(2x - 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 5x + 3 = 2(2x - 1).\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 5x + 3 = 4x - 2.\n\n'
                    '3. Subtract 4x from both sides to isolate x on one side: 5x - 4x + 3 = -2.\n\n'
                    '4. Combine like terms: x + 3 = -2.\n\n'
                    '5. Subtract 3 from both sides to solve for x: x = -2 - 3 = -5.\n\n'
                    'Final Answer: The solution to the equation 5x + 3 = 2(2x - 1) is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nSolve the inequality: 3x - 4 > 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3x - 4 > 5.\n\n'
                    '2. Add 4 to both sides to isolate the term with x: 3x > 5 + 4 = 9.\n\n'
                    '3. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x > 9 / 3 = 3.\n\n'
                    'Final Answer: The solution to the inequality 3x - 4 > 5 is x > 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nSolve the inequality: 2(x - 3) ≤ 4.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2(x - 3) ≤ 4.\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 2x - 6 ≤ 4.\n\n'
                    '3. Add 6 to both sides to isolate the term with x: 2x ≤ 4 + 6 = 10.\n\n'
                    '4. Divide both sides by 2 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≤ 10 / 2 = 5.\n\n'
                    'Final Answer: The solution to the inequality 2(x - 3) ≤ 4 is x ≤ 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nSolve the inequality: 4x + 3 ≥ 2x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4x + 3 ≥ 2x - 5.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 4x - 2x + 3 ≥ -5.\n\n'
                    '3. Combine like terms: 2x + 3 ≥ -5.\n\n'
                    '4. Subtract 3 from both sides to solve for x: 2x ≥ -5 - 3 = -8.\n\n'
                    '5. Divide both sides by 2 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≥ -8 / 2 = -4.\n\n'
                    'Final Answer: The solution to the inequality 4x + 3 ≥ 2x - 5 is x ≥ -4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nSolve the inequality: 3(x + 2) < 9.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x + 2) < 9.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x + 6 < 9.\n\n'
                    '3. Subtract 6 from both sides to isolate the term with x: 3x < 9 - 6 = 3.\n\n'
                    '4. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x < 3 / 3 = 1.\n\n'
                    'Final Answer: The solution to the inequality 3(x + 2) < 9 is x < 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nSolve the equation: 2x - 7 = x + 3.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x - 7 = x + 3.\n\n'
                    '2. Subtract x from both sides to isolate x on one side: 2x - x - 7 = 3.\n\n'
                    '3. Combine like terms: x - 7 = 3.\n\n'
                    '4. Add 7 to both sides to solve for x: x = 3 + 7 = 10.\n\n'
                    'Final Answer: The solution to the equation 2x - 7 = x + 3 is x = 10.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nSolve the equation: 3(2x - 4) = 2(x + 5).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3(2x - 4) = 2(x + 5).\n\n'
                    '2. Distribute 3 and 2 to both terms inside the parentheses: 6x - 12 = 2x + 10.\n\n'
                    '3. Subtract 2x from both sides to isolate x on one side: 6x - 2x - 12 = 10.\n\n'
                    '4. Combine like terms: 4x - 12 = 10.\n\n'
                    '5. Add 12 to both sides to solve for x: 4x = 10 + 12 = 22.\n\n'
                    '6. Divide both sides by 4 to solve for x: x = 22 / 4 = 5.5.\n\n'
                    'Final Answer: The solution to the equation 3(2x - 4) = 2(x + 5) is x = 5.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nSolve the equation: 4x - 3 = 2(3x + 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4x - 3 = 2(3x + 1).\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 4x - 3 = 6x + 2.\n\n'
                    '3. Subtract 6x from both sides to isolate x on one side: 4x - 6x - 3 = 2.\n\n'
                    '4. Combine like terms: -2x - 3 = 2.\n\n'
                    '5. Add 3 to both sides to solve for x: -2x = 2 + 3 = 5.\n\n'
                    '6. Divide both sides by -2 to solve for x: x = 5 / -2 = -2.5.\n\n'
                    'Final Answer: The solution to the equation 4x - 3 = 2(3x + 1) is x = -2.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nSolve the inequality: 2x + 4 < 3x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2x + 4 < 3x - 5.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 2x - 2x + 4 < 3x - 2x - 5.\n\n'
                    '3. Combine like terms: 4 < x - 5.\n\n'
                    '4. Add 5 to both sides to solve for x: 4 + 5 < x - 5 + 5.\n\n'
                    '5. Simplify: 9 < x.\n\n'
                    'Final Answer: The solution to the inequality 2x + 4 < 3x - 5 is x > 9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nSolve the inequality: 3(x - 2) ≥ 12.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x - 2) ≥ 12.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x - 6 ≥ 12.\n\n'
                    '3. Add 6 to both sides to isolate the term with x: 3x ≥ 12 + 6 = 18.\n\n'
                    '4. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≥ 18 / 3 = 6.\n\n'
                    'Final Answer: The solution to the inequality 3(x - 2) ≥ 12 is x ≥ 6.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nSolve the inequality: 4(x + 3) < 20.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4(x + 3) < 20.\n\n'
                    '2. Distribute 4 to the term inside the parentheses: 4x + 12 < 20.\n\n'
                    '3. Subtract 12 from both sides to isolate the term with x: 4x < 20 - 12 = 8.\n\n'
                    '4. Divide both sides by 4 to solve for x: x < 8 / 4 = 2.\n\n'
                    'Final Answer: The solution to the inequality 4(x + 3) < 20 is x < 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nSolve the inequality: 2x - 5 ≤ 3x + 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2x - 5 ≤ 3x + 2.\n\n'
                    '2. Subtract 3x from both sides to isolate x on one side: 2x - 3x - 5 ≤ 2.\n\n'
                    '3. Combine like terms: -x - 5 ≤ 2.\n\n'
                    '4. Add 5 to both sides to solve for x: -x ≤ 2 + 5 = 7.\n\n'
                    '5. Multiply both sides by -1 to solve for x. Remember, when multiplying or dividing by a negative number, flip the inequality sign: x ≥ 7 * -1.\n\n'
                    'Final Answer: The solution to the inequality 2x - 5 ≤ 3x + 2 is x ≥ -7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nSolve the inequality: 3(x - 4) > 9.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x - 4) > 9.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x - 12 > 9.\n\n'
                    '3. Add 12 to both sides to isolate the term with x: 3x > 9 + 12 = 21.\n\n'
                    '4. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x > 21 / 3 = 7.\n\n'
                    'Final Answer: The solution to the inequality 3(x - 4) > 9 is x > 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nSolve the inequality: 4(x + 5) ≤ 8.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4(x + 5) ≤ 8.\n\n'
                    '2. Distribute 4 to the term inside the parentheses: 4x + 20 ≤ 8.\n\n'
                    '3. Subtract 20 from both sides to isolate the term with x: 4x ≤ 8 - 20 = -12.\n\n'
                    '4. Divide both sides by 4 to solve for x: x ≤ -12 / 4 = -3.\n\n'
                    'Final Answer: The solution to the inequality 4(x + 5) ≤ 8 is x ≤ -3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nSolve the equation: 2x + 7 = x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x + 7 = x - 5.\n\n'
                    '2. Subtract x from both sides to isolate x on one side: 2x - x + 7 = -5.\n\n'
                    '3. Combine like terms: x + 7 = -5.\n\n'
                    '4. Subtract 7 from both sides to solve for x: x = -5 - 7 = -12.\n\n'
                    'Final Answer: The solution to the equation 2x + 7 = x - 5 is x = -12.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nSolve the equation: 3(x - 3) = 2(2x + 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3(x - 3) = 2(2x + 1).\n\n'
                    '2. Distribute 3 and 2 to both terms inside the parentheses: 3x - 9 = 4x + 2.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 3x - 3x - 9 = 4x - 3x + 2.\n\n'
                    '4. Combine like terms: -9 = x + 2.\n\n'
                    '5. Subtract 2 from both sides to solve for x: -9 - 2 = x + 2 - 2.\n\n'
                    '6. Simplify: -11 = x.\n\n'
                    'Final Answer: The solution to the equation 3(x - 3) = 2(2x + 1) is x = -11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nSolve the equation: 4(x + 2) = 3(x - 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4(x + 2) = 3(x - 1).\n\n'
                    '2. Distribute 4 and 3 to both terms inside the parentheses: 4x + 8 = 3x - 3.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 4x - 3x + 8 = -3.\n\n'
                    '4. Combine like terms: x + 8 = -3.\n\n'
                    '5. Subtract 8 from both sides to solve for x: x = -3 - 8 = -11.\n\n'
                    'Final Answer: The solution to the equation 4(x + 2) = 3(x - 1) is x = -11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nSolve the inequality: 2x - 3 > x + 4.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2x - 3 > x + 4.\n\n'
                    '2. Subtract x from both sides to isolate x on one side: 2x - x - 3 > x - x + 4.\n\n'
                    '3. Combine like terms: x - 3 > 4.\n\n'
                    '4. Add 3 to both sides to solve for x: x - 3 + 3 > 4 + 3.\n\n'
                    '5. Simplify: x > 7.\n\n'
                    'Final Answer: The solution to the inequality 2x - 3 > x + 4 is x > 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nSolve the inequality: 3(x + 1) < 6x - 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x + 1) < 6x - 2.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x + 3 < 6x - 2.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 3x - 3x + 3 < 6x - 3x - 2.\n\n'
                    '4. Combine like terms: 3 < 3x - 2.\n\n'
                    '5. Add 2 to both sides to solve for x: 3 + 2 < 3x - 2 + 2.\n\n'
                    '6. Simplify: 5 < 3x.\n\n'
                    '7. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: 5 / 3 < x.\n\n'
                    'Final Answer: The solution to the inequality 3(x + 1) < 6x - 2 is x > 5/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nSolve the inequality: 4(x - 2) ≥ 3(2x + 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4(x - 2) ≥ 3(2x + 1).\n\n'
                    '2. Distribute 4 and 3 to both terms inside the parentheses: 4x - 8 ≥ 6x + 3.\n\n'
                    '3. Subtract 6x from both sides to isolate x on one side: 4x - 6x - 8 ≥ 3.\n\n'
                    '4. Combine like terms: -2x - 8 ≥ 3.\n\n'
                    '5. Add 8 to both sides to solve for x: -2x - 8 + 8 ≥ 3 + 8.\n\n'
                    '6. Simplify: -2x ≥ 11.\n\n'
                    '7. Divide both sides by -2 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≤ 11 / -2.\n\n'
                    'Final Answer: The solution to the inequality 4(x - 2) ≥ 3(2x + 1) is x ≤ -11/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nSolve the equation: 3x + 5 = 2x - 3.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3x + 5 = 2x - 3.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 3x - 2x + 5 = -3.\n\n'
                    '3. Combine like terms: x + 5 = -3.\n\n'
                    '4. Subtract 5 from both sides to solve for x: x = -3 - 5 = -8.\n\n'
                    'Final Answer: The solution to the equation 3x + 5 = 2x - 3 is x = -8.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nSolve the equation: 4(x - 2) = 8.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4(x - 2) = 8.\n\n'
                    '2. Distribute 4 to the term inside the parentheses: 4x - 8 = 8.\n\n'
                    '3. Add 8 to both sides to isolate the term with x: 4x = 8 + 8 = 16.\n\n'
                    '4. Divide both sides by 4 to solve for x: x = 16 / 4 = 4.\n\n'
                    'Final Answer: The solution to the equation 4(x - 2) = 8 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nSolve the equation: 2x - 3 = 3x + 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x - 3 = 3x + 2.\n\n'
                    '2. Subtract 3x from both sides to isolate x on one side: 2x - 3x - 3 = 2.\n\n'
                    '3. Combine like terms: -x - 3 = 2.\n\n'
                    '4. Add 3 to both sides to solve for x: -x = 2 + 3 = 5.\n\n'
                    '5. Multiply both sides by -1 to solve for x: x = 5 * -1 = -5.\n\n'
                    'Final Answer: The solution to the equation 2x - 3 = 3x + 2 is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nSolve the equation: 5x + 3 = 2(2x - 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 5x + 3 = 2(2x - 1).\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 5x + 3 = 4x - 2.\n\n'
                    '3. Subtract 4x from both sides to isolate x on one side: 5x - 4x + 3 = -2.\n\n'
                    '4. Combine like terms: x + 3 = -2.\n\n'
                    '5. Subtract 3 from both sides to solve for x: x = -2 - 3 = -5.\n\n'
                    'Final Answer: The solution to the equation 5x + 3 = 2(2x - 1) is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nSolve the inequality: 3x - 4 > 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3x - 4 > 5.\n\n'
                    '2. Add 4 to both sides to isolate the term with x: 3x > 5 + 4 = 9.\n\n'
                    '3. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x > 9 / 3 = 3.\n\n'
                    'Final Answer: The solution to the inequality 3x - 4 > 5 is x > 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nSolve the inequality: 2(x - 3) ≤ 4.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2(x - 3) ≤ 4.\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 2x - 6 ≤ 4.\n\n'
                    '3. Add 6 to both sides to isolate the term with x: 2x ≤ 4 + 6 = 10.\n\n'
                    '4. Divide both sides by 2 to solve for x: x ≤ 10 / 2 = 5.\n\n'
                    'Final Answer: The solution to the inequality 2(x - 3) ≤ 4 is x ≤ 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nSolve the inequality: 4x + 3 ≥ 2x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4x + 3 ≥ 2x - 5.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 4x - 2x + 3 ≥ -5.\n\n'
                    '3. Combine like terms: 2x + 3 ≥ -5.\n\n'
                    '4. Subtract 3 from both sides to solve for x: 2x ≥ -5 - 3 = -8.\n\n'
                    '5. Divide both sides by 2 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≥ -8 / 2 = -4.\n\n'
                    'Final Answer: The solution to the inequality 4x + 3 ≥ 2x - 5 is x ≥ -4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nSolve the inequality: 3(x + 2) < 9.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x + 2) < 9.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x + 6 < 9.\n\n'
                    '3. Subtract 6 from both sides to isolate the term with x: 3x < 9 - 6 = 3.\n\n'
                    '4. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x < 3 / 3 = 1.\n\n'
                    'Final Answer: The solution to the inequality 3(x + 2) < 9 is x < 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nSolve the equation: 2x + 7 = x - 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x + 7 = x - 5.\n\n'
                    '2. Subtract x from both sides to isolate x on one side: 2x - x + 7 = -5.\n\n'
                    '3. Combine like terms: x + 7 = -5.\n\n'
                    '4. Subtract 7 from both sides to solve for x: x = -5 - 7 = -12.\n\n'
                    'Final Answer: The solution to the equation 2x + 7 = x - 5 is x = -12.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nSolve the equation: 3(x - 3) = 2(2x + 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3(x - 3) = 2(2x + 1).\n\n'
                    '2. Distribute 3 and 2 to both terms inside the parentheses: 3x - 9 = 4x + 2.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 3x - 3x - 9 = 4x - 3x + 2.\n\n'
                    '4. Combine like terms: -9 = x + 2.\n\n'
                    '5. Subtract 2 from both sides to solve for x: -9 - 2 = x + 2 - 2.\n\n'
                    '6. Simplify: -11 = x.\n\n'
                    'Final Answer: The solution to the equation 3(x - 3) = 2(2x + 1) is x = -11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nSolve the equation: 4(x + 2) = 3(x - 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4(x + 2) = 3(x - 1).\n\n'
                    '2. Distribute 4 and 3 to both terms inside the parentheses: 4x + 8 = 3x - 3.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 4x - 3x + 8 = -3.\n\n'
                    '4. Combine like terms: x + 8 = -3.\n\n'
                    '5. Subtract 8 from both sides to solve for x: x = -3 - 8 = -11.\n\n'
                    'Final Answer: The solution to the equation 4(x + 2) = 3(x - 1) is x = -11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nSolve the inequality: 2x - 3 > x + 4.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 2x - 3 > x + 4.\n\n'
                    '2. Subtract x from both sides to isolate x on one side: 2x - x - 3 > x - x + 4.\n\n'
                    '3. Combine like terms: x - 3 > 4.\n\n'
                    '4. Add 3 to both sides to solve for x: x - 3 + 3 > 4 + 3.\n\n'
                    '5. Simplify: x > 7.\n\n'
                    'Final Answer: The solution to the inequality 2x - 3 > x + 4 is x > 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nSolve the inequality: 3(x + 1) < 6x - 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3(x + 1) < 6x - 2.\n\n'
                    '2. Distribute 3 to the term inside the parentheses: 3x + 3 < 6x - 2.\n\n'
                    '3. Subtract 3x from both sides to isolate x on one side: 3x - 3x + 3 < 6x - 3x - 2.\n\n'
                    '4. Combine like terms: 3 < 3x - 2.\n\n'
                    '5. Add 2 to both sides to solve for x: 3 + 2 < 3x - 2 + 2.\n\n'
                    '6. Simplify: 5 < 3x.\n\n'
                    '7. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: 5 / 3 < x.\n\n'
                    'Final Answer: The solution to the inequality 3(x + 1) < 6x - 2 is x > 5/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nSolve the inequality: 4(x - 2) ≥ 3(2x + 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 4(x - 2) ≥ 3(2x + 1).\n\n'
                    '2. Distribute 4 and 3 to both terms inside the parentheses: 4x - 8 ≥ 6x + 3.\n\n'
                    '3. Subtract 6x from both sides to isolate x on one side: 4x - 6x - 8 ≥ 3.\n\n'
                    '4. Combine like terms: -2x - 8 ≥ 3.\n\n'
                    '5. Add 8 to both sides to solve for x: -2x - 8 + 8 ≥ 3 + 8.\n\n'
                    '6. Simplify: -2x ≥ 11.\n\n'
                    '7. Divide both sides by -2 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x ≤ 11 / -2.\n\n'
                    'Final Answer: The solution to the inequality 4(x - 2) ≥ 3(2x + 1) is x ≤ -11/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nSolve the equation: 3x + 5 = 2x - 3.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 3x + 5 = 2x - 3.\n\n'
                    '2. Subtract 2x from both sides to isolate x on one side: 3x - 2x + 5 = -3.\n\n'
                    '3. Combine like terms: x + 5 = -3.\n\n'
                    '4. Subtract 5 from both sides to solve for x: x = -3 - 5 = -8.\n\n'
                    'Final Answer: The solution to the equation 3x + 5 = 2x - 3 is x = -8.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nSolve the equation: 4(x - 2) = 8.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 4(x - 2) = 8.\n\n'
                    '2. Distribute 4 to the term inside the parentheses: 4x - 8 = 8.\n\n'
                    '3. Add 8 to both sides to isolate the term with x: 4x = 8 + 8 = 16.\n\n'
                    '4. Divide both sides by 4 to solve for x: x = 16 / 4 = 4.\n\n'
                    'Final Answer: The solution to the equation 4(x - 2) = 8 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nSolve the equation: 2x - 3 = 3x + 2.',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 2x - 3 = 3x + 2.\n\n'
                    '2. Subtract 3x from both sides to isolate x on one side: 2x - 3x - 3 = 2.\n\n'
                    '3. Combine like terms: -x - 3 = 2.\n\n'
                    '4. Add 3 to both sides to solve for x: -x = 2 + 3 = 5.\n\n'
                    '5. Multiply both sides by -1 to solve for x: x = 5 * -1 = -5.\n\n'
                    'Final Answer: The solution to the equation 2x - 3 = 3x + 2 is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nSolve the equation: 5x + 3 = 2(2x - 1).',
                solution: 'Solution:\n\n'
                    '1. Start with the given equation: 5x + 3 = 2(2x - 1).\n\n'
                    '2. Distribute 2 to the term inside the parentheses: 5x + 3 = 4x - 2.\n\n'
                    '3. Subtract 4x from both sides to isolate x on one side: 5x - 4x + 3 = -2.\n\n'
                    '4. Combine like terms: x + 3 = -2.\n\n'
                    '5. Subtract 3 from both sides to solve for x: x = -2 - 3 = -5.\n\n'
                    'Final Answer: The solution to the equation 5x + 3 = 2(2x - 1) is x = -5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nSolve the inequality: 3x - 4 > 5.',
                solution: 'Solution:\n\n'
                    '1. Start with the given inequality: 3x - 4 > 5.\n\n'
                    '2. Add 4 to both sides to isolate the term with x: 3x > 5 + 4 = 9.\n\n'
                    '3. Divide both sides by 3 to solve for x. Remember, when dividing by a negative number, flip the inequality sign: x > 9 / 3 = 3.\n\n'
                    'Final Answer: The solution to the inequality 3x - 4 > 5 is x > 3.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
