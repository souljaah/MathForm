import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class PolynomialsPage extends StatelessWidget {
  final Color chosenColor;
  PolynomialsPage ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Polynomials'),
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
                'Polynomials',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In algebra, polynomials are expressions consisting of variables (also called indeterminates) and coefficients, which involve addition, subtraction, multiplication, and non-negative integer exponents of variables. These expressions can have one or more terms, and the terms can have different degrees.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Polynomials are classified based on their degrees:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. Constant polynomial: A polynomial of degree zero, where all terms are constants P(x) = 5.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Linear polynomial: A polynomial of degree one P(x) = 3x +2.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Quadratic polynomial: A polynomial of degree two P(x) = 2x^2 -3x +1.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Cubic polynomial: A polynomial of degree three P(x) = x^3 - 4x^2 + x-7.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '5. Quartic polynomial: A polynomial of degree for P(x) = 2x^4 + x^3 -5x^2 +3x+ 4.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Simplify the polynomial expression 3x^3-2x^2+5x -7.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Identify the terms in the polynomial expression.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThe given polynomial expression has four terms:\n\nTerm 1: 3x^3\n\nTerm 2: -2x^2\n\nTerm 3: 5x\n\nTerm4: -7',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Combine like terms.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSince there are no like terms in this polynomial expression, we cannot combine them further.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSo, the simplified form of the polynomial expression 3x^3 -2x^2 +5x - 7 is itself.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThere`s no further simplification possible for this polynomial expression since each term is already in its simplest form.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThis example demonstrates the process of identifying terms and combining like terms in a polynomial expression to simplify it. In this case, the polynomial expression is already in its simplest form, so we don`t need to perform any additional operations',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSimplify the polynomial: 4x^3 - 2x^2 + 5x - 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the terms in the polynomial expression:\n\n'
                    'Term 1: 4x^3\n'
                    'Term 2: -2x^2\n'
                    'Term 3: 5x\n'
                    'Term 4: -3\n\n'
                    'Step 2: Combine like terms:\n\n'
                    'Final Answer: The simplified form of the polynomial expression 4x^3 - 2x^2 + 5x - 3 is 4x^3 - 2x^2 + 5x - 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSimplify the polynomial: 2x^4 + 3x^3 - x^4 + 2x - 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the terms in the polynomial expression:\n\n'
                    'Term 1: 2x^4\n'
                    'Term 2: 3x^3\n'
                    'Term 3: -x^4\n'
                    'Term 4: 2x\n'
                    'Term 5: -5\n\n'
                    'Step 2: Combine like terms:\n\n'
                    '2x^4 - x^4 = x^4\n\n'
                    'Final Answer: The simplified form of the polynomial expression 2x^4 + 3x^3 - x^4 + 2x - 5 is x^4 + 3x^3 + 2x - 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSimplify the polynomial: 5x^3 - 2x^2 + 3x - 4x^3 + 7.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the terms in the polynomial expression:\n\n'
                    'Term 1: 5x^3\n'
                    'Term 2: -2x^2\n'
                    'Term 3: 3x\n'
                    'Term 4: -4x^3\n'
                    'Term 5: 7\n\n'
                    'Step 2: Combine like terms:\n\n'
                    '5x^3 - 4x^3 = x^3\n\n'
                    'Final Answer: The simplified form of the polynomial expression 5x^3 - 2x^2 + 3x - 4x^3 + 7 is x^3 - 2x^2 + 3x + 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSimplify the polynomial: 3x^2 + 2x + 5x^3 - x^2 - 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the terms in the polynomial expression:\n\n'
                    'Term 1: 3x^2\n'
                    'Term 2: 2x\n'
                    'Term 3: 5x^3\n'
                    'Term 4: -x^2\n'
                    'Term 5: -3\n\n'
                    'Step 2: Combine like terms:\n\n'
                    '3x^2 - x^2 = 2x^2\n\n'
                    'Final Answer: The simplified form of the polynomial expression 3x^2 + 2x + 5x^3 - x^2 - 3 is 2x^2 + 2x + 5x^3 - 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSimplify the polynomial: -2x^3 + 4x^2 - x + 3x^3 - 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the terms in the polynomial expression:\n\n'
                    'Term 1: -2x^3\n'
                    'Term 2: 4x^2\n'
                    'Term 3: -x\n'
                    'Term 4: 3x^3\n'
                    'Term 5: -2\n\n'
                    'Step 2: Combine like terms:\n\n'
                    '-2x^3 + 3x^3 = x^3\n\n'
                    'Final Answer: The simplified form of the polynomial expression -2x^3 + 4x^2 - x + 3x^3 - 2 is x^3 + 4x^2 - x - 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nFind the degree of the polynomial: 4x^3 - 2x^2 + 5x - 1.',
                solution: 'Solution:\n\n'
                    'The degree of a polynomial is the highest exponent of the variable.\n\n'
                    'In the polynomial 4x^3 - 2x^2 + 5x - 1, the highest exponent of x is 3.\n\n'
                    'Final Answer: The degree of the polynomial is 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nFactor the polynomial completely: x^3 - 8.',
                solution: 'Solution:\n\n'
                    'Recognize that the polynomial fits the difference of cubes pattern: a^3 - b^3 = (a - b)(a^2 + ab + b^2).\n\n'
                    'We rewrite the polynomial using the difference of cubes pattern: x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n\n'
                    'Final Answer: The factored form of the polynomial is (x - 2)(x^2 + 2x + 4).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nFind the roots of the polynomial equation: x^2 - 4x + 4 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 1, b = -4, c = 4.\n\n'
                    'Step 2: Use the quadratic formula to find the roots:\n\n'
                    'x = [ -b ± √(b^2 - 4ac) ] / (2a)\n\n'
                    'x = [ -(-4) ± √((-4)^2 - 4(1)(4)) ] / (2(1))\n\n'
                    'x = [ 4 ± √(16 - 16) ] / 2\n\n'
                    'x = [ 4 ± √(0) ] / 2\n\n'
                    'x = [ 4 ± 0 ] / 2\n\n'
                    'x = 4 / 2 = 2 (Repeated root)\n\n'
                    'Final Answer: The roots of the polynomial equation x^2 - 4x + 4 = 0 are x = 2 (Repeated root).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nPerform long division to divide the polynomials: 2x^3 + x^2 - 3x - 5 by x - 2.',
                solution: 'Solution:\n\n'
                    'Set up long division:\n\n'
                    '              _____________________________\n'
                    '     x - 2 | 2x^3 +  x^2 - 3x - 5\n\n'
                    '            - (2x^3 - 4x^2)\n'
                    '            ______________\n'
                    '                      5x^2 - 3x\n'
                    '                  - (5x^2 - 10x)\n'
                    '                  ______________\n'
                    '                            7x - 5\n\n'
                    'Since the degree of the remainder (7x - 5) is less than the degree of the divisor (x - 2), the division process ends.\n\n'
                    'Final Answer: The quotient is 2x^2 + 5x + 7 with a remainder of 7x - 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nFind the sum of the roots of the polynomial equation: 3x^2 - 5x + 2 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 3, b = -5, c = 2.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the sum of the roots:\n\n'
                    'The sum of the roots of a quadratic equation ax^2 + bx + c = 0 is given by -b/a.\n\n'
                    'Sum of roots = -(-5) / 3 = 5/3.\n\n'
                    'Final Answer: The sum of the roots of the polynomial equation 3x^2 - 5x + 2 = 0 is 5/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nFind the product of the roots of the polynomial equation: 2x^2 + 3x - 5 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 2, b = 3, c = -5.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the product of the roots:\n\n'
                    'The product of the roots of a quadratic equation ax^2 + bx + c = 0 is given by c/a.\n\n'
                    'Product of roots = -5 / 2.\n\n'
                    'Final Answer: The product of the roots of the polynomial equation 2x^2 + 3x - 5 = 0 is -5/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nFind the sum and product of the roots of the polynomial equation: x^2 - 7x + 10 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 1, b = -7, c = 10.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the sum and product of the roots:\n\n'
                    'Sum of roots = -b/a = -(-7)/1 = 7.\n\n'
                    'Product of roots = c/a = 10/1 = 10.\n\n'
                    'Final Answer: The sum of the roots is 7 and the product of the roots is 10.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nFind the remainder when the polynomial 3x^3 + 5x^2 - 2x + 7 is divided by x - 2.',
                solution: 'Solution:\n\n'
                    'Using synthetic division:\n\n'
                    '       2 | 3   5  -2  7\n'
                    '         |     6  22 40\n'
                    '      ------------------\n'
                    '         3  11  20 47\n\n'
                    'The remainder is 47.\n\n'
                    'Final Answer: The remainder when the polynomial is divided by x - 2 is 47.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nFind the roots of the polynomial equation: 2x^2 - 11x + 5 = 0.',
                solution: 'Solution:\n\n'
                    'Using the quadratic formula:\n\n'
                    'x = [ -(-11) ± √((-11)^2 - 4(2)(5)) ] / (2(2))\n\n'
                    'x = [ 11 ± √(121 - 40) ] / 4\n\n'
                    'x = [ 11 ± √(81) ] / 4\n\n'
                    'x = [ 11 ± 9 ] / 4\n\n'
                    'x = (11 + 9) / 4 = 20 / 4 = 5/2\n'
                    'x = (11 - 9) / 4 = 2 / 4 = 1/2\n\n'
                    'Final Answer: The roots of the polynomial equation 2x^2 - 11x + 5 = 0 are 5/2 and 1/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nFactor the polynomial completely: x^3 - 6x^2 + 11x - 6.',
                solution: 'Solution:\n\n'
                    'Recognize that the polynomial fits the sum of cubes pattern: a^3 + b^3 = (a + b)(a^2 - ab + b^2).\n\n'
                    'We rewrite the polynomial using the sum of cubes pattern: x^3 - 6x^2 + 11x - 6 = (x - 1)(x^2 - 5x + 6).\n\n'
                    'Recognize that the quadratic expression x^2 - 5x + 6 factors further into (x - 2)(x - 3).\n\n'
                    'Final Answer: The factored form of the polynomial is (x - 1)(x - 2)(x - 3).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nSimplify the polynomial expression: (2x^2 - 3x + 1) - (x^2 - 2x + 5).',
                solution: 'Solution:\n\n'
                    'Step 1: Distribute the negative sign in the second polynomial: -(x^2 - 2x + 5) = -x^2 + 2x - 5.\n\n'
                    'Step 2: Combine like terms:\n\n'
                    '(2x^2 - 3x + 1) - (x^2 - 2x + 5) = 2x^2 - 3x + 1 - x^2 + 2x - 5\n\n'
                    '= (2x^2 - x^2) + (-3x + 2x) + (1 - 5)\n\n'
                    '= x^2 - x - 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nSolve the polynomial inequality: x^2 - 3x + 2 > 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Factor the polynomial expression: x^2 - 3x + 2 = (x - 1)(x - 2).\n\n'
                    'Step 2: Identify the critical points by setting the expression equal to zero:\n\n'
                    '(x - 1)(x - 2) = 0\n\n'
                    'x - 1 = 0 → x = 1\n'
                    'x - 2 = 0 → x = 2\n\n'
                    'Step 3: Create a sign chart and test intervals:\n\n'
                    '|----------------------|\n'
                    '|   -    |   +    |   -   |\n'
                    '|---------|---------|--------|\n'
                    '(-∞, 1)  |  (1, 2)  | (2, ∞) |\n'
                    '|----------------------|\n\n'
                    'Step 4: Determine the solution:\n\n'
                    'For (1, 2), the expression is positive, so the solution is x ∈ (1, 2).\n\n'
                    'Final Answer: The solution to the polynomial inequality x^2 - 3x + 2 > 0 is x ∈ (1, 2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nFind the quotient when the polynomial 3x^3 + 5x^2 - 2x + 7 is divided by x + 2.',
                solution: 'Solution:\n\n'
                    'Using synthetic division:\n\n'
                    '       -2 | 3   5  -2  7\n'
                    '          |    -6  2  0\n'
                    '      -----------------\n'
                    '          3  -1  0  7\n\n'
                    'The quotient is 3x^2 - x + 7.\n\n'
                    'Final Answer: The quotient when the polynomial is divided by x + 2 is 3x^2 - x + 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nFind the roots of the polynomial equation: 3x^2 - 7x + 2 = 0.',
                solution: 'Solution:\n\n'
                    'Using the quadratic formula:\n\n'
                    'x = [ -(-7) ± √((-7)^2 - 4(3)(2)) ] / (2(3))\n\n'
                    'x = [ 7 ± √(49 - 24) ] / 6\n\n'
                    'x = [ 7 ± √(25) ] / 6\n\n'
                    'x = [ 7 ± 5 ] / 6\n\n'
                    'x = (7 + 5) / 6 = 12 / 6 = 2\n'
                    'x = (7 - 5) / 6 = 2 / 6 = 1/3\n\n'
                    'Final Answer: The roots of the polynomial equation 3x^2 - 7x + 2 = 0 are 2 and 1/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nFind the value of k if (x + 1) is a factor of the polynomial 2x^3 - 3x^2 + kx - 4.',
                solution: 'Solution:\n\n'
                    'If (x + 1) is a factor of the polynomial, then the polynomial should equal zero when x = -1.\n\n'
                    'Substitute x = -1 into the polynomial and set it equal to zero:\n\n'
                    '2(-1)^3 - 3(-1)^2 + k(-1) - 4 = 0\n\n'
                    '-2 - 3 - k - 4 = 0\n\n'
                    '-9 - k = 0\n\n'
                    'k = -9.\n\n'
                    'Final Answer: The value of k is -9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nFind the zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6.',
                solution: 'Solution:\n\n'
                    'To find the zeros of the function, set f(x) equal to zero and solve for x.\n\n'
                    'x^3 - 6x^2 + 11x - 6 = 0\n\n'
                    'Using synthetic division or other methods, find the roots of the polynomial equation.\n\n'
                    'The zeros of the function are the values of x for which f(x) = 0.\n\n'
                    'Final Answer: The zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6 are the roots of the equation x^3 - 6x^2 + 11x - 6 = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nSimplify the polynomial expression: (x^2 + 3x - 2)(x^2 - 4x + 5).',
                solution: 'Solution:\n\n'
                    'To simplify the expression, use the distributive property to multiply the polynomials.\n\n'
                    '(x^2 + 3x - 2)(x^2 - 4x + 5) = x^2 * (x^2 - 4x + 5) + 3x * (x^2 - 4x + 5) - 2 * (x^2 - 4x + 5).\n\n'
                    'Expand each term and combine like terms to get the simplified expression.\n\n'
                    'Final Answer: The simplified expression is x^4 - x^3 - 11x^2 + 17x - 10.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nSolve the polynomial inequality: x^2 - 5x + 6 < 0.',
                solution: 'Solution:\n\n'
                    'To solve the inequality, factor the polynomial expression and determine the intervals where the expression is less than zero.\n\n'
                    'x^2 - 5x + 6 = (x - 2)(x - 3).\n\n'
                    'The critical points are x = 2 and x = 3.\n\n'
                    'Create a sign chart and test intervals to determine the solution.\n\n'
                    'Final Answer: The solution to the inequality is 2 < x < 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nFind the remainder when the polynomial 4x^3 - 3x^2 + 2x - 1 is divided by x + 1.',
                solution: 'Solution:\n\n'
                    'Use synthetic division to divide the polynomial by x + 1 and find the remainder.\n\n'
                    'The remainder is the constant term in the synthetic division.\n\n'
                    'Final Answer: The remainder when the polynomial is divided by x + 1 is 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nFind the roots of the polynomial equation: x^2 + 2x + 1 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 + 2x + 1 = (x + 1)^2.\n\n'
                    'The equation (x + 1)^2 = 0 has a repeated root of x = -1.\n\n'
                    'Final Answer: The roots of the polynomial equation x^2 + 2x + 1 = 0 are x = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nFactor the polynomial expression: x^4 - 16.',
                solution: 'Solution:\n\n'
                    'Recognize that the polynomial fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the polynomial using the difference of squares pattern: x^4 - 16 = (x^2 + 4)(x^2 - 4).\n\n'
                    'The expression x^2 - 4 further factors into (x + 2)(x - 2).\n\n'
                    'Final Answer: The factored form of the polynomial expression is (x^2 + 4)(x + 2)(x - 2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nFind the sum and product of the roots of the polynomial equation: x^2 - 6x + 9 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 1, b = -6, c = 9.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the sum and product of the roots:\n\n'
                    'Sum of roots = -b/a = -(-6)/1 = 6.\n\n'
                    'Product of roots = c/a = 9/1 = 9.\n\n'
                    'Final Answer: The sum of the roots is 6 and the product of the roots is 9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nFind the quotient when the polynomial 2x^3 - 5x^2 + 3x - 7 is divided by x - 3.',
                solution: 'Solution:\n\n'
                    'Using synthetic division:\n\n'
                    '       3 | 2  -5  3  -7\n'
                    '         |     6   3 18\n'
                    '      ------------------\n'
                    '         2   1   6 11\n\n'
                    'The quotient is 2x^2 + x + 6 with a remainder of 11.\n\n'
                    'Final Answer: The quotient when the polynomial is divided by x - 3 is 2x^2 + x + 6 with a remainder of 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nFind the roots of the polynomial equation: x^2 - 4x + 4 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'The equation (x - 2)^2 = 0 has a repeated root of x = 2.\n\n'
                    'Final Answer: The roots of the polynomial equation x^2 - 4x + 4 = 0 are x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nFind the value of k if (x - 3) is a factor of the polynomial 4x^3 + 3x^2 + kx - 9.',
                solution: 'Solution:\n\n'
                    'If (x - 3) is a factor of the polynomial, then the polynomial should equal zero when x = 3.\n\n'
                    'Substitute x = 3 into the polynomial and set it equal to zero:\n\n'
                    '4(3)^3 + 3(3)^2 + 3k - 9 = 0\n\n'
                    '108 + 27 + 3k - 9 = 0\n\n'
                    '126 + 3k - 9 = 0\n\n'
                    '3k = -117\n\n'
                    'k = -39.\n\n'
                    'Final Answer: The value of k is -39.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nFind the zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6.',
                solution: 'Solution:\n\n'
                    'To find the zeros of the function, set f(x) equal to zero and solve for x.\n\n'
                    'x^3 - 6x^2 + 11x - 6 = 0\n\n'
                    'Using synthetic division or other methods, find the roots of the polynomial equation.\n\n'
                    'The zeros of the function are the values of x for which f(x) = 0.\n\n'
                    'Final Answer: The zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6 are the roots of the equation x^3 - 6x^2 + 11x - 6 = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nSimplify the polynomial expression: (x^2 + 3x - 2)(x^2 - 4x + 5).',
                solution: 'Solution:\n\n'
                    'To simplify the expression, use the distributive property to multiply the polynomials.\n\n'
                    '(x^2 + 3x - 2)(x^2 - 4x + 5) = x^2 * (x^2 - 4x + 5) + 3x * (x^2 - 4x + 5) - 2 * (x^2 - 4x + 5).\n\n'
                    'Expand each term and combine like terms to get the simplified expression.\n\n'
                    'Final Answer: The simplified expression is x^4 - x^3 - 11x^2 + 17x - 10.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nSolve the polynomial inequality: x^2 - 5x + 6 < 0.',
                solution: 'Solution:\n\n'
                    'To solve the inequality, factor the polynomial expression and determine the intervals where the expression is less than zero.\n\n'
                    'x^2 - 5x + 6 = (x - 2)(x - 3).\n\n'
                    'The critical points are x = 2 and x = 3.\n\n'
                    'Create a sign chart and test intervals to determine the solution.\n\n'
                    'Final Answer: The solution to the inequality is 2 < x < 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nFind the remainder when the polynomial 4x^3 - 3x^2 + 2x - 1 is divided by x + 1.',
                solution: 'Solution:\n\n'
                    'Use synthetic division to divide the polynomial by x + 1 and find the remainder.\n\n'
                    'The remainder is the constant term in the synthetic division.\n\n'
                    'Final Answer: The remainder when the polynomial is divided by x + 1 is 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nFind the roots of the polynomial equation: 3x^2 - 7x + 2 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'The equation (x - 2)^2 = 0 has a repeated root of x = 2.\n\n'
                    'Final Answer: The roots of the polynomial equation 3x^2 - 7x + 2 = 0 are x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nFactor the polynomial expression: x^4 - 16.',
                solution: 'Solution:\n\n'
                    'Recognize that the polynomial fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the polynomial using the difference of squares pattern: x^4 - 16 = (x^2 + 4)(x^2 - 4).\n\n'
                    'The expression x^2 - 4 further factors into (x + 2)(x - 2).\n\n'
                    'Final Answer: The factored form of the polynomial expression is (x^2 + 4)(x + 2)(x - 2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nFind the sum and product of the roots of the polynomial equation: x^2 - 6x + 9 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 1, b = -6, c = 9.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the sum and product of the roots:\n\n'
                    'Sum of roots = -b/a = -(-6)/1 = 6.\n\n'
                    'Product of roots = c/a = 9/1 = 9.\n\n'
                    'Final Answer: The sum of the roots is 6 and the product of the roots is 9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nFind the quotient when the polynomial 2x^3 - 5x^2 + 3x - 7 is divided by x - 3.',
                solution: 'Solution:\n\n'
                    'Using synthetic division:\n\n'
                    '       3 | 2  -5  3  -7\n'
                    '         |     6   3 18\n'
                    '      ------------------\n'
                    '         2   1   6 11\n\n'
                    'The quotient is 2x^2 + x + 6 with a remainder of 11.\n\n'
                    'Final Answer: The quotient when the polynomial is divided by x - 3 is 2x^2 + x + 6 with a remainder of 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nFind the roots of the polynomial equation: x^2 - 4x + 4 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'The equation (x - 2)^2 = 0 has a repeated root of x = 2.\n\n'
                    'Final Answer: The roots of the polynomial equation x^2 - 4x + 4 = 0 are x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nFind the value of k if (x - 3) is a factor of the polynomial 4x^3 + 3x^2 + kx - 9.',
                solution: 'Solution:\n\n'
                    'If (x - 3) is a factor of the polynomial, then the polynomial should equal zero when x = 3.\n\n'
                    'Substitute x = 3 into the polynomial and set it equal to zero:\n\n'
                    '4(3)^3 + 3(3)^2 + 3k - 9 = 0\n\n'
                    '108 + 27 + 3k - 9 = 0\n\n'
                    '126 + 3k - 9 = 0\n\n'
                    '3k = -117\n\n'
                    'k = -39.\n\n'
                    'Final Answer: The value of k is -39.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nFind the zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6.',
                solution: 'Solution:\n\n'
                    'To find the zeros of the function, set f(x) equal to zero and solve for x.\n\n'
                    'x^3 - 6x^2 + 11x - 6 = 0\n\n'
                    'Using synthetic division or other methods, find the roots of the polynomial equation.\n\n'
                    'The zeros of the function are the values of x for which f(x) = 0.\n\n'
                    'Final Answer: The zeros of the polynomial function f(x) = x^3 - 6x^2 + 11x - 6 are the roots of the equation x^3 - 6x^2 + 11x - 6 = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nSimplify the polynomial expression: (x^2 + 3x - 2)(x^2 - 4x + 5).',
                solution: 'Solution:\n\n'
                    'To simplify the expression, use the distributive property to multiply the polynomials.\n\n'
                    '(x^2 + 3x - 2)(x^2 - 4x + 5) = x^2 * (x^2 - 4x + 5) + 3x * (x^2 - 4x + 5) - 2 * (x^2 - 4x + 5).\n\n'
                    'Expand each term and combine like terms to get the simplified expression.\n\n'
                    'Final Answer: The simplified expression is x^4 - x^3 - 11x^2 + 17x - 10.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nSolve the polynomial inequality: x^2 - 5x + 6 < 0.',
                solution: 'Solution:\n\n'
                    'To solve the inequality, factor the polynomial expression and determine the intervals where the expression is less than zero.\n\n'
                    'x^2 - 5x + 6 = (x - 2)(x - 3).\n\n'
                    'The critical points are x = 2 and x = 3.\n\n'
                    'Create a sign chart and test intervals to determine the solution.\n\n'
                    'Final Answer: The solution to the inequality is 2 < x < 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nFind the remainder when the polynomial 4x^3 - 3x^2 + 2x - 1 is divided by x + 1.',
                solution: 'Solution:\n\n'
                    'Use synthetic division to divide the polynomial by x + 1 and find the remainder.\n\n'
                    'The remainder is the constant term in the synthetic division.\n\n'
                    'Final Answer: The remainder when the polynomial is divided by x + 1 is 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nFind the roots of the polynomial equation: 3x^2 - 7x + 2 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'The equation (x - 2)^2 = 0 has a repeated root of x = 2.\n\n'
                    'Final Answer: The roots of the polynomial equation 3x^2 - 7x + 2 = 0 are x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nFactor the polynomial expression: x^4 - 16.',
                solution: 'Solution:\n\n'
                    'Recognize that the polynomial fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the polynomial using the difference of squares pattern: x^4 - 16 = (x^2 + 4)(x^2 - 4).\n\n'
                    'The expression x^2 - 4 further factors into (x + 2)(x - 2).\n\n'
                    'Final Answer: The factored form of the polynomial expression is (x^2 + 4)(x + 2)(x - 2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nFind the sum and product of the roots of the polynomial equation: x^2 - 6x + 9 = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the coefficients of the quadratic equation: a = 1, b = -6, c = 9.\n\n'
                    'Step 2: Use Vieta\'s formulas to find the sum and product of the roots:\n\n'
                    'Sum of roots = -b/a = -(-6)/1 = 6.\n\n'
                    'Product of roots = c/a = 9/1 = 9.\n\n'
                    'Final Answer: The sum of the roots is 6 and the product of the roots is 9.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nFind the quotient when the polynomial 2x^3 - 5x^2 + 3x - 7 is divided by x - 3.',
                solution: 'Solution:\n\n'
                    'Using synthetic division:\n\n'
                    '       3 | 2  -5  3  -7\n'
                    '         |     6   3 18\n'
                    '      ------------------\n'
                    '         2   1   6 11\n\n'
                    'The quotient is 2x^2 + x + 6 with a remainder of 11.\n\n'
                    'Final Answer: The quotient when the polynomial is divided by x - 3 is 2x^2 + x + 6 with a remainder of 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nFind the roots of the polynomial equation: x^2 - 4x + 4 = 0.',
                solution: 'Solution:\n\n'
                    'To find the roots, use the quadratic formula or factor the polynomial expression.\n\n'
                    'x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'The equation (x - 2)^2 = 0 has a repeated root of x = 2.\n\n'
                    'Final Answer: The roots of the polynomial equation x^2 - 4x + 4 = 0 are x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nFind the value of k if (x - 3) is a factor of the polynomial 4x^3 + 3x^2 + kx - 9.',
                solution: 'Solution:\n\n'
                    'If (x - 3) is a factor of the polynomial, then the polynomial should equal zero when x = 3.\n\n'
                    'Substitute x = 3 into the polynomial and set it equal to zero:\n\n'
                    '4(3)^3 + 3(3)^2 + 3k - 9 = 0\n\n'
                    '108 + 27 + 3k - 9 = 0\n\n'
                    '126 + 3k - 9 = 0\n\n'
                    '3k = -117\n\n'
                    'k = -39.\n\n'
                    'Final Answer: The value of k is -39.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
