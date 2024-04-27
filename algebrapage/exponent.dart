import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class ExponentPage extends StatelessWidget {
  final Color chosenColor;
  ExponentPage ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exponent And Radicals'),
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
                'Exponent And Radicals',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebraic expressions often involve exponents and radicals, which are essential concepts in algebra. Let`s define each:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Exponents represent repeated multiplication of the same number (base) raised to a certain power (exponent). For example, in the expression a^n, a is the base, and n is the exponent. it indicates that a is multiplied by itself n times. The exponent can be a positive integer, negative integer, zero, fraction, or even irrational number.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Example: 2^3=2×2×2=8\nx^-2 = 1/x^2\n10^0-1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Radicals represent roots of numbers. The most common radical is the square root. The expression under the radical symbol is called the radicand. Radicals can also represent cube roots, fourth roots, and so on.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Example: Square root of 25 = 5, because 5x5= 25',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Exponent Rules: 1. Product Rule: a^m x a^n = a^m+n\n 2. Quotient Rule: a^m/a^n = a^m-n\n3. Power Rule: (a^n)^n = a^mxn\n4. Zero Exponent Rule: a^0 - 1\n5. Negative Exponent rule: a^-n= 1/a^n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Radical Rules: 1. Product Rule: Square root of ab = Square root of a x square root of b\n2. Quotient Rule: Square root of a /  Square root of b = Square root of a/b\n3. Power Rule: (Square root of a)^n = ^nSquare root of a^n\n4. Simplification: Square root of a^2 = l a l (absolute value)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nProblem: Simplify the expression Square root of x^4y^6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Apply the exponent rule: (x^m)^n = x^mxn.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Square root of x^4y^6 = (x^4y^6)^1/2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Apply the radical rule: (axb)^1/n = a^1/n x b^1/n.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '(x^4y^6)1/2 = (x^4)^1/2 x (y^6)^1/2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Simplify each term under the radicals using the power rule for exponents: (a^m)^1/n = a^m/n.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '(x^4)^1/2 = x^4/2 = x^2\n(y^6)1/2 = y^6/2 = y^3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Combine the simplified terms.\nSquare root of x^4y^6 = x^2 x y^3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Final Answer: x^2y^3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '1. Simplify the expression: √(x^2 * y^4).',
                solution: 'Solution:\n\n'
                    '√(x^2 * y^4)\n\n'
                    '= (√x^2 * √y^4)\n\n'
                    '= (x^(2/2) * y^(4/2))\n\n'
                    '= x * y^2\n\n'
                    'Final Answer: x * y^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '2. Simplify the expression: √(16x^2) - √(9y^4).',
                solution: 'Solution:\n\n'
                    '√(16x^2) - √(9y^4)\n\n'
                    '= 4x - 3y^2\n\n'
                    'Final Answer: 4x - 3y^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '3. Perform the multiplication: (2x^3y^2) * (3xy^2).',
                solution: 'Solution:\n\n'
                    '(2x^3y^2) * (3xy^2)\n\n'
                    '= (2 * 3) * (x^3 * x) * (y^2 * y^2)\n\n'
                    '= 6x^4y^4\n\n'
                    'Final Answer: 6x^4y^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '4. Simplify the expression: √(4x^2 + 9y^2).',
                solution: 'Solution:\n\n'
                    '√(4x^2 + 9y^2)\n\n'
                    '= √(2^2 * x^2 + 3^2 * y^2)\n\n'
                    '= 2x + 3y\n\n'
                    'Final Answer: 2x + 3y',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '5. Perform the division: \\(\\frac{{4x^4y^3}}{{2x^2y}}\\).',
                solution: 'Solution:\n\n'
                    '\\(\\frac{{4x^4y^3}}{{2x^2y}}\\)\n\n'
                    '= \\(\\frac{{4}}{{2}}\\) * \\(\\frac{{x^4}}{{x^2}}\\) * \\(\\frac{{y^3}}{{y}}\\)\n\n'
                    '= 2x^2y^2\n\n'
                    'Final Answer: 2x^2y^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '6. Simplify the expression: (√(x) * √(x^3))^2.',
                solution: 'Solution:\n\n'
                    '(√(x) * √(x^3))^2\n\n'
                    '= (√(x * x^3))^2\n\n'
                    '= (√(x^4))^2\n\n'
                    '= x^2\n\n'
                    'Final Answer: x^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '7. Simplify the expression: (√(16x) / √(x)).',
                solution: 'Solution:\n\n'
                    '(√(16x) / √(x))\n\n'
                    '= (4√(x) / √(x))\n\n'
                    '= 4\n\n'
                    'Final Answer: 4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '8. Simplify the expression: (√(a) * √(a^5)) / √(a^3).',
                solution: 'Solution:\n\n'
                    '(√(a) * √(a^5)) / √(a^3)\n\n'
                    '= (√(a * a^5)) / √(a^3)\n\n'
                    '= (√(a^6)) / √(a^3)\n\n'
                    '= a^(6/2) / a^(3/2)\n\n'
                    '= a^3 / a^(3/2)\n\n'
                    '= a^(3 - 3/2)\n\n'
                    '= a^(3/2)\n\n'
                    'Final Answer: a^(3/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '9. Simplify the expression: (√(a^4b) * √(ab^3))^2.',
                solution: 'Solution:\n\n'
                    '(√(a^4b) * √(ab^3))^2\n\n'
                    '= (√(a^4b * ab^3))^2\n\n'
                    '= (√(a^5b^4))^2\n\n'
                    '= a^5b^4\n\n'
                    'Final Answer: a^5b^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '10. Simplify the expression: (√(a^2 + 2ab + b^2)).',
                solution: 'Solution:\n\n'
                    'This expression represents the square root of a perfect square trinomial.\n\n'
                    'So, (√(a^2 + 2ab + b^2)) = a + b\n\n'
                    'Final Answer: a + b',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '11. Simplify the expression: (x^3) * (x^5).',
                solution: 'Solution:\n\n'
                    '(x^3) * (x^5)\n\n'
                    '= x^(3 + 5)\n\n'
                    '= x^8\n\n'
                    'Final Answer: x^8',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '12. Simplify the expression: (a^2) * (a^(-3)).',
                solution: 'Solution:\n\n'
                    '(a^2) * (a^(-3))\n\n'
                    '= a^(2 - 3)\n\n'
                    '= a^(-1)\n\n'
                    '= 1/a\n\n'
                    'Final Answer: 1/a',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '13. Simplify the expression: (x^4) / (x^2).',
                solution: 'Solution:\n\n'
                    '(x^4) / (x^2)\n\n'
                    '= x^(4 - 2)\n\n'
                    '= x^2\n\n'
                    'Final Answer: x^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '14. Simplify the expression: (a^5) / (a^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^5) / (a^(-2))\n\n'
                    '= a^(5 - (-2))\n\n'
                    '= a^(5 + 2)\n\n'
                    '= a^7\n\n'
                    'Final Answer: a^7',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '15. Simplify the expression: (x^3y^2) * (x^(-2)y^(-3)).',
                solution: 'Solution:\n\n'
                    '(x^3y^2) * (x^(-2)y^(-3))\n\n'
                    '= x^(3 - 2) * y^(2 - 3)\n\n'
                    '= x^1 * y^(-1)\n\n'
                    '= x * 1/y\n\n'
                    'Final Answer: x/y',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '16. Simplify the expression: (a^2b^3c^4) / (a^(-1)b^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^2b^3c^4) / (a^(-1)b^(-2))\n\n'
                    '= a^(2 - (-1)) * b^(3 - (-2)) * c^4\n\n'
                    '= a^(2 + 1) * b^(3 + 2) * c^4\n\n'
                    '= a^3 * b^5 * c^4\n\n'
                    'Final Answer: a^3b^5c^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '17. Simplify the expression: (x^5) / (x^(-3)) * (x^2).',
                solution: 'Solution:\n\n'
                    '(x^5) / (x^(-3)) * (x^2)\n\n'
                    '= x^(5 - (-3)) * x^2\n\n'
                    '= x^(5 + 3) * x^2\n\n'
                    '= x^8 * x^2\n\n'
                    '= x^(8 + 2)\n\n'
                    '= x^10\n\n'
                    'Final Answer: x^10',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '18. Simplify the expression: (a^4b^3) * (a^(-2)b^(-1)).',
                solution: 'Solution:\n\n'
                    '(a^4b^3) * (a^(-2)b^(-1))\n\n'
                    '= a^(4 - (-2)) * b^(3 - (-1))\n\n'
                    '= a^(4 + 2) * b^(3 + 1)\n\n'
                    '= a^6 * b^4\n\n'
                    'Final Answer: a^6b^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '19. Simplify the expression: (x^3) / (x^(-2)) * (x^(-4)).',
                solution: 'Solution:\n\n'
                    '(x^3) / (x^(-2)) * (x^(-4))\n\n'
                    '= x^(3 - (-2)) * x^(-4)\n\n'
                    '= x^(3 + 2) * x^(-4)\n\n'
                    '= x^5 * x^(-4)\n\n'
                    '= x^(5 - 4)\n\n'
                    '= x\n\n'
                    'Final Answer: x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '20. Simplify the expression: (a^3) / (a^(-2)) / (a^(-1)).',
                solution: 'Solution:\n\n'
                    '(a^3) / (a^(-2)) / (a^(-1))\n\n'
                    '= a^(3 - (-2)) / (a^(-1))\n\n'
                    '= a^(3 + 2) / (a^(-1))\n\n'
                    '= a^5 / a^(-1)\n\n'
                    '= a^(5 - (-1))\n\n'
                    '= a^6\n\n'
                    'Final Answer: a^6',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '21. Simplify the expression: (x^3y^2) / (x^(-1)y^(-3)).',
                solution: 'Solution:\n\n'
                    '(x^3y^2) / (x^(-1)y^(-3))\n\n'
                    '= x^(3 - (-1)) * y^(2 - (-3))\n\n'
                    '= x^(3 + 1) * y^(2 + 3)\n\n'
                    '= x^4 * y^5\n\n'
                    'Final Answer: x^4y^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '22. Simplify the expression: (a^4b^2) / (a^(-2)b^(-3)).',
                solution: 'Solution:\n\n'
                    '(a^4b^2) / (a^(-2)b^(-3))\n\n'
                    '= a^(4 - (-2)) * b^(2 - (-3))\n\n'
                    '= a^(4 + 2) * b^(2 + 3)\n\n'
                    '= a^6 * b^5\n\n'
                    'Final Answer: a^6b^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '23. Simplify the expression: (x^2y^3) * (x^(-3)y^(-4)).',
                solution: 'Solution:\n\n'
                    '(x^2y^3) * (x^(-3)y^(-4))\n\n'
                    '= x^(2 - (-3)) * y^(3 - (-4))\n\n'
                    '= x^(2 + 3) * y^(3 + 4)\n\n'
                    '= x^5 * y^7\n\n'
                    'Final Answer: x^5y^7',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '24. Simplify the expression: (a^(-2)b^(-3)) * (a^4b^5).',
                solution: 'Solution:\n\n'
                    '(a^(-2)b^(-3)) * (a^4b^5)\n\n'
                    '= a^(-2 + 4) * b^(-3 + 5)\n\n'
                    '= a^2 * b^2\n\n'
                    'Final Answer: a^2b^2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '25. Simplify the expression: (x^(-3)y^(-2)) / (x^4y^5).',
                solution: 'Solution:\n\n'
                    '(x^(-3)y^(-2)) / (x^4y^5)\n\n'
                    '= x^(-3 - 4) * y^(-2 - 5)\n\n'
                    '= x^(-7) * y^(-7)\n\n'
                    '= 1 / (x^7y^7)\n\n'
                    'Final Answer: 1 / (x^7y^7)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '26. Simplify the expression: (a^(-4)b^(-5)) / (a^2b^3).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-5)) / (a^2b^3)\n\n'
                    '= a^(-4 - 2) * b^(-5 - 3)\n\n'
                    '= a^(-6) * b^(-8)\n\n'
                    '= 1 / (a^6b^8)\n\n'
                    'Final Answer: 1 / (a^6b^8)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '27. Simplify the expression: (x^2y^3) / (xy^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^2y^3) / (xy^(-2))\n\n'
                    '= x^(2 - 1) * y^(3 - (-2))\n\n'
                    '= x^(1) * y^(3 + 2)\n\n'
                    '= xy^5\n\n'
                    'Final Answer: xy^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '28. Simplify the expression: (a^4b^2c^3) * (a^(-3)b^(-1)c^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^4b^2c^3) * (a^(-3)b^(-1)c^(-2))\n\n'
                    '= a^(4 - 3) * b^(2 - (-1)) * c^(3 - (-2))\n\n'
                    '= a^1 * b^3 * c^5\n\n'
                    'Final Answer: abc^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '29. Simplify the expression: (x^(-2)y^(-3)) * (x^(-1)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^(-2)y^(-3)) * (x^(-1)y^(-2))\n\n'
                    '= x^((-2) + (-1)) * y^((-3) + (-2))\n\n'
                    '= x^(-3) * y^(-5)\n\n'
                    '= 1 / (x^3y^5)\n\n'
                    'Final Answer: 1 / (x^3y^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '30. Simplify the expression: (a^2b^3) * (ab^(-2)) * (a^(-3)b^(-1)).',
                solution: 'Solution:\n\n'
                    '(a^2b^3) * (ab^(-2)) * (a^(-3)b^(-1))\n\n'
                    '= a^(2 + 1 - 3) * b^(3 - 2 - 1)\n\n'
                    '= a^0 * b^0\n\n'
                    '= 1\n\n'
                    'Final Answer: 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '31. Simplify the expression: (x^4y^3) / (x^2y^(-1)).',
                solution: 'Solution:\n\n'
                    '(x^4y^3) / (x^2y^(-1))\n\n'
                    '= x^(4 - 2) * y^(3 - (-1))\n\n'
                    '= x^2 * y^(3 + 1)\n\n'
                    '= x^2 * y^4\n\n'
                    'Final Answer: x^2y^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '32. Simplify the expression: (a^(-2)b^(-3)c^(-4)) * (a^3b^(-1)c^2).',
                solution: 'Solution:\n\n'
                    '(a^(-2)b^(-3)c^(-4)) * (a^3b^(-1)c^2)\n\n'
                    '= a^((-2) + 3) * b^((-3) + (-1)) * c^((-4) + 2)\n\n'
                    '= a^1 * b^(-4) * c^(-2)\n\n'
                    '= a * 1/(b^4) * 1/(c^2)\n\n'
                    'Final Answer: a / (b^4c^2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '33. Simplify the expression: (x^2y^3) / (xy^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^2y^3) / (xy^(-2))\n\n'
                    '= x^(2 - 1) * y^(3 - (-2))\n\n'
                    '= x^1 * y^(3 + 2)\n\n'
                    '= xy^5\n\n'
                    'Final Answer: xy^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '34. Simplify the expression: (a^2b^3) / (ab^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^2b^3) / (ab^(-2))\n\n'
                    '= a^(2 - 1) * b^(3 - (-2))\n\n'
                    '= a^1 * b^(3 + 2)\n\n'
                    '= ab^5\n\n'
                    'Final Answer: ab^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '35. Simplify the expression: (x^(-2)y^(-3)) / (x^(-1)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^(-2)y^(-3)) / (x^(-1)y^(-2))\n\n'
                    '= x^((-2) - (-1)) * y^((-3) - (-2))\n\n'
                    '= x^(-1) * y^(-1)\n\n'
                    '= 1 / (xy)\n\n'
                    'Final Answer: 1 / (xy)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '36. Simplify the expression: (a^(-4)b^(-3)) / (a^(-2)b^(-1)).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)) / (a^(-2)b^(-1))\n\n'
                    '= a^((-4) - (-2)) * b^((-3) - (-1))\n\n'
                    '= a^(-4 + 2) * b^(-3 + 1)\n\n'
                    '= a^(-2) * b^(-2)\n\n'
                    '= 1 / (a^2b^2)\n\n'
                    'Final Answer: 1 / (a^2b^2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '37. Simplify the expression: (x^4y^3) / (x^2y^(-1)).',
                solution: 'Solution:\n\n'
                    '(x^4y^3) / (x^2y^(-1))\n\n'
                    '= x^(4 - 2) * y^(3 - (-1))\n\n'
                    '= x^2 * y^(3 + 1)\n\n'
                    '= x^2 * y^4\n\n'
                    'Final Answer: x^2y^4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '38. Simplify the expression: (a^(-2)b^(-3)c^(-4)) / (a^3b^(-1)c^2).',
                solution: 'Solution:\n\n'
                    '(a^(-2)b^(-3)c^(-4)) / (a^3b^(-1)c^2)\n\n'
                    '= a^((-2) - 3) * b^((-3) - (-1)) * c^((-4) - 2)\n\n'
                    '= a^(-5) * b^(-2) * c^(-6)\n\n'
                    '= 1 / (a^5b^2c^6)\n\n'
                    'Final Answer: 1 / (a^5b^2c^6)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '39. Simplify the expression: (x^2y^3) * (x^(-3)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^2y^3) * (x^(-3)y^(-2))\n\n'
                    '= x^(2 - 3) * y^(3 - 2)\n\n'
                    '= x^(-1) * y^1\n\n'
                    '= y / x\n\n'
                    'Final Answer: y / x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '40. Simplify the expression: (a^4b^2) * (ab^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^4b^2) * (ab^(-2))\n\n'
                    '= a^(4 + 1) * b^(2 - 2)\n\n'
                    '= a^5 * b^0\n\n'
                    '= a^5\n\n'
                    'Final Answer: a^5',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '41. Simplify the expression: (x^(-3)y^(-2)) * (x^(-2)y^(-3)).',
                solution: 'Solution:\n\n'
                    '(x^(-3)y^(-2)) * (x^(-2)y^(-3))\n\n'
                    '= x^((-3) - 2) * y^((-2) - 3)\n\n'
                    '= x^(-5) * y^(-5)\n\n'
                    '= 1 / (x^5y^5)\n\n'
                    'Final Answer: 1 / (x^5y^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '42. Simplify the expression: (a^(-4)b^(-3)c^(-2)) * (a^3b^2c^3).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)c^(-2)) * (a^3b^2c^3)\n\n'
                    '= a^((-4) + 3) * b^((-3) + 2) * c^((-2) + 3)\n\n'
                    '= a^(-1) * b^(-1) * c^1\n\n'
                    '= 1 / (abc)\n\n'
                    'Final Answer: 1 / (abc)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '43. Simplify the expression: (x^(-2)y^(-3)) * (x^(-3)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^(-2)y^(-3)) * (x^(-3)y^(-2))\n\n'
                    '= x^((-2) - 3) * y^((-3) - 2)\n\n'
                    '= x^(-5) * y^(-5)\n\n'
                    '= 1 / (x^5y^5)\n\n'
                    'Final Answer: 1 / (x^5y^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '44. Simplify the expression: (a^(-4)b^(-3)) * (a^3b^2).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)) * (a^3b^2)\n\n'
                    '= a^((-4) + 3) * b^((-3) + 2)\n\n'
                    '= a^(-1) * b^(-1)\n\n'
                    '= 1 / (ab)\n\n'
                    'Final Answer: 1 / (ab)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '45. Simplify the expression: (x^(-3)y^(-2)) * (x^(-3)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^(-3)y^(-2)) * (x^(-3)y^(-2))\n\n'
                    '= x^((-3) - 3) * y^((-2) - 2)\n\n'
                    '= x^(-6) * y^(-4)\n\n'
                    '= 1 / (x^6y^4)\n\n'
                    'Final Answer: 1 / (x^6y^4)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '46. Simplify the expression: (a^(-4)b^(-3)) * (a^(-4)b^(-3)).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)) * (a^(-4)b^(-3))\n\n'
                    '= a^((-4) - 4) * b^((-3) - 3)\n\n'
                    '= a^(-8) * b^(-6)\n\n'
                    '= 1 / (a^8b^6)\n\n'
                    'Final Answer: 1 / (a^8b^6)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '47. Simplify the expression: (x^(-2)y^(-3)) * (x^(-1)y^(-2)).',
                solution: 'Solution:\n\n'
                    '(x^(-2)y^(-3)) * (x^(-1)y^(-2))\n\n'
                    '= x^((-2) - 1) * y^((-3) - 2)\n\n'
                    '= x^(-3) * y^(-5)\n\n'
                    '= 1 / (x^3y^5)\n\n'
                    'Final Answer: 1 / (x^3y^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '48. Simplify the expression: (a^(-4)b^(-3)) * (a^(-3)b^(-2)).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)) * (a^(-3)b^(-2))\n\n'
                    '= a^((-4) - 3) * b^((-3) - 2)\n\n'
                    '= a^(-7) * b^(-5)\n\n'
                    '= 1 / (a^7b^5)\n\n'
                    'Final Answer: 1 / (a^7b^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '49. Simplify the expression: (x^(-3)y^(-2)) * (x^(-2)y^(-3)).',
                solution: 'Solution:\n\n'
                    '(x^(-3)y^(-2)) * (x^(-2)y^(-3))\n\n'
                    '= x^((-3) - 2) * y^((-2) - 3)\n\n'
                    '= x^(-5) * y^(-5)\n\n'
                    '= 1 / (x^5y^5)\n\n'
                    'Final Answer: 1 / (x^5y^5)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '50. Simplify the expression: (a^(-4)b^(-3)) * (a^(-4)b^(-3)).',
                solution: 'Solution:\n\n'
                    '(a^(-4)b^(-3)) * (a^(-4)b^(-3))\n\n'
                    '= a^((-4) - 4) * b^((-3) - 3)\n\n'
                    '= a^(-8) * b^(-6)\n\n'
                    '= 1 / (a^8b^6)\n\n'
                    'Final Answer: 1 / (a^8b^6)',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
