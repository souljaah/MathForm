import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class DifferentiationPage extends StatelessWidget {
  final Color chosenColor;
  DifferentiationPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Differentiation'),
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
                'Calculus Differentiation:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Calculus differentiation is a method used to find the rate at which a function changes. It involves computing derivatives, which represent how a functions output changes as its input varies. Geometrically, derivatives indicate the slope of the tangent line to the functions graph at any given point.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Key concepts in differentiation include:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. Derivative: Denotes as f`(x) or or df/dx, the derivative of function f(x) gives the rate of change of f(x) with respect to x',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Rules: Differentiation relies on rules such as the power rule, product rule, quotient rule, and chain rule, among others, to computer derivatives efficiently',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Applications: Derivatives have numerous applications, including analyzing rates of change, finding maximum and minimum values of functions, solving optimization problems, and understanding the behavior of functions in various contexts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Calculus Differentiation is a powerful tool that enables us to understand how functions behave and change, making it indispensable in many field such as physics, engineering, economics, and more',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nExample: Find the derivative of the function f(x) = 3x^2+2x-1.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nApply the Power Rule: The power rule states that if f(x) = ax^n, then f`(x)=n*ax^n-1. Appling this rule to each term of the function f(x), we get:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1: f`(x)= d/dx(3x^2)+d/dx(2x)-d/dx(1)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: = 3*2x^2-1 +2*1 x^1-1-0',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: = 6x+2',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nCombine like terms: Since there are no like terms to combine, we leave the result as f`(x)=6x-2.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nSo, the derivatives of the function f(x)= 3x^2 + 2x-1 is f`(x) = 6x-2',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nAnswer: f`(x)= 6x-2',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^3 - 6x^2 + 2x - 5.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^3 - 6x^2 + 2x - 5.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^3: 12x^2.\n'
                    '4. Differentiate -6x^2: -12x.\n'
                    '5. Differentiate 2x: 2.\n'
                    '6. The derivative of a constant (-5 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^2 - 12x + 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^4 - 3x^2 + 5x - 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^4 - 3x^2 + 5x - 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^4: 4x^3.\n'
                    '4. Differentiate -3x^2: -6x.\n'
                    '5. Differentiate 5x: 5.\n'
                    '6. The derivative of a constant (-7 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 4x^3 - 6x + 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^5 + 2x^3 - x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^5 + 2x^3 - x.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^5: 15x^4.\n'
                    '4. Differentiate 2x^3: 6x^2.\n'
                    '5. Differentiate -x: -1.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 15x^4 + 6x^2 - 1.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^6 - 4x^4 + 6x^2 - 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^6 - 4x^4 + 6x^2 - 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^6: 12x^5.\n'
                    '4. Differentiate -4x^4: -16x^3.\n'
                    '5. Differentiate 6x^2: 12x.\n'
                    '6. The derivative of a constant (-8 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^5 - 16x^3 + 12x.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^7 - 2x^5 + 3x^3 - 4x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^7 - 2x^5 + 3x^3 - 4x.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^7: 7x^6.\n'
                    '4. Differentiate -2x^5: -10x^4.\n'
                    '5. Differentiate 3x^3: 9x^2.\n'
                    '6. Differentiate -4x: -4.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 7x^6 - 10x^4 + 9x^2 - 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^2 + 3x + 5.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^2 + 3x + 5.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^2: 2x.\n'
                    '4. Differentiate 3x: 3.\n'
                    '5. The derivative of a constant (5 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 2x + 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^2 - 3x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^2 - 3x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^2: 8x.\n'
                    '4. Differentiate -3x: -3.\n'
                    '5. The derivative of a constant (7 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 8x - 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^3 - 2x^2 + 3x - 4.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^3 - 2x^2 + 3x - 4.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^3: 3x^2.\n'
                    '4. Differentiate -2x^2: -4x.\n'
                    '5. Differentiate 3x: 3.\n'
                    '6. The derivative of a constant (-4 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 3x^2 - 4x + 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^6 - 4x^4 + 6x^2 - 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^6 - 4x^4 + 6x^2 - 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^6: 12x^5.\n'
                    '4. Differentiate -4x^4: -16x^3.\n'
                    '5. Differentiate 6x^2: 12x.\n'
                    '6. The derivative of a constant (-8 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^5 - 16x^3 + 12x.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^7 - 2x^5 + 3x^3 - 4x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^7 - 2x^5 + 3x^3 - 4x.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^7: 7x^6.\n'
                    '4. Differentiate -2x^5: -10x^4.\n'
                    '5. Differentiate 3x^3: 9x^2.\n'
                    '6. Differentiate -4x: -4.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 7x^6 - 10x^4 + 9x^2 - 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^2 + 3x + 5.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^2 + 3x + 5.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^2: 2x.\n'
                    '4. Differentiate 3x: 3.\n'
                    '5. The derivative of a constant (5 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 2x + 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^2 - 3x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^2 - 3x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^2: 8x.\n'
                    '4. Differentiate -3x: -3.\n'
                    '5. The derivative of a constant (7 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 8x - 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^3 - 2x^2 + 3x - 4.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^3 - 2x^2 + 3x - 4.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^3: 3x^2.\n'
                    '4. Differentiate -2x^2: -4x.\n'
                    '5. Differentiate 3x: 3.\n'
                    '6. The derivative of a constant (-4 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 3x^2 - 4x + 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 5x^4 - 4x^3 + 3x^2 - 2x + 1.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 5x^4 - 4x^3 + 3x^2 - 2x + 1.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 5x^4: 20x^3.\n'
                    '4. Differentiate -4x^3: -12x^2.\n'
                    '5. Differentiate 3x^2: 6x.\n'
                    '6. Differentiate -2x: -2.\n'
                    '7. The derivative of a constant (1 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 20x^3 - 12x^2 + 6x - 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^5 + 3x^4 - 4x^3 + 5x^2 - 6x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^5 + 3x^4 - 4x^3 + 5x^2 - 6x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^5: 10x^4.\n'
                    '4. Differentiate 3x^4: 12x^3.\n'
                    '5. Differentiate -4x^3: -12x^2.\n'
                    '6. Differentiate 5x^2: 10x.\n'
                    '7. Differentiate -6x: -6.\n'
                    '8. The derivative of a constant (7 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 10x^4 + 12x^3 - 12x^2 + 10x - 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^6 + 2x^4 + 3x^2 + 4x + 5.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^6 + 2x^4 + 3x^2 + 4x + 5.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^6: 6x^5.\n'
                    '4. Differentiate 2x^4: 8x^3.\n'
                    '5. Differentiate 3x^2: 6x.\n'
                    '6. Differentiate 4x: 4.\n'
                    '7. The derivative of a constant (5 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 6x^5 + 8x^3 + 6x + 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^5 - 2x^4 + x^3 - 4x^2 + 5x - 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^5 - 2x^4 + x^3 - 4x^2 + 5x - 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^5: 15x^4.\n'
                    '4. Differentiate -2x^4: -8x^3.\n'
                    '5. Differentiate x^3: 3x^2.\n'
                    '6. Differentiate -4x^2: -8x.\n'
                    '7. Differentiate 5x: 5.\n'
                    '8. The derivative of a constant (-6 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 15x^4 - 8x^3 + 3x^2 - 8x + 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^3 - 5x^2 + 6x - 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^3 - 5x^2 + 6x - 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^3: 12x^2.\n'
                    '4. Differentiate -5x^2: -10x.\n'
                    '5. Differentiate 6x: 6.\n'
                    '6. The derivative of a constant (-7 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^2 - 10x + 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^4 - 3x^3 + 4x^2 - 5x + 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^4 - 3x^3 + 4x^2 - 5x + 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^4: 8x^3.\n'
                    '4. Differentiate -3x^3: -9x^2.\n'
                    '5. Differentiate 4x^2: 8x.\n'
                    '6. Differentiate -5x: -5.\n'
                    '7. The derivative of a constant (6 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 8x^3 - 9x^2 + 8x - 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^5 + 4x^4 - 5x^3 + 6x^2 - 7x + 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^5 + 4x^4 - 5x^3 + 6x^2 - 7x + 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^5: 15x^4.\n'
                    '4. Differentiate 4x^4: 16x^3.\n'
                    '5. Differentiate -5x^3: -15x^2.\n'
                    '6. Differentiate 6x^2: 12x.\n'
                    '7. Differentiate -7x: -7.\n'
                    '8. The derivative of a constant (8 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 15x^4 + 16x^3 - 15x^2 + 12x - 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^6 - 3x^5 + 4x^4 - 5x^3 + 6x^2 - 7x + 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^6 - 3x^5 + 4x^4 - 5x^3 + 6x^2 - 7x + 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^6: 12x^5.\n'
                    '4. Differentiate -3x^5: -15x^4.\n'
                    '5. Differentiate 4x^4: 16x^3.\n'
                    '6. Differentiate -5x^3: -15x^2.\n'
                    '7. Differentiate 6x^2: 12x.\n'
                    '8. Differentiate -7x: -7.\n'
                    '9. The derivative of a constant (8 in this case) is 0.\n'
                    '10. Combine the results:\n'
                    '    - f\'(x) = 12x^5 - 15x^4 + 16x^3 - 15x^2 + 12x - 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^5 - 2x^4 + 3x^3 - 4x^2 + 5x - 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^5 - 2x^4 + 3x^3 - 4x^2 + 5x - 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^5: 5x^4.\n'
                    '4. Differentiate -2x^4: -8x^3.\n'
                    '5. Differentiate 3x^3: 9x^2.\n'
                    '6. Differentiate -4x^2: -8x.\n'
                    '7. Differentiate 5x: 5.\n'
                    '8. The derivative of a constant (-6 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 5x^4 - 8x^3 + 9x^2 - 8x + 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^4 - 4x^3 + 5x^2 - 6x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^4 - 4x^3 + 5x^2 - 6x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^4: 12x^3.\n'
                    '4. Differentiate -4x^3: -12x^2.\n'
                    '5. Differentiate 5x^2: 10x.\n'
                    '6. Differentiate -6x: -6.\n'
                    '7. The derivative of a constant (7 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 12x^3 - 12x^2 + 10x - 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^3 - 3x^2 + 2x - 1.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^3 - 3x^2 + 2x - 1.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^3: 12x^2.\n'
                    '4. Differentiate -3x^2: -6x.\n'
                    '5. Differentiate 2x: 2.\n'
                    '6. The derivative of a constant (-1 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^2 - 6x + 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^2 - 4x + 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^2 - 4x + 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^2: 4x.\n'
                    '4. Differentiate -4x: -4.\n'
                    '5. The derivative of a constant (6 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 4x - 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^4 - 2x^3 + 3x^2 - 4x + 5.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^4 - 2x^3 + 3x^2 - 4x + 5.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^4: 4x^3.\n'
                    '4. Differentiate -2x^3: -6x^2.\n'
                    '5. Differentiate 3x^2: 6x.\n'
                    '6. Differentiate -4x: -4.\n'
                    '7. The derivative of a constant (5 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 4x^3 - 6x^2 + 6x - 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^5 - 4x^4 + 5x^3 - 6x^2 + 7x - 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^5 - 4x^4 + 5x^3 - 6x^2 + 7x - 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^5: 15x^4.\n'
                    '4. Differentiate -4x^4: -16x^3.\n'
                    '5. Differentiate 5x^3: 15x^2.\n'
                    '6. Differentiate -6x^2: -12x.\n'
                    '7. Differentiate 7x: 7.\n'
                    '8. The derivative of a constant (-8 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 15x^4 - 16x^3 + 15x^2 - 12x + 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^3 - 3x^2 + 5x - 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^3 - 3x^2 + 5x - 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^3: 3x^2.\n'
                    '4. Differentiate -3x^2: -6x.\n'
                    '5. Differentiate 5x: 5.\n'
                    '6. The derivative of a constant (-7 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 3x^2 - 6x + 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^2 + 4x + 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^2 + 4x + 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^2: 4x.\n'
                    '4. Differentiate 4x: 4.\n'
                    '5. The derivative of a constant (6 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 4x + 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^2 - 3x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^2 - 3x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^2: 2x.\n'
                    '4. Differentiate -3x: -3.\n'
                    '5. The derivative of a constant (7 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 2x - 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^2 - 6x + 9.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^2 - 6x + 9.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^2: 8x.\n'
                    '4. Differentiate -6x: -6.\n'
                    '5. The derivative of a constant (9 in this case) is 0.\n'
                    '6. Combine the results:\n'
                    '    - f\'(x) = 8x - 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^3 - 4x^2 + 5x - 2.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^3 - 4x^2 + 5x - 2.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^3: 9x^2.\n'
                    '4. Differentiate -4x^2: -8x.\n'
                    '5. Differentiate 5x: 5.\n'
                    '6. The derivative of a constant (-2 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 9x^2 - 8x + 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^4 - 2x^3 + 4x^2 - 6x + 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^4 - 2x^3 + 4x^2 - 6x + 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^4: 4x^3.\n'
                    '4. Differentiate -2x^3: -6x^2.\n'
                    '5. Differentiate 4x^2: 8x.\n'
                    '6. Differentiate -6x: -6.\n'
                    '7. The derivative of a constant (8 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 4x^3 - 6x^2 + 8x - 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 5x^3 - 6x^2 + 7x - 8.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 5x^3 - 6x^2 + 7x - 8.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 5x^3: 15x^2.\n'
                    '4. Differentiate -6x^2: -12x.\n'
                    '5. Differentiate 7x: 7.\n'
                    '6. The derivative of a constant (-8 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 15x^2 - 12x + 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^4 - 3x^3 + 4x^2 - 5x + 6.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^4 - 3x^3 + 4x^2 - 5x + 6.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^4: 8x^3.\n'
                    '4. Differentiate -3x^3: -9x^2.\n'
                    '5. Differentiate 4x^2: 8x.\n'
                    '6. Differentiate -5x: -5.\n'
                    '7. The derivative of a constant (6 in this case) is 0.\n'
                    '8. Combine the results:\n'
                    '    - f\'(x) = 8x^3 - 9x^2 + 8x - 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^5 - 4x^4 + 5x^3 - 6x^2 + 7x - 9.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^5 - 4x^4 + 5x^3 - 6x^2 + 7x - 9.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^5: 15x^4.\n'
                    '4. Differentiate -4x^4: -16x^3.\n'
                    '5. Differentiate 5x^3: 15x^2.\n'
                    '6. Differentiate -6x^2: -12x.\n'
                    '7. Differentiate 7x: 7.\n'
                    '8. The derivative of a constant (-9 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 15x^4 - 16x^3 + 15x^2 - 12x + 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^3 - 5x^2 + 6x - 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^3 - 5x^2 + 6x - 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^3: 12x^2.\n'
                    '4. Differentiate -5x^2: -10x.\n'
                    '5. Differentiate 6x: 6.\n'
                    '6. The derivative of a constant (-7 in this case) is 0.\n'
                    '7. Combine the results:\n'
                    '    - f\'(x) = 12x^2 - 10x + 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^5 - 3x^4 + 4x^3 - 5x^2 + 6x - 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^5 - 3x^4 + 4x^3 - 5x^2 + 6x - 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^5: 10x^4.\n'
                    '4. Differentiate -3x^4: -12x^3.\n'
                    '5. Differentiate 4x^3: 12x^2.\n'
                    '6. Differentiate -5x^2: -10x.\n'
                    '7. Differentiate 6x: 6.\n'
                    '8. The derivative of a constant (-7 in this case) is 0.\n'
                    '9. Combine the results:\n'
                    '    - f\'(x) = 10x^4 - 12x^3 + 12x^2 - 10x + 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^6 - 2x^5 + 3x^4 - 4x^3 + 5x^2 - 6x + 7.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^6 - 2x^5 + 3x^4 - 4x^3 + 5x^2 - 6x + 7.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^6: 6x^5.\n'
                    '4. Differentiate -2x^5: -10x^4.\n'
                    '5. Differentiate 3x^4: 12x^3.\n'
                    '6. Differentiate -4x^3: -12x^2.\n'
                    '7. Differentiate 5x^2: 10x.\n'
                    '8. Differentiate -6x: -6.\n'
                    '9. The derivative of a constant (7 in this case) is 0.\n'
                    '10. Combine the results:\n'
                    '    - f\'(x) = 6x^5 - 10x^4 + 12x^3 - 12x^2 + 10x - 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^7 - 4x^6 + 5x^5 - 6x^4 + 7x^3 - 8x^2 + 9x - 10.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^7 - 4x^6 + 5x^5 - 6x^4 + 7x^3 - 8x^2 + 9x - 10.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^7: 21x^6.\n'
                    '4. Differentiate -4x^6: -24x^5.\n'
                    '5. Differentiate 5x^5: 25x^4.\n'
                    '6. Differentiate -6x^4: -24x^3.\n'
                    '7. Differentiate 7x^3: 21x^2.\n'
                    '8. Differentiate -8x^2: -16x.\n'
                    '9. Differentiate 9x: 9.\n'
                    '10. The derivative of a constant (-10 in this case) is 0.\n'
                    '11. Combine the results:\n'
                    '    - f\'(x) = 21x^6 - 24x^5 + 25x^4 - 24x^3 + 21x^2 - 16x + 9.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^8 - 5x^7 + 6x^6 - 7x^5 + 8x^4 - 9x^3 + 10x^2 - 11x + 12.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^8 - 5x^7 + 6x^6 - 7x^5 + 8x^4 - 9x^3 + 10x^2 - 11x + 12.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^8: 32x^7.\n'
                    '4. Differentiate -5x^7: -35x^6.\n'
                    '5. Differentiate 6x^6: 36x^5.\n'
                    '6. Differentiate -7x^5: -35x^4.\n'
                    '7. Differentiate 8x^4: 32x^3.\n'
                    '8. Differentiate -9x^3: -27x^2.\n'
                    '9. Differentiate 10x^2: 20x.\n'
                    '10. Differentiate -11x: -11.\n'
                    '11. The derivative of a constant (12 in this case) is 0.\n'
                    '12. Combine the results:\n'
                    '    - f\'(x) = 32x^7 - 35x^6 + 36x^5 - 35x^4 + 32x^3 - 27x^2 + 20x - 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = x^9 - 2x^8 + 3x^7 - 4x^6 + 5x^5 - 6x^4 + 7x^3 - 8x^2 + 9x - 10.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = x^9 - 2x^8 + 3x^7 - 4x^6 + 5x^5 - 6x^4 + 7x^3 - 8x^2 + 9x - 10.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate x^9: 9x^8.\n'
                    '4. Differentiate -2x^8: -16x^7.\n'
                    '5. Differentiate 3x^7: 21x^6.\n'
                    '6. Differentiate -4x^6: -24x^5.\n'
                    '7. Differentiate 5x^5: 25x^4.\n'
                    '8. Differentiate -6x^4: -24x^3.\n'
                    '9. Differentiate 7x^3: 21x^2.\n'
                    '10. Differentiate -8x^2: -16x.\n'
                    '11. Differentiate 9x: 9.\n'
                    '12. The derivative of a constant (-10 in this case) is 0.\n'
                    '13. Combine the results:\n'
                    '    - f\'(x) = 9x^8 - 16x^7 + 21x^6 - 24x^5 + 25x^4 - 24x^3 + 21x^2 - 16x + 9.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 2x^10 - 3x^9 + 4x^8 - 5x^7 + 6x^6 - 7x^5 + 8x^4 - 9x^3 + 10x^2 - 11x + 12.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 2x^10 - 3x^9 + 4x^8 - 5x^7 + 6x^6 - 7x^5 + 8x^4 - 9x^3 + 10x^2 - 11x + 12.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 2x^10: 20x^9.\n'
                    '4. Differentiate -3x^9: -27x^8.\n'
                    '5. Differentiate 4x^8: 32x^7.\n'
                    '6. Differentiate -5x^7: -35x^6.\n'
                    '7. Differentiate 6x^6: 36x^5.\n'
                    '8. Differentiate -7x^5: -35x^4.\n'
                    '9. Differentiate 8x^4: 32x^3.\n'
                    '10. Differentiate -9x^3: -27x^2.\n'
                    '11. Differentiate 10x^2: 20x.\n'
                    '12. Differentiate -11x: -11.\n'
                    '13. The derivative of a constant (12 in this case) is 0.\n'
                    '14. Combine the results:\n'
                    '    - f\'(x) = 20x^9 - 27x^8 + 32x^7 - 35x^6 + 36x^5 - 35x^4 + 32x^3 - 27x^2 + 20x - 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 3x^11 - 4x^10 + 5x^9 - 6x^8 + 7x^7 - 8x^6 + 9x^5 - 10x^4 + 11x^3 - 12x^2 + 13x - 14.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 3x^11 - 4x^10 + 5x^9 - 6x^8 + 7x^7 - 8x^6 + 9x^5 - 10x^4 + 11x^3 - 12x^2 + 13x - 14.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 3x^11: 33x^10.\n'
                    '4. Differentiate -4x^10: -40x^9.\n'
                    '5. Differentiate 5x^9: 45x^8.\n'
                    '6. Differentiate -6x^8: -48x^7.\n'
                    '7. Differentiate 7x^7: 49x^6.\n'
                    '8. Differentiate -8x^6: -48x^5.\n'
                    '9. Differentiate 9x^5: 45x^4.\n'
                    '10. Differentiate -10x^4: -40x^3.\n'
                    '11. Differentiate 11x^3: 33x^2.\n'
                    '12. Differentiate -12x^2: -24x.\n'
                    '13. Differentiate 13x: 13.\n'
                    '14. The derivative of a constant (-14 in this case) is 0.\n'
                    '15. Combine the results:\n'
                    '    - f\'(x) = 33x^10 - 40x^9 + 45x^8 - 48x^7 + 49x^6 - 48x^5 + 45x^4 - 40x^3 + 33x^2 - 24x + 13.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 4x^12 - 5x^11 + 6x^10 - 7x^9 + 8x^8 - 9x^7 + 10x^6 - 11x^5 + 12x^4 - 13x^3 + 14x^2 - 15x + 16.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 4x^12 - 5x^11 + 6x^10 - 7x^9 + 8x^8 - 9x^7 + 10x^6 - 11x^5 + 12x^4 - 13x^3 + 14x^2 - 15x + 16.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 4x^12: 48x^11.\n'
                    '4. Differentiate -5x^11: -55x^10.\n'
                    '5. Differentiate 6x^10: 60x^9.\n'
                    '6. Differentiate -7x^9: -63x^8.\n'
                    '7. Differentiate 8x^8: 64x^7.\n'
                    '8. Differentiate -9x^7: -63x^6.\n'
                    '9. Differentiate 10x^6: 60x^5.\n'
                    '10. Differentiate -11x^5: -55x^4.\n'
                    '11. Differentiate 12x^4: 48x^3.\n'
                    '12. Differentiate -13x^3: -39x^2.\n'
                    '13. Differentiate 14x^2: 28x.\n'
                    '14. Differentiate -15x: -15.\n'
                    '15. The derivative of a constant (16 in this case) is 0.\n'
                    '16. Combine the results:\n'
                    '    - f\'(x) = 48x^11 - 55x^10 + 60x^9 - 63x^8 + 64x^7 - 63x^6 + 60x^5 - 55x^4 + 48x^3 - 39x^2 + 28x - 15.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 5x^13 - 6x^12 + 7x^11 - 8x^10 + 9x^9 - 10x^8 + 11x^7 - 12x^6 + 13x^5 - 14x^4 + 15x^3 - 16x^2 + 17x - 18.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 5x^13 - 6x^12 + 7x^11 - 8x^10 + 9x^9 - 10x^8 + 11x^7 - 12x^6 + 13x^5 - 14x^4 + 15x^3 - 16x^2 + 17x - 18.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 5x^13: 65x^12.\n'
                    '4. Differentiate -6x^12: -72x^11.\n'
                    '5. Differentiate 7x^11: 77x^10.\n'
                    '6. Differentiate -8x^10: -80x^9.\n'
                    '7. Differentiate 9x^9: 81x^8.\n'
                    '8. Differentiate -10x^8: -80x^7.\n'
                    '9. Differentiate 11x^7: 77x^6.\n'
                    '10. Differentiate -12x^6: -72x^5.\n'
                    '11. Differentiate 13x^5: 65x^4.\n'
                    '12. Differentiate -14x^4: -56x^3.\n'
                    '13. Differentiate 15x^3: 45x^2.\n'
                    '14. Differentiate -16x^2: -32x.\n'
                    '15. Differentiate 17x: 17.\n'
                    '16. The derivative of a constant (-18 in this case) is 0.\n'
                    '17. Combine the results:\n'
                    '    - f\'(x) = 65x^12 - 72x^11 + 77x^10 - 80x^9 + 81x^8 - 80x^7 + 77x^6 - 72x^5 + 65x^4 - 56x^3 + 45x^2 - 32x + 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 6x^14 - 7x^13 + 8x^12 - 9x^11 + 10x^10 - 11x^9 + 12x^8 - 13x^7 + 14x^6 - 15x^5 + 16x^4 - 17x^3 + 18x^2 - 19x + 20.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 6x^14 - 7x^13 + 8x^12 - 9x^11 + 10x^10 - 11x^9 + 12x^8 - 13x^7 + 14x^6 - 15x^5 + 16x^4 - 17x^3 + 18x^2 - 19x + 20.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 6x^14: 84x^13.\n'
                    '4. Differentiate -7x^13: -91x^12.\n'
                    '5. Differentiate 8x^12: 96x^11.\n'
                    '6. Differentiate -9x^11: -99x^10.\n'
                    '7. Differentiate 10x^10: 100x^9.\n'
                    '8. Differentiate -11x^9: -99x^8.\n'
                    '9. Differentiate 12x^8: 96x^7.\n'
                    '10. Differentiate -13x^7: -91x^6.\n'
                    '11. Differentiate 14x^6: 84x^5.\n'
                    '12. Differentiate -15x^5: -75x^4.\n'
                    '13. Differentiate 16x^4: 64x^3.\n'
                    '14. Differentiate -17x^3: -51x^2.\n'
                    '15. Differentiate 18x^2: 36x.\n'
                    '16. Differentiate -19x: -19.\n'
                    '17. The derivative of a constant (20 in this case) is 0.\n'
                    '18. Combine the results:\n'
                    '    - f\'(x) = 84x^13 - 91x^12 + 96x^11 - 99x^10 + 100x^9 - 99x^8 + 96x^7 - 91x^6 + 84x^5 - 75x^4 + 64x^3 - 51x^2 + 36x - 19.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 7x^15 - 8x^14 + 9x^13 - 10x^12 + 11x^11 - 12x^10 + 13x^9 - 14x^8 + 15x^7 - 16x^6 + 17x^5 - 18x^4 + 19x^3 - 20x^2 + 21x - 22.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 7x^15 - 8x^14 + 9x^13 - 10x^12 + 11x^11 - 12x^10 + 13x^9 - 14x^8 + 15x^7 - 16x^6 + 17x^5 - 18x^4 + 19x^3 - 20x^2 + 21x - 22.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 7x^15: 105x^14.\n'
                    '4. Differentiate -8x^14: -112x^13.\n'
                    '5. Differentiate 9x^13: 117x^12.\n'
                    '6. Differentiate -10x^12: -120x^11.\n'
                    '7. Differentiate 11x^11: 121x^10.\n'
                    '8. Differentiate -12x^10: -120x^9.\n'
                    '9. Differentiate 13x^9: 117x^8.\n'
                    '10. Differentiate -14x^8: -112x^7.\n'
                    '11. Differentiate 15x^7: 105x^6.\n'
                    '12. Differentiate -16x^6: -96x^5.\n'
                    '13. Differentiate 17x^5: 85x^4.\n'
                    '14. Differentiate -18x^4: -72x^3.\n'
                    '15. Differentiate 19x^3: 57x^2.\n'
                    '16. Differentiate -20x^2: -40x.\n'
                    '17. Differentiate 21x: 21.\n'
                    '18. The derivative of a constant (-22 in this case) is 0.\n'
                    '19. Combine the results:\n'
                    '    - f\'(x) = 105x^14 - 112x^13 + 117x^12 - 120x^11 + 121x^10 - 120x^9 + 117x^8 - 112x^7 + 105x^6 - 96x^5 + 85x^4 - 72x^3 + 57x^2 - 40x + 21.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the derivative of f(x) = 8x^16 - 9x^15 + 10x^14 - 11x^13 + 12x^12 - 13x^11 + 14x^10 - 15x^9 + 16x^8 - 17x^7 + 18x^6 - 19x^5 + 20x^4 - 21x^3 + 22x^2 - 23x + 24.',
                solution:
                'Solution:\n'
                    '1. Identify the function: f(x) = 8x^16 - 9x^15 + 10x^14 - 11x^13 + 12x^12 - 13x^11 + 14x^10 - 15x^9 + 16x^8 - 17x^7 + 18x^6 - 19x^5 + 20x^4 - 21x^3 + 22x^2 - 23x + 24.\n'
                    '2. Apply the power rule for differentiation:\n'
                    '    - Differentiate each term separately.\n'
                    '3. Differentiate 8x^16: 128x^15.\n'
                    '4. Differentiate -9x^15: -135x^14.\n'
                    '5. Differentiate 10x^14: 140x^13.\n'
                    '6. Differentiate -11x^13: -143x^12.\n'
                    '7. Differentiate 12x^12: 144x^11.\n'
                    '8. Differentiate -13x^11: -143x^10.\n'
                    '9. Differentiate 14x^10: 140x^9.\n'
                    '10. Differentiate -15x^9: -135x^8.\n'
                    '11. Differentiate 16x^8: 128x^7.\n'
                    '12. Differentiate -17x^7: -119x^6.\n'
                    '13. Differentiate 18x^6: 108x^5.\n'
                    '14. Differentiate -19x^5: -95x^4.\n'
                    '15. Differentiate 20x^4: 80x^3.\n'
                    '16. Differentiate -21x^3: -63x^2.\n'
                    '17. Differentiate 22x^2: 44x.\n'
                    '18. Differentiate -23x: -23.\n'
                    '19. The derivative of a constant (24 in this case) is 0.\n'
                    '20. Combine the results:\n'
                    '    - f\'(x) = 128x^15 - 135x^14 + 140x^13 - 143x^12 + 144x^11 - 143x^10 + 140x^9 - 135x^8 + 128x^7 - 119x^6 + 108x^5 - 95x^4 + 80x^3 - 63x^2 + 44x - 23.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
