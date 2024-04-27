import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class BasicPage extends StatelessWidget {
  final Color chosenColor;
  BasicPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Operation (Addition, Subtraction, Multiplication, Division)'),
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
                'Basic Operation (Addition, Subtraction, Multiplication, Division)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebraic basic operations refer to the fundamental mathematical operations performed on algebraic expressions, which include addition, subtraction, multiplication, and division. These operations are analogous to those performed with numerical values, but they involve variables and symbols representing unknown quantities.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Addition: In algebra, addition involves combining like terms or expressions. When adding algebraic expressions, you add the coefficients of like terms while retaining their respective variables. For example:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '3x^2+2x-5+2x^2-3x+7',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'To add these expressions, you combine the coefficients of the like terms:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '(3x2+2x2)+(2x−3x)+(−5+7)=5x2−x+2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2: Subtraction: Subtraction in algebra is similar to addition. To subtract algebraic expressions, you distribute the negative sign across the terms being subtracted. For example:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4x2−3x+7−(2x2+5x−3)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Distributing the negative sign:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4x2−3x+7−2x2−5x+3=2x2−8x+10',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Multiplication: Multiplication in algebra involves the distributive property, where each term of one expression is multiplied by each term of the other expression. For example:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '(2x+3)(3x−4)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2x⋅3x+2x⋅(−4)+3⋅3x+3⋅(−4)=6x2−8x+9x−12=6x2+x−12',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Division: Division in algebra involves dividing one algebraic expression by another. It`s essential to simplify the expressions before performing division. For example:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4x^2-9/2x+3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Here, you can factor the numerator as the difference of squares:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '(2x-3)(2x+3)/2x+3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Then, you can cancel out the common factor:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2x-3/1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Final result:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2x-3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nProblem: Perform the addition of two algebraic expressions: 3x^2-2x+5 and 2x^2+4x-3',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1. Write down the expressions to be added:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n(3x^2-2x+5)+(2x^2+4x-3)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: Group like terms:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n(3x^2+2x^2)+(−2x+4x)+(5−3)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: Combine the coefficients of like terms:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n5x^2+2x+2',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nFinal Answer: 5x^2 + 2x+2',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (3x^2 - 2x + 5) and (2x^2 + 4x - 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(3x^2 - 2x + 5) + (2x^2 + 4x - 3)\n\n'
                    '= (3x^2 + 2x^2) + (-2x + 4x) + (5 - 3)\n\n'
                    '= 5x^2 + 2x + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^3 - 4x^2 + 7x) and (3x^3 + 2x^2 - 5x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^3 - 4x^2 + 7x) - (3x^3 + 2x^2 - 5x)\n\n'
                    '= 6x^3 - 4x^2 + 7x - 3x^3 - 2x^2 + 5x\n\n'
                    '= (6x^3 - 3x^3) + (-4x^2 - 2x^2) + (7x + 5x)\n\n'
                    '= 3x^3 - 6x^2 + 12x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x - 3)(x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x - 3)(x + 4) = 2x \\cdot x + 2x \\cdot 4 - 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^2 + 8x - 3x - 12\n\n'
                    'Combine like terms:\n\n'
                    '= 2x^2 + (8x - 3x) - 12\n\n'
                    '= 2x^2 + 5x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{4x^2 - 9}}{{2x + 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{4x^2 - 9}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{(2x - 3)(2x + 3)}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{2x - 3}}{{1}}\\)\n\n'
                    '= 2x - 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(3x - (2x^2 + 5) + 4(x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(3x - (2x^2 + 5) + 4(x - 3)\\)\n\n'
                    '= 3x - 2x^2 - 5 + 4x - 12\n\n'
                    '= -2x^2 + 7x - 17',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^3 - 4x^2 + 7x) and (3x^3 + 2x^2 - 5x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^3 - 4x^2 + 7x) - (3x^3 + 2x^2 - 5x)\n\n'
                    '= 6x^3 - 4x^2 + 7x - 3x^3 - 2x^2 + 5x\n\n'
                    '= (6x^3 - 3x^3) + (-4x^2 - 2x^2) + (7x + 5x)\n\n'
                    '= 3x^3 - 6x^2 + 12x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x - 3)(x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x - 3)(x + 4) = 2x \\cdot x + 2x \\cdot 4 - 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^2 + 8x - 3x - 12\n\n'
                    'Combine like terms:\n\n'
                    '= 2x^2 + (8x - 3x) - 12\n\n'
                    '= 2x^2 + 5x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{4x^2 - 9}}{{2x + 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{4x^2 - 9}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{(2x - 3)(2x + 3)}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{2x - 3}}{{1}}\\)\n\n'
                    '= 2x - 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(3x - (2x^2 + 5) + 4(x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(3x - (2x^2 + 5) + 4(x - 3)\\)\n\n'
                    '= 3x - 2x^2 - 5 + 4x - 12\n\n'
                    '= -2x^2 + 7x - 17',
              ),
              SizedBox(height: 20),
              // Additional problems added below
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (5x^3 - 2x^2 + 3x) and (4x^3 + 6x^2 - x).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(5x^3 - 2x^2 + 3x) + (4x^3 + 6x^2 - x)\n\n'
                    '= (5x^3 + 4x^3) + (-2x^2 + 6x^2) + (3x - x)\n\n'
                    '= 9x^3 + 4x^2 + 2x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (8x^4 - 5x^3 + 6x^2) and (3x^4 + 2x^3 - 4x^2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(8x^4 - 5x^3 + 6x^2) - (3x^4 + 2x^3 - 4x^2)\n\n'
                    '= 8x^4 - 5x^3 + 6x^2 - 3x^4 - 2x^3 + 4x^2\n\n'
                    '= (8x^4 - 3x^4) + (-5x^3 - 2x^3) + (6x^2 + 4x^2)\n\n'
                    '= 5x^4 - 7x^3 + 10x^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (3x - 2)(2x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(3x - 2)(2x + 5) = 3x \\cdot 2x + 3x \\cdot 5 - 2 \\cdot 2x - 2 \\cdot 5\n\n'
                    '= 6x^2 + 15x - 4x - 10\n\n'
                    '= 6x^2 + 11x - 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^2 - 9}}{{3x - 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^2 - 9}}{{3x - 2}}\\)\n\n'
                    '= \\(\\frac{{(3x - 3)(2x + 3)}}{{3x - 2}}\\)\n\n'
                    '= \\(\\frac{{3x - 3}}{{1}}\\)\n\n'
                    '= 3x - 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(4x - (2x^2 + 3) + 5(x - 2)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(4x - (2x^2 + 3) + 5(x - 2)\\)\n\n'
                    '= 4x - 2x^2 - 3 + 5x - 10\n\n'
                    '= -2x^2 + 9x - 13',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^2 - 3x + 4) and (x^2 + 2x - 1).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^2 - 3x + 4) + (x^2 + 2x - 1)\n\n'
                    '= (7x^2 + x^2) + (-3x + 2x) + (4 - 1)\n\n'
                    '= 8x^2 - x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (5x^3 - 2x^2 + 3x) and (4x^3 + 6x^2 - x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(5x^3 - 2x^2 + 3x) - (4x^3 + 6x^2 - x)\n\n'
                    '= 5x^3 - 2x^2 + 3x - 4x^3 - 6x^2 + x\n\n'
                    '= (5x^3 - 4x^3) + (-2x^2 - 6x^2) + (3x + x)\n\n'
                    '= x^3 - 8x^2 + 4x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x - 3)(3x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x - 3)(3x + 4) = 2x \\cdot 3x + 2x \\cdot 4 - 3 \\cdot 3x - 3 \\cdot 4\n\n'
                    '= 6x^2 + 8x - 9x - 12\n\n'
                    'Combine like terms:\n\n'
                    '= 6x^2 - x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{9x^2 - 16}}{{3x + 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{9x^2 - 16}}{{3x + 4}}\\)\n\n'
                    '= \\(\\frac{{(3x - 4)(3x + 4)}}{{3x + 4}}\\)\n\n'
                    '= \\(\\frac{{3x - 4}}{{1}}\\)\n\n'
                    '= 3x - 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(2x - (x^2 + 3) + 4(x - 2)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(2x - (x^2 + 3) + 4(x - 2)\\)\n\n'
                    '= 2x - x^2 - 3 + 4x - 8\n\n'
                    '= -x^2 + 6x - 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (6x^2 - 4x + 5) and (2x^2 + 3x - 2).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(6x^2 - 4x + 5) + (2x^2 + 3x - 2)\n\n'
                    '= (6x^2 + 2x^2) + (-4x + 3x) + (5 - 2)\n\n'
                    '= 8x^2 - x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (3x^3 - 5x^2 + 2x) and (4x^3 + x^2 - 3x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(3x^3 - 5x^2 + 2x) - (4x^3 + x^2 - 3x)\n\n'
                    '= 3x^3 - 5x^2 + 2x - 4x^3 - x^2 + 3x\n\n'
                    '= (3x^3 - 4x^3) + (-5x^2 - x^2) + (2x + 3x)\n\n'
                    '= -x^3 - 6x^2 + 5x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (4x - 2)(3x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(4x - 2)(3x + 5) = 4x \\cdot 3x + 4x \\cdot 5 - 2 \\cdot 3x - 2 \\cdot 5\n\n'
                    '= 12x^2 + 20x - 6x - 10\n\n'
                    '= 12x^2 + 14x - 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{2x^2 - 12}}{{x - 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{2x^2 - 12}}{{x - 3}}\\)\n\n'
                    '= \\(\\frac{{(2x + 6)(x - 3)}}{{x - 3}}\\)\n\n'
                    '= \\(\\frac{{2x + 6}}{{1}}\\)\n\n'
                    '= 2x + 6',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(3x - (x^2 + 4) + 2(x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(3x - (x^2 + 4) + 2(x - 3)\\)\n\n'
                    '= 3x - x^2 - 4 + 2x - 6\n\n'
                    '= -x^2 + 5x - 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (5x^2 - 3x + 2) and (2x^2 + 4x - 1).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(5x^2 - 3x + 2) + (2x^2 + 4x - 1)\n\n'
                    '= (5x^2 + 2x^2) + (-3x + 4x) + (2 - 1)\n\n'
                    '= 7x^2 + x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (3x^3 - 6x^2 + x) and (2x^3 + 4x^2 - 2x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(3x^3 - 6x^2 + x) - (2x^3 + 4x^2 - 2x)\n\n'
                    '= 3x^3 - 6x^2 + x - 2x^3 - 4x^2 + 2x\n\n'
                    '= (3x^3 - 2x^3) + (-6x^2 - 4x^2) + (x + 2x)\n\n'
                    '= x^3 - 10x^2 + 3x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x - 3)(4x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x - 3)(4x + 5) = 2x \\cdot 4x + 2x \\cdot 5 - 3 \\cdot 4x - 3 \\cdot 5\n\n'
                    '= 8x^2 + 10x - 12x - 15\n\n'
                    '= 8x^2 - 2x - 15',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^2 - 18}}{{2x - 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^2 - 18}}{{2x - 3}}\\)\n\n'
                    '= \\(\\frac{{(6x - 18)(x + 3)}}{{2x - 3}}\\)\n\n'
                    '= \\(\\frac{{6x - 18}}{{1}}\\)\n\n'
                    '= 6x - 18',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(5x - (2x^2 + 6) + 3(x - 4)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(5x - (2x^2 + 6) + 3(x - 4)\\)\n\n'
                    '= 5x - 2x^2 - 6 + 3x - 12\n\n'
                    '= -2x^2 + 8x - 18',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (3x^2 - 4x + 2) and (x^2 + 2x - 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(3x^2 - 4x + 2) + (x^2 + 2x - 3)\n\n'
                    '= (3x^2 + x^2) + (-4x + 2x) + (2 - 3)\n\n'
                    '= 4x^2 - 2x - 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (4x^3 - 5x^2 + 2x) and (3x^3 + x^2 - 4x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(4x^3 - 5x^2 + 2x) - (3x^3 + x^2 - 4x)\n\n'
                    '= 4x^3 - 5x^2 + 2x - 3x^3 - x^2 + 4x\n\n'
                    '= (4x^3 - 3x^3) + (-5x^2 - x^2) + (2x + 4x)\n\n'
                    '= x^3 - 6x^2 + 6x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (3x - 4)(2x + 3).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(3x - 4)(2x + 3) = 3x \\cdot 2x + 3x \\cdot 3 - 4 \\cdot 2x - 4 \\cdot 3\n\n'
                    '= 6x^2 + 9x - 8x - 12\n\n'
                    '= 6x^2 + x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{4x^2 - 16}}{{2x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{4x^2 - 16}}{{2x - 4}}\\)\n\n'
                    '= \\(\\frac{{(2x + 4)(2x - 4)}}{{2x - 4}}\\)\n\n'
                    '= \\(\\frac{{2x + 4}}{{1}}\\)\n\n'
                    '= 2x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(2x - (3x^2 + 5) + 4(x - 2)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(2x - (3x^2 + 5) + 4(x - 2)\\)\n\n'
                    '= 2x - 3x^2 - 5 + 4x - 8\n\n'
                    '= -3x^2 + 6x - 13',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (6x^2 - 3x + 4) and (2x^2 + 3x - 2).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(6x^2 - 3x + 4) + (2x^2 + 3x - 2)\n\n'
                    '= (6x^2 + 2x^2) + (-3x + 3x) + (4 - 2)\n\n'
                    '= 8x^2 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (4x^3 - 6x^2 + 3x) and (3x^3 + 2x^2 - 4x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(4x^3 - 6x^2 + 3x) - (3x^3 + 2x^2 - 4x)\n\n'
                    '= 4x^3 - 6x^2 + 3x - 3x^3 - 2x^2 + 4x\n\n'
                    '= (4x^3 - 3x^3) + (-6x^2 - 2x^2) + (3x + 4x)\n\n'
                    '= x^3 - 8x^2 + 7x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (3x - 4)(4x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(3x - 4)(4x + 5) = 3x \\cdot 4x + 3x \\cdot 5 - 4 \\cdot 4x - 4 \\cdot 5\n\n'
                    '= 12x^2 + 15x - 16x - 20\n\n'
                    '= 12x^2 - x - 20',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^2 - 25}}{{x - 5}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^2 - 25}}{{x - 5}}\\)\n\n'
                    '= \\(\\frac{{(5x + 25)(x + 5)}}{{x - 5}}\\)\n\n'
                    '= \\(\\frac{{5x + 25}}{{1}}\\)\n\n'
                    '= 5x + 25',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(4x - (x^2 + 6) + 3(x - 2)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(4x - (x^2 + 6) + 3(x - 2)\\)\n\n'
                    '= 4x - x^2 - 6 + 3x - 6\n\n'
                    '= -x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^2 - 2x + 3) and (2x^2 + 3x - 4).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^2 - 2x + 3) + (2x^2 + 3x - 4)\n\n'
                    '= (7x^2 + 2x^2) + (-2x + 3x) + (3 - 4)\n\n'
                    '= 9x^2 + x - 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^3 - 4x^2 + 7x) and (3x^3 + 2x^2 - 5x).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^3 - 4x^2 + 7x) - (3x^3 + 2x^2 - 5x)\n\n'
                    '= 6x^3 - 4x^2 + 7x - 3x^3 - 2x^2 + 5x\n\n'
                    '= (6x^3 - 3x^3) + (-4x^2 - 2x^2) + (7x + 5x)\n\n'
                    '= 3x^3 - 6x^2 + 12x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x - 3)(x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x - 3)(x + 4) = 2x \\cdot x + 2x \\cdot 4 - 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^2 + 8x - 3x - 12\n\n'
                    'Combine like terms:\n\n'
                    '= 2x^2 + (8x - 3x) - 12\n\n'
                    '= 2x^2 + 5x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{4x^2 - 9}}{{2x + 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{4x^2 - 9}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{(2x - 3)(2x + 3)}}{{2x + 3}}\\)\n\n'
                    '= \\(\\frac{{2x - 3}}{{1}}\\)\n\n'
                    '= 2x - 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\(3x - (2x^2 + 5) + 4(x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\(3x - (2x^2 + 5) + 4(x - 3)\\)\n\n'
                    '= 3x - 2x^2 - 5 + 4x - 12\n\n'
                    '= -2x^2 + 7x - 17',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (5x^3 + 2x^2 - 3x) and (2x^3 - 4x^2 + 6x).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(5x^3 + 2x^2 - 3x) + (2x^3 - 4x^2 + 6x)\n\n'
                    '= (5x^3 + 2x^3) + (2x^2 - 4x^2) + (-3x + 6x)\n\n'
                    '= 7x^3 - 2x^2 + 3x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 5x + 3) and (3x^2 - 2x - 1).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 5x + 3) - (3x^2 - 2x - 1)\n\n'
                    '= 9x^2 - 5x + 3 - 3x^2 + 2x + 1\n\n'
                    '= (9x^2 - 3x^2) + (-5x + 2x) + (3 + 1)\n\n'
                    '= 6x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 2x + 3)(x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 2x + 3)(x + 4) = x^2 \\cdot x + x^2 \\cdot 4 - 2x \\cdot x - 2x \\cdot 4 + 3 \\cdot x + 3 \\cdot 4\n\n'
                    '= x^3 + 4x^2 - 2x^2 - 8x + 3x + 12\n\n'
                    '= x^3 + 2x^2 - 5x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{9x^3 - 6x^2 + 12}}{{3x}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{9x^3 - 6x^2 + 12}}{{3x}}\\)\n\n'
                    '= \\(\\frac{{3x(3x^2 - 2x + 4)}}{{3x}}\\)\n\n'
                    '= 3x^2 - 2x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((2x^2 + 3x - 4) - (x^2 - 2x + 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((2x^2 + 3x - 4) - (x^2 - 2x + 5)\\)\n\n'
                    '= 2x^2 + 3x - 4 - x^2 + 2x - 5\n\n'
                    '= (2x^2 - x^2) + (3x + 2x) + (-4 - 5)\n\n'
                    '= x^2 + 5x - 9',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 2x^2 + 3x) and (2x^2 - 5x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 2x^2 + 3x) + (2x^2 - 5x + 7)\n\n'
                    '= 4x^3 - 2x^2 + 3x + 2x^2 - 5x + 7\n\n'
                    '= 4x^3 + (-2x^2 + 2x^2) + (3x - 5x) + 7\n\n'
                    '= 4x^3 - 2x + 7',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (7x^2 - 4x + 5) and (2x^2 - 3x - 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(7x^2 - 4x + 5) - (2x^2 - 3x - 2)\n\n'
                    '= 7x^2 - 4x + 5 - 2x^2 + 3x + 2\n\n'
                    '= (7x^2 - 2x^2) + (-4x + 3x) + (5 + 2)\n\n'
                    '= 5x^2 - x + 7',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (3x - 2)(2x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(3x - 2)(2x + 5) = 3x \\cdot 2x + 3x \\cdot 5 - 2 \\cdot 2x - 2 \\cdot 5\n\n'
                    '= 6x^2 + 15x - 4x - 10\n\n'
                    'Combine like terms:\n\n'
                    '= 6x^2 + (15x - 4x) - 10\n\n'
                    '= 6x^2 + 11x - 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 4x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 4x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 4x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 4x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((4x^2 - 3x + 2) - (2x^2 + 5x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((4x^2 - 3x + 2) - (2x^2 + 5x - 3)\\)\n\n'
                    '= 4x^2 - 3x + 2 - 2x^2 - 5x + 3\n\n'
                    '= (4x^2 - 2x^2) + (-3x - 5x) + (2 + 3)\n\n'
                    '= 2x^2 - 8x + 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (6x^3 - 5x^2 + 4) and (3x^3 - 2x^2 + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(6x^3 - 5x^2 + 4) + (3x^3 - 2x^2 + 7)\n\n'
                    '= 6x^3 - 5x^2 + 4 + 3x^3 - 2x^2 + 7\n\n'
                    '= 6x^3 + 3x^3 + (-5x^2 - 2x^2) + (4 + 7)\n\n'
                    '= 9x^3 - 7x^2 + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (5x^2 - 3x + 2) and (2x^2 - 5x + 1).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(5x^2 - 3x + 2) - (2x^2 - 5x + 1)\n\n'
                    '= 5x^2 - 3x + 2 - 2x^2 + 5x - 1\n\n'
                    '= (5x^2 - 2x^2) + (-3x + 5x) + (2 - 1)\n\n'
                    '= 3x^2 + 2x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{3x^3 - 6x^2 + 9x}}{{x - 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{3x^3 - 6x^2 + 9x}}{{x - 3}}\\)\n\n'
                    '= \\(\\frac{{3x(x^2 - 2x + 3)}}{{x - 3}}\\)\n\n'
                    '= 3x^2 - 6x + 9',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((2x^2 - 3x + 5) - (x^2 - 2x - 3)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((2x^2 - 3x + 5) - (x^2 - 2x - 3)\\)\n\n'
                    '= 2x^2 - 3x + 5 - x^2 + 2x + 3\n\n'
                    '= (2x^2 - x^2) + (-3x + 2x) + (5 + 3)\n\n'
                    '= x^2 - x + 8',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (5x^3 - 2x^2 + x) and (3x^2 - 4x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(5x^3 - 2x^2 + x) + (3x^2 - 4x + 7)\n\n'
                    '= 5x^3 - 2x^2 + x + 3x^2 - 4x + 7\n\n'
                    '= 5x^3 + (-2x^2 + 3x^2) + (x - 4x) + 7\n\n'
                    '= 5x^3 + x^2 - 3x + 7',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (3x^2 - 5x + 2) and (2x^2 - 3x + 1).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(3x^2 - 5x + 2) - (2x^2 - 3x + 1)\n\n'
                    '= 3x^2 - 5x + 2 - 2x^2 + 3x - 1\n\n'
                    '= (3x^2 - 2x^2) + (-5x + 3x) + (2 - 1)\n\n'
                    '= x^2 - 2x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 15x}}{{3x - 5}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 15x}}{{3x - 5}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 5)}}{{3x - 5}}\\)\n\n'
                    '= 2x^2 - 3x + 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + 3\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 3x + 5) and (3x^2 + 2x - 1).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 3x + 5) - (3x^2 + 2x - 1)\n\n'
                    '= 6x^2 - 3x + 5 - 3x^2 - 2x + 1\n\n'
                    '= (6x^2 - 3x^2) + (-3x - 2x) + (5 + 1)\n\n'
                    '= 3x^2 - 5x + 6',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 + 2x + 3)(x + 5).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 + 2x + 3)(x + 5) = x^2 \\cdot x + x^2 \\cdot 5 + 2x \\cdot x + 2x \\cdot 5 + 3 \\cdot x + 3 \\cdot 5\n\n'
                    '= x^3 + 5x^2 + 2x^2 + 10x + 3x + 15\n\n'
                    '= x^3 + 7x^2 + 13x + 15',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{7x^3 - 3x^2 + 9x}}{{x + 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{7x^3 - 3x^2 + 9x}}{{x + 3}}\\)\n\n'
                    '= \\(\\frac{{x(7x^2 - 3x + 9)}}{{x + 3}}\\)\n\n'
                    '= 7x^2 - 3x + 9',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((4x^2 - 2x + 3) - (3x^2 + 4x - 2)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((4x^2 - 2x + 3) - (3x^2 + 4x - 2)\\)\n\n'
                    '= 4x^2 - 2x + 3 - 3x^2 - 4x + 2\n\n'
                    '= (4x^2 - 3x^2) + (-2x - 4x) + (3 + 2)\n\n'
                    '= x^2 - 6x + 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (6x^3 - 2x^2 + 5) and (4x^2 - 3x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(6x^3 - 2x^2 + 5) + (4x^2 - 3x + 7)\n\n'
                    '= 6x^3 - 2x^2 + 5 + 4x^2 - 3x + 7\n\n'
                    '= 6x^3 + (-2x^2 + 4x^2) + (-3x) + (5 + 7)\n\n'
                    '= 6x^3 + 2x^2 - 3x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 5x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 5x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 5x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 5x) + (3 - 2)\n\n'
                    '= 7x^2 + x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 2x + 3)(x + 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 2x + 3)(x + 4) = x^2 \\cdot x + x^2 \\cdot 4 - 2x \\cdot x - 2x \\cdot 4 + 3 \\cdot x + 3 \\cdot 4\n\n'
                    '= x^3 + 4x^2 - 2x^2 - 8x + 3x + 12\n\n'
                    '= x^3 + 2x^2 - 5x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 8x^2 + 12x}}{{2x - 3}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 8x^2 + 12x}}{{2x - 3}}\\)\n\n'
                    '= \\(\\frac{{2x(3x^2 - 4x + 6)}}{{2x - 3}}\\)\n\n'
                    '= 3x^2 - 4x + 6',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 3) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 3) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 3 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-3 - 1)\n\n'
                    '= 2x^2 + 6x - 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 1).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 1)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 1\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + 1\n\n'
                    '= 4x^3 - x^2 - 3x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 3x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 3x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 3x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 3x) + (3 - 2)\n\n'
                    '= 7x^2 - x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 4)}}{{3x - 4}}\\)\n\n'
                    '= 2x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 4 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-4 - 1)\n\n'
                    '= 2x^2 + 6x - 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + (3)\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 3x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 3x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 3x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 3x) + (3 - 2)\n\n'
                    '= 7x^2 - x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 4)}}{{3x - 4}}\\)\n\n'
                    '= 2x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 4 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-4 - 1)\n\n'
                    '= 2x^2 + 6x - 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + (3)\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 3x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 3x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 3x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 3x) + (3 - 2)\n\n'
                    '= 7x^2 - x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 4)}}{{3x - 4}}\\)\n\n'
                    '= 2x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 4 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-4 - 1)\n\n'
                    '= 2x^2 + 6x - 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + (3)\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 3x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 3x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 3x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 3x) + (3 - 2)\n\n'
                    '= 7x^2 - x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 4)}}{{3x - 4}}\\)\n\n'
                    '= 2x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 4 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-4 - 1)\n\n'
                    '= 2x^2 + 6x - 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + (3)\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (9x^2 - 4x + 3) and (2x^2 - 3x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(9x^2 - 4x + 3) - (2x^2 - 3x + 2)\n\n'
                    '= 9x^2 - 4x + 3 - 2x^2 + 3x - 2\n\n'
                    '= (9x^2 - 2x^2) + (-4x + 3x) + (3 - 2)\n\n'
                    '= 7x^2 - x + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (2x^2 - x + 3)(x - 4).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(2x^2 - x + 3)(x - 4) = 2x^2 \\cdot x - 2x^2 \\cdot 4 - x \\cdot x + x \\cdot 4 + 3 \\cdot x - 3 \\cdot 4\n\n'
                    '= 2x^3 - 8x^2 - x^2 + 4x + 3x - 12\n\n'
                    '= 2x^3 - 9x^2 + 7x - 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{6x^3 - 9x^2 + 12x}}{{3x - 4}}\\)\n\n'
                    '= \\(\\frac{{3x(2x^2 - 3x + 4)}}{{3x - 4}}\\)\n\n'
                    '= 2x^2 - 3x + 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((5x^2 + 2x - 4) - (3x^2 - 4x + 1)\\)\n\n'
                    '= 5x^2 + 2x - 4 - 3x^2 + 4x - 1\n\n'
                    '= (5x^2 - 3x^2) + (2x + 4x) + (-4 - 1)\n\n'
                    '= 2x^2 + 6x - 5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (4x^3 - 3x^2 + 2x) and (2x^2 - 5x + 3).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(4x^3 - 3x^2 + 2x) + (2x^2 - 5x + 3)\n\n'
                    '= 4x^3 - 3x^2 + 2x + 2x^2 - 5x + 3\n\n'
                    '= 4x^3 + (-3x^2 + 2x^2) + (2x - 5x) + (3)\n\n'
                    '= 4x^3 - x^2 - 3x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the subtraction of the algebraic expressions: (6x^2 - 2x + 5) and (3x^2 - 4x + 2).',
                solution: 'Subtraction: Distribute the negative sign and combine like terms.\n\n'
                    '(6x^2 - 2x + 5) - (3x^2 - 4x + 2)\n\n'
                    '= 6x^2 - 2x + 5 - 3x^2 + 4x - 2\n\n'
                    '= (6x^2 - 3x^2) + (-2x + 4x) + (5 - 2)\n\n'
                    '= 3x^2 + 2x + 3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the multiplication of the algebraic expressions: (x^2 - 3)(x - 2).',
                solution: 'Multiplication: Apply the distributive property.\n\n'
                    '(x^2 - 3)(x - 2) = x^2 \\cdot x + x^2 \\cdot (-2) - 3 \\cdot x - 3 \\cdot (-2)\n\n'
                    '= x^3 - 2x^2 - 3x + 6\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the division of the algebraic expression: \\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\).',
                solution: 'Division: Factor and cancel common terms.\n\n'
                    '\\(\\frac{{5x^3 - 7x^2 + 10x}}{{x + 2}}\\)\n\n'
                    '= \\(\\frac{{x(5x^2 - 7x + 10)}}{{x + 2}}\\)\n\n'
                    '= 5x^2 - 7x + 10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the algebraic expression: \\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\).',
                solution: 'Simplification: Distribute and combine like terms.\n\n'
                    '\\((3x^2 - 4x + 7) - (2x^2 + 3x - 5)\\)\n\n'
                    '= 3x^2 - 4x + 7 - 2x^2 - 3x + 5\n\n'
                    '= (3x^2 - 2x^2) + (-4x - 3x) + (7 + 5)\n\n'
                    '= x^2 - 7x + 12',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Perform the addition of the algebraic expressions: (7x^3 - 5x^2 + 4) and (3x^2 - 2x + 7).',
                solution: 'Addition: Group like terms and combine coefficients.\n\n'
                    '(7x^3 - 5x^2 + 4) + (3x^2 - 2x + 7)\n\n'
                    '= 7x^3 - 5x^2 + 4 + 3x^2 - 2x + 7\n\n'
                    '= 7x^3 + (-5x^2 + 3x^2) + (-2x) + (4 + 7)\n\n'
                    '= 7x^3 - 2x^2 - 2x + 11',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
