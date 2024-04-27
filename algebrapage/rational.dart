import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class RationalPage extends StatelessWidget {
  final Color chosenColor;
  RationalPage ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rational Expressions'),
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
                'Rational Expressions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebra Rational expressions are expressions that represent the quotient of two polynomials. They are essentially fractions where both the numerator and denominator are polynomials.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'The general form of a rational expression is: P(x)/Q(x)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Here:\n\nP(x) and Q(x) are polynomials\n\nQ(x) cannot be the zero polynomial (since division by zero is undefined).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Rational expressions can have various forms, such as:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Simple rational expressions: These are fractions where both the numerator and the denominator are polynomials without any common factors.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Example: 2x+3/x^2-4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Complex rational expressions: These are fractions where either the numerator or the denominator, or both, are also rational expressions.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Example: 3x^2+4x-7/x^2-1/x+2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Rational expressions are fundamental in algebra and are used in many areas of mathematics and science, including solving equations, simplifying expressions, and solving problems in calculus, physics, and engineering. They often appear in problems involving rates, proportions, and modeling real-world situations.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'When working with rational expressions, it`s important to simplify them by factoring, canceling common factors, and ensuring that the denominator is not zero. Additionally, solving equations involving rational expressions may require finding the common denominator and solving resulting polynomial equations.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Simplify the rational expression: 3x^2-6x/2x^2+4x.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nTo simplify the given rational expression, we can start by factoring the numerator and the denominator:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Factor the numerator 3x^2-6x:\n\n3x^2-6x= 3x(x-2).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Factor the denominator 2x^2 +4x:\n\n2x^2+4x = 2x(x+2).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nNow, we can rewrite the rational expression with factored terms:\n\n3x(x-2)/2x(x+2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nNext, we can cancel out any common factors in the numerator and denominator:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n3x(x-2)/2(x+2)\n\n3(x-2)/2(x+2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSo, the simplified form of the rational expression 3x^2-6x/2x^2+4x is 3(x-2)/2(x+2).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSimplify the rational expression: \\frac{3x^2 - 6x}{2x^2 + 4x}',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 3x^2 - 6x:\n\n'
                    '3x(x - 2)\n\n'
                    'Step 2: Factor the denominator 2x^2 + 4x:\n\n'
                    '2x(x + 2)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '\\frac{3x(x - 2)}{2x(x + 2)}\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '\\frac{3\\cancel{x}(x - 2)}{2\\cancel{x}(x + 2)}\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '\\frac{3(x - 2)}{2(x + 2)}\n\n'
                    'Final Answer: The simplified form of the rational expression \\frac{3x^2 - 6x}{2x^2 + 4x} is \\frac{3(x - 2)}{2(x + 2)}.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSimplify the rational expression: \\frac{2x^2 - 8x}{4x^2 - 16}',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 2x^2 - 8x:\n\n'
                    '2x(x - 4)\n\n'
                    'Step 2: Factor the denominator 4x^2 - 16:\n\n'
                    '4(x^2 - 4)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '\\frac{2x(x - 4)}{4(x^2 - 4)}\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '\\frac{2\\cancel{x}(x - 4)}{4\\cancel{x}(x + 2)(x - 2)}\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '\\frac{x - 4}{2(x + 2)(x - 2)}\n\n'
                    'Final Answer: The simplified form of the rational expression \\frac{2x^2 - 8x}{4x^2 - 16} is \\frac{x - 4}{2(x + 2)(x - 2)}.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSimplify the rational expression: \\frac{6x^2 - 9}{4x^2 - 12x + 9}',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 6x^2 - 9:\n\n'
                    '3(2x^2 - 3)\n\n'
                    'Step 2: Factor the denominator 4x^2 - 12x + 9:\n\n'
                    '(2x - 3)^2\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '\\frac{3(2x^2 - 3)}{(2x - 3)^2}\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '\\frac{3(2x^2 - 3)}{3^2(2x - 3)}\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '\\frac{2x^2 - 3}{3(2x - 3)}\n\n'
                    'Final Answer: The simplified form of the rational expression \\frac{6x^2 - 9}{4x^2 - 12x + 9} is \\frac{2x^2 - 3}{3(2x - 3)}.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSimplify the rational expression: \\frac{5x^2 - 20x + 15}{x^2 - 5x + 6}',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 5x^2 - 20x + 15:\n\n'
                    '5(x - 1)(x - 3)\n\n'
                    'Step 2: Factor the denominator x^2 - 5x + 6:\n\n'
                    '(x - 2)(x - 3)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '\\frac{5(x - 1)(x - 3)}{(x - 2)(x - 3)}\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '\\frac{5(x - 1)\\cancel{(x - 3)}}{(x - 2)\\cancel{(x - 3)}}\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '\\frac{5(x - 1)}{x - 2}\n\n'
                    'Final Answer: The simplified form of the rational expression \\frac{5x^2 - 20x + 15}{x^2 - 5x + 6} is \\frac{5(x - 1)}{x - 2}.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: \\frac{2x^2 - 8x}{4x^2 - 16}',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 2x^2 - 8x:\n\n'
                    '2x(x - 4)\n\n'
                    'Step 2: Factor the denominator 4x^2 - 16:\n\n'
                    '4(x^2 - 4)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '\\frac{2x(x - 4)}{4(x^2 - 4)}\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '\\frac{2\\cancel{x}(x - 4)}{4\\cancel{x}(x + 2)(x - 2)}\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '\\frac{x - 4}{2(x + 2)(x - 2)}\n\n'
                    'Final Answer: The simplified form of the rational expression \\frac{2x^2 - 8x}{4x^2 - 16} is \\frac{x - 4}{2(x + 2)(x - 2)}.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (2x^2 - 8x) / (4x^2 - 16)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 2x^2 - 8x:\n\n'
                    '2x(x - 4)\n\n'
                    'Step 2: Factor the denominator 4x^2 - 16:\n\n'
                    '4(x^2 - 4)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(2x(x - 4)) / (4(x^2 - 4))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(2x(x - 4)) / (4(x + 2)(x - 2))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 4) / (2(x + 2)(x - 2))\n\n'
                    'Final Answer: The simplified form of the rational expression (2x^2 - 8x) / (4x^2 - 16) is (x - 4) / (2(x + 2)(x - 2)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (3x^2 - 12x) / (6x^2 - 24)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 3x^2 - 12x:\n\n'
                    '3x(x - 4)\n\n'
                    'Step 2: Factor the denominator 6x^2 - 24:\n\n'
                    '6(x^2 - 4)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(3x(x - 4)) / (6(x^2 - 4))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(3x(x - 4)) / (6(x + 2)(x - 2))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 4) / (2(x + 2)(x - 2))\n\n'
                    'Final Answer: The simplified form of the rational expression (3x^2 - 12x) / (6x^2 - 24) is (x - 4) / (2(x + 2)(x - 2)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (4x^2 + 8x) / (2x^2 + 10x)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 4x^2 + 8x:\n\n'
                    '4x(x + 2)\n\n'
                    'Step 2: Factor the denominator 2x^2 + 10x:\n\n'
                    '2x(x + 5)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(4x(x + 2)) / (2x(x + 5))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(4x(x + 2)) / (2x(x + 5))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '2(x + 2) / (x + 5)\n\n'
                    'Final Answer: The simplified form of the rational expression (4x^2 + 8x) / (2x^2 + 10x) is 2(x + 2) / (x + 5).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (5x^2 - 15x) / (10x^2 + 5x)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 5x^2 - 15x:\n\n'
                    '5x(x - 3)\n\n'
                    'Step 2: Factor the denominator 10x^2 + 5x:\n\n'
                    '5x(2x + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(5x(x - 3)) / (5x(2x + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(5x(x - 3)) / (5x(2x + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (5x^2 - 15x) / (10x^2 + 5x) is (x - 3) / (2x + 1).',
              ),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (6x^2 - 18x) / (12x^2 - 36)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 6x^2 - 18x:\n\n'
                    '6x(x - 3)\n\n'
                    'Step 2: Factor the denominator 12x^2 - 36:\n\n'
                    '12(x^2 - 3)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(6x(x - 3)) / (12(x^2 - 3))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(6x(x - 3)) / (12(x^2 - 3))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2(x^2 - 3))\n\n'
                    'Final Answer: The simplified form of the rational expression (6x^2 - 18x) / (12x^2 - 36) is (x - 3) / (2(x^2 - 3)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (7x^2 + 14x) / (3x^2 - 21)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 7x^2 + 14x:\n\n'
                    '7x(x + 2)\n\n'
                    'Step 2: Factor the denominator 3x^2 - 21:\n\n'
                    '3(x^2 - 7)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(7x(x + 2)) / (3(x^2 - 7))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(7x(x + 2)) / (3(x^2 - 7))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x + 2) / (3(x^2 - 7))\n\n'
                    'Final Answer: The simplified form of the rational expression (7x^2 + 14x) / (3x^2 - 21) is (x + 2) / (3(x^2 - 7)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (8x^2 - 16x) / (4x^2 + 20)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 8x^2 - 16x:\n\n'
                    '8x(x - 2)\n\n'
                    'Step 2: Factor the denominator 4x^2 + 20:\n\n'
                    '4(x^2 + 5)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(8x(x - 2)) / (4(x^2 + 5))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(8x(x - 2)) / (4(x^2 + 5))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 2) / (x^2 + 5)\n\n'
                    'Final Answer: The simplified form of the rational expression (8x^2 - 16x) / (4x^2 + 20) is (x - 2) / (x^2 + 5).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (9x^2 - 27x) / (6x^2 + 18)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 9x^2 - 27x:\n\n'
                    '9x(x - 3)\n\n'
                    'Step 2: Factor the denominator 6x^2 + 18:\n\n'
                    '6(x^2 + 3)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(9x(x - 3)) / (6(x^2 + 3))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(9x(x - 3)) / (6(x^2 + 3))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2(x^2 + 3))\n\n'
                    'Final Answer: The simplified form of the rational expression (9x^2 - 27x) / (6x^2 + 18) is (x - 3) / (2(x^2 + 3)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (10x^2 + 20x) / (5x^2 - 25)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 10x^2 + 20x:\n\n'
                    '10x(x + 2)\n\n'
                    'Step 2: Factor the denominator 5x^2 - 25:\n\n'
                    '5(x^2 - 5)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(10x(x + 2)) / (5(x^2 - 5))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(10x(x + 2)) / (5(x^2 - 5))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(2(x + 2)) / (x^2 - 5)\n\n'
                    'Final Answer: The simplified form of the rational expression (10x^2 + 20x) / (5x^2 - 25) is (2(x + 2)) / (x^2 - 5).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (11x^2 - 33x) / (22x^2 + 11)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 11x^2 - 33x:\n\n'
                    '11x(x - 3)\n\n'
                    'Step 2: Factor the denominator 22x^2 + 11:\n\n'
                    '11(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(11x(x - 3)) / (11(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(11x(x - 3)) / (11(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (11x^2 - 33x) / (22x^2 + 11) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (12x^2 - 36x) / (24x^2 - 12)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 12x^2 - 36x:\n\n'
                    '12x(x - 3)\n\n'
                    'Step 2: Factor the denominator 24x^2 - 12:\n\n'
                    '12(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(12x(x - 3)) / (12(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(12x(x - 3)) / (12(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (12x^2 - 36x) / (24x^2 - 12) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (13x^2 + 26x) / (3x^2 + 39)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 13x^2 + 26x:\n\n'
                    '13x(x + 2)\n\n'
                    'Step 2: Factor the denominator 3x^2 + 39:\n\n'
                    '3(x^2 + 13)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(13x(x + 2)) / (3(x^2 + 13))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(13x(x + 2)) / (3(x^2 + 13))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x + 2) / (3(x^2 + 13))\n\n'
                    'Final Answer: The simplified form of the rational expression (13x^2 + 26x) / (3x^2 + 39) is (x + 2) / (3(x^2 + 13)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (14x^2 - 42x) / (28x^2 + 14)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 14x^2 - 42x:\n\n'
                    '14x(x - 3)\n\n'
                    'Step 2: Factor the denominator 28x^2 + 14:\n\n'
                    '14(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(14x(x - 3)) / (14(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(14x(x - 3)) / (14(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (14x^2 - 42x) / (28x^2 + 14) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (15x^2 - 45x) / (30x^2 - 15)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 15x^2 - 45x:\n\n'
                    '15x(x - 3)\n\n'
                    'Step 2: Factor the denominator 30x^2 - 15:\n\n'
                    '15(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(15x(x - 3)) / (15(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(15x(x - 3)) / (15(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (15x^2 - 45x) / (30x^2 - 15) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (16x^2 + 32x) / (8x^2 + 16)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 16x^2 + 32x:\n\n'
                    '16x(x + 2)\n\n'
                    'Step 2: Factor the denominator 8x^2 + 16:\n\n'
                    '8(x^2 + 2)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(16x(x + 2)) / (8(x^2 + 2))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(16x(x + 2)) / (8(x^2 + 2))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '2(x + 2) / (x^2 + 2)\n\n'
                    'Final Answer: The simplified form of the rational expression (16x^2 + 32x) / (8x^2 + 16) is 2(x + 2) / (x^2 + 2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (17x^2 - 51x) / (34x^2 + 17)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 17x^2 - 51x:\n\n'
                    '17x(x - 3)\n\n'
                    'Step 2: Factor the denominator 34x^2 + 17:\n\n'
                    '17(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(17x(x - 3)) / (17(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(17x(x - 3)) / (17(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (17x^2 - 51x) / (34x^2 + 17) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (18x^2 - 54x) / (36x^2 - 18)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 18x^2 - 54x:\n\n'
                    '18x(x - 3)\n\n'
                    'Step 2: Factor the denominator 36x^2 - 18:\n\n'
                    '18(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(18x(x - 3)) / (18(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(18x(x - 3)) / (18(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (18x^2 - 54x) / (36x^2 - 18) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (19x^2 + 38x) / (4x^2 + 76)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 19x^2 + 38x:\n\n'
                    '19x(x + 2)\n\n'
                    'Step 2: Factor the denominator 4x^2 + 76:\n\n'
                    '4(x^2 + 19)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(19x(x + 2)) / (4(x^2 + 19))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(19x(x + 2)) / (4(x^2 + 19))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(19/4)(x + 2) / (x^2 + 19)\n\n'
                    'Final Answer: The simplified form of the rational expression (19x^2 + 38x) / (4x^2 + 76) is (19/4)(x + 2) / (x^2 + 19).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (20x^2 - 60x) / (10x^2 - 5)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 20x^2 - 60x:\n\n'
                    '20x(x - 3)\n\n'
                    'Step 2: Factor the denominator 10x^2 - 5:\n\n'
                    '5(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(20x(x - 3)) / (5(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(20x(x - 3)) / (5(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '4(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (20x^2 - 60x) / (10x^2 - 5) is 4(x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (21x^2 - 63x) / (42x^2 + 21)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 21x^2 - 63x:\n\n'
                    '21x(x - 3)\n\n'
                    'Step 2: Factor the denominator 42x^2 + 21:\n\n'
                    '21(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(21x(x - 3)) / (21(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(21x(x - 3)) / (21(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (21x^2 - 63x) / (42x^2 + 21) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (22x^2 + 44x) / (11x^2 - 121)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 22x^2 + 44x:\n\n'
                    '22x(x + 2)\n\n'
                    'Step 2: Factor the denominator 11x^2 - 121:\n\n'
                    '11(x^2 - 11)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(22x(x + 2)) / (11(x^2 - 11))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(22x(x + 2)) / (11(x^2 - 11))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '2(x + 2) / (x^2 - 11)\n\n'
                    'Final Answer: The simplified form of the rational expression (22x^2 + 44x) / (11x^2 - 121) is 2(x + 2) / (x^2 - 11).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (23x^2 - 69x) / (46x^2 + 23)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 23x^2 - 69x:\n\n'
                    '23x(x - 3)\n\n'
                    'Step 2: Factor the denominator 46x^2 + 23:\n\n'
                    '23(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(23x(x - 3)) / (23(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(23x(x - 3)) / (23(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (23x^2 - 69x) / (46x^2 + 23) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (24x^2 - 72x) / (48x^2 - 24)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 24x^2 - 72x:\n\n'
                    '24x(x - 3)\n\n'
                    'Step 2: Factor the denominator 48x^2 - 24:\n\n'
                    '24(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(24x(x - 3)) / (24(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(24x(x - 3)) / (24(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (24x^2 - 72x) / (48x^2 - 24) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (25x^2 + 50x) / (5x^2 - 75)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 25x^2 + 50x:\n\n'
                    '25x(x + 2)\n\n'
                    'Step 2: Factor the denominator 5x^2 - 75:\n\n'
                    '5(x^2 - 15)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(25x(x + 2)) / (5(x^2 - 15))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(25x(x + 2)) / (5(x^2 - 15))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '5(x + 2) / (x^2 - 15)\n\n'
                    'Final Answer: The simplified form of the rational expression (25x^2 + 50x) / (5x^2 - 75) is 5(x + 2) / (x^2 - 15).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (26x^2 - 78x) / (52x^2 + 26)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 26x^2 - 78x:\n\n'
                    '26x(x - 3)\n\n'
                    'Step 2: Factor the denominator 52x^2 + 26:\n\n'
                    '26(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(26x(x - 3)) / (26(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(26x(x - 3)) / (26(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (26x^2 - 78x) / (52x^2 + 26) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (27x^2 - 81x) / (54x^2 - 27)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 27x^2 - 81x:\n\n'
                    '27x(x - 3)\n\n'
                    'Step 2: Factor the denominator 54x^2 - 27:\n\n'
                    '27(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(27x(x - 3)) / (27(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(27x(x - 3)) / (27(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (27x^2 - 81x) / (54x^2 - 27) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (28x^2 + 56x) / (14x^2 - 112)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 28x^2 + 56x:\n\n'
                    '28x(x + 2)\n\n'
                    'Step 2: Factor the denominator 14x^2 - 112:\n\n'
                    '14(x^2 - 8)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(28x(x + 2)) / (14(x^2 - 8))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(28x(x + 2)) / (14(x^2 - 8))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '2(x + 2) / (x^2 - 8)\n\n'
                    'Final Answer: The simplified form of the rational expression (28x^2 + 56x) / (14x^2 - 112) is 2(x + 2) / (x^2 - 8).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (29x^2 - 87x) / (58x^2 + 29)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 29x^2 - 87x:\n\n'
                    '29x(x - 3)\n\n'
                    'Step 2: Factor the denominator 58x^2 + 29:\n\n'
                    '29(2x^2 + 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(29x(x - 3)) / (29(2x^2 + 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(29x(x - 3)) / (29(2x^2 + 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 + 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (29x^2 - 87x) / (58x^2 + 29) is (x - 3) / (2x^2 + 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (30x^2 - 90x) / (60x^2 - 30)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 30x^2 - 90x:\n\n'
                    '30x(x - 3)\n\n'
                    'Step 2: Factor the denominator 60x^2 - 30:\n\n'
                    '30(2x^2 - 1)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(30x(x - 3)) / (30(2x^2 - 1))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(30x(x - 3)) / (30(2x^2 - 1))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(x - 3) / (2x^2 - 1)\n\n'
                    'Final Answer: The simplified form of the rational expression (30x^2 - 90x) / (60x^2 - 30) is (x - 3) / (2x^2 - 1).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Simplify the rational expression: (31x^2 + 62x) / (3x^2 - 93)',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the numerator 31x^2 + 62x:\n\n'
                    '31x(x + 2)\n\n'
                    'Step 2: Factor the denominator 3x^2 - 93:\n\n'
                    '3(x^2 - 31)\n\n'
                    'Step 3: Rewrite the expression with factored terms:\n\n'
                    '(31x(x + 2)) / (3(x^2 - 31))\n\n'
                    'Step 4: Cancel out common factors in the numerator and denominator:\n\n'
                    '(31x(x + 2)) / (3(x^2 - 31))\n\n'
                    'Step 5: Simplify the expression:\n\n'
                    '(31/3)(x + 2) / (x^2 - 31)\n\n'
                    'Final Answer: The simplified form of the rational expression (31x^2 + 62x) / (3x^2 - 93) is (31/3)(x + 2) / (x^2 - 31).',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
