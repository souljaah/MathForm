import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class FunctionsPage extends StatelessWidget {
  final Color chosenColor;
  FunctionsPage  ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Functions and Relations'),
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
                'Functions and Relations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebra Functions and Relations are fundamental concepts that describe how elements from one set (the domain) are related to elements in another set (the range). Understanding functions and relations is essential for analyzing mathematical relationships and modeling various real-world phenomena.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Relations: A relation is a set of ordered pairs, where the first element of each pair is related to the second element. Relations can be represented in various ways, such as tables, graphs, mappings, or sets of ordered pairs. There are different types of relations, including:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'One to one relation: Each element in the domain is related to exactly one element in the range, and vice versa.\n\nMany to one relation: Multiple elements in the domain are related to the same element in the range.\n\nOne to many relation: An element in the domain is related to multiple elements in the range.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Functions: A function is a special type of relation where each input (domain element) is related to exactly one output (range element). In other words, for every input, there is exactly one output. Functions can be represented symbolically, graphically, numerically, or verbally.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Functions are typically denoted by f(x), where x is the input variable and f(x) represents the output. The set of all possible inputs is called the domain, and the set of corresponding outputs is called the range.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Functions can be classified based on their behavior and characteristics, such as:\n\nLinear Functions: Functions whose graphs are straight lines.\n\nQuaratic Functions: Functions that involve squares of the variable.\n\nExponential functions: Functions where the variable appears as an exponent.\n\nTrigonometric functions: Functions involving trigonometric ratios such as sine, cosine, and tangent.\n\nPolynomial functions: Functions involving terms with non-negative integer powers of the variable.\n\nRational functions: Functions that are ratios of polynomials.\n\nPiecewise functions: Functions defined by different rules or formulas on different parts of their domain.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Consider the function f(x) =2x+3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Understanding the functions:\n\nThe given function is f(x) =2x+3.\n\nThis is a linear function because it has the form y=mx+b, where m is the slope (2 in this case) and b is the y-intercept (3 in this case).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Finding the range:\n\nTo find the range of the function, we need to determine all possible output values (range) for the given input values (domain)\n\nSince this is a linear function, it continues indefinitely in both directions. Therefore, the range is all real numbers.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Plotting points:\n\nWe can plot some points to visualize the function. Let`s choose a few x-values and find the corresponding y-values.\n\nWhen x = 0, y = 2(0) + 3=3.\n\nWhen x= 1,y = 2(1) +3 =5.\n\nWhen x= -1,y = 2(-1) +3 =1.\n\nPlotting these points on a graph, we can see that they lie on a straight line.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Graphing the function:\n\nBased on the points plotted, we can draw a straight line passing through them.\n\nThis line represents the graph of the function f(x) =2x+3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 5: Relation:\n\nThe relation represented by the function f(x) =2x+3 consists of ordered pairs where the first element (x-value) is related to the second element (y-value) according to the rule y=2x+3.\n\nFor example, the ordered pair (1, 5) is in the relation because when x =1, y =2 (1) =3 =5. ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nGiven the function f(x) = x^2 - 4x + 3, determine the range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a quadratic function.\n\n'
                    'Step 2: Find the vertex of the parabola:\n\n'
                    'Using the formula for the x-coordinate of the vertex, x = -b / (2a), where a = 1 and b = -4,\n'
                    'x = -(-4) / (2*1) = 2.\n'
                    'When x = 2, f(2) = 2^2 - 4(2) + 3 = -1.\n'
                    'So, the vertex is at (2, -1).\n\n'
                    'Step 3: Analyze the parabola:\n\n'
                    'Since the parabola opens upwards, its minimum value occurs at the vertex.\n'
                    'Therefore, the range of the function is all real numbers greater than or equal to -1.\n\n'
                    'Final Answer: The range of the function f(x) = x^2 - 4x + 3 is all real numbers greater than or equal to -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nConsider the function f(x) = 1/x. Determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a reciprocal function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'The function is undefined when x = 0 because division by zero is undefined.\n'
                    'So, the domain of the function is all real numbers except 0.\n\n'
                    'Step 3: Find the range:\n\n'
                    'As x approaches positive infinity, f(x) approaches 0, and as x approaches negative infinity, f(x) approaches 0.\n'
                    'Therefore, the range of the function is all real numbers except 0.\n\n'
                    'Final Answer: The domain of the function f(x) = 1/x is all real numbers except 0, and its range is all real numbers except 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nGiven the function f(x) = sqrt(x + 2), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a square root function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'The expression under the square root, x + 2, must be non-negative to ensure the function is defined.\n'
                    'So, x + 2 >= 0, which implies x >= -2.\n'
                    'Therefore, the domain of the function is all real numbers greater than or equal to -2.\n\n'
                    'Step 3: Find the range:\n\n'
                    'Since the square root function always returns non-negative values, the range of the function is all real numbers greater than or equal to zero.\n\n'
                    'Final Answer: The domain of the function f(x) = sqrt(x + 2) is all real numbers greater than or equal to -2, and its range is all real numbers greater than or equal to zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nConsider the function f(x) = (x^2 - 4)/(x - 2). Determine any holes or points of discontinuity in the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a rational function.\n\n'
                    'Step 2: Find any holes or points of discontinuity:\n\n'
                    'The function is undefined when the denominator, x - 2, equals zero.\n'
                    'So, x - 2 = 0, which implies x = 2.\n'
                    'Therefore, the function has a hole at x = 2.\n\n'
                    'Final Answer: The function f(x) = (x^2 - 4)/(x - 2) has a hole at x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nGiven the function f(x) = |x - 3|, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an absolute value function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'The absolute value function is defined for all real numbers.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'Since the absolute value function always returns non-negative values, the range of the function is all real numbers greater than or equal to zero.\n\n'
                    'Final Answer: The domain of the function f(x) = |x - 3| is all real numbers, and its range is all real numbers greater than or equal to zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '6. Given the function f(x) = x^2 + 3x - 4, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a quadratic function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'Since the function is a polynomial, it is defined for all real numbers.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'To find the range, we need to analyze the behavior of the quadratic function.\n'
                    'Since the coefficient of the x^2 term is positive, the parabola opens upwards.\n'
                    'Therefore, the minimum value of the function occurs at the vertex.\n'
                    'To find the vertex, we use the formula for the x-coordinate of the vertex: x = -b / (2a), where a = 1 and b = 3.\n'
                    'x = -3 / (2 * 1) = -3 / 2.\n'
                    'Substituting x = -3 / 2 into the function, we find the minimum value: f(-3 / 2) = (-3 / 2)^2 + 3(-3 / 2) - 4.\n'
                    'f(-3 / 2) = 9 / 4 - 9 / 2 - 4 = 9 / 4 - 18 / 4 - 4 = -7 / 4 - 4 = -23 / 4.\n'
                    'Since the parabola opens upwards, the range is all real numbers greater than or equal to the minimum value.\n'
                    'Final Answer: The domain of the function f(x) = x^2 + 3x - 4 is all real numbers, and its range is all real numbers greater than or equal to -23 / 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '7. Given the function f(x) = sqrt(x + 2), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a square root function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the square root function, the expression under the square root must be non-negative.\n'
                    'So, x + 2 ≥ 0.\n'
                    'Solving for x, we get x ≥ -2.\n'
                    'Therefore, the domain of the function is all real numbers greater than or equal to -2.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The square root function always returns non-negative values.\n'
                    'So, the range of the function is all real numbers greater than or equal to zero.\n\n'
                    'Final Answer: The domain of the function f(x) = sqrt(x + 2) is all real numbers greater than or equal to -2, and its range is all real numbers greater than or equal to zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '8. Given the function f(x) = 1 / (x - 4), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a rational function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For a rational function, the denominator cannot be zero.\n'
                    'So, x - 4 ≠ 0.\n'
                    'Solving for x, we get x ≠ 4.\n'
                    'Therefore, the domain of the function is all real numbers except 4.\n\n'
                    'Step 3: Find the range:\n\n'
                    'As x approaches 4 from the left side, f(x) approaches negative infinity.\n'
                    'As x approaches 4 from the right side, f(x) approaches positive infinity.\n'
                    'So, the range of the function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = 1 / (x - 4) is all real numbers except 4, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '9. Given the function f(x) = log(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a logarithmic function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithmic function, the argument (x) must be positive.\n'
                    'So, x > 0.\n'
                    'Therefore, the domain of the function is all positive real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithmic function is all real numbers.\n'
                    'Since the logarithmic function approaches negative infinity as x approaches zero, there is no upper bound on the range.\n\n'
                    'Final Answer: The domain of the function f(x) = log(x) is all positive real numbers, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '10. Given the function f(x) = e^x, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the exponential function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the exponential function is all positive real numbers.\n'
                    'Since the exponential function approaches zero as x approaches negative infinity, there is no lower bound on the range.\n\n'
                    'Final Answer: The domain of the function f(x) = e^x is all real numbers, and its range is all positive real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '11. Given the function f(x) = sin(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a sine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the sine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the sine function is all real numbers between -1 and 1.\n'
                    'So, the range of the function is [-1, 1].\n\n'
                    'Final Answer: The domain of the function f(x) = sin(x) is all real numbers, and its range is [-1, 1].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '12. Given the function f(x) = cos(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cosine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cosine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cosine function is all real numbers between -1 and 1.\n'
                    'So, the range of the function is [-1, 1].\n\n'
                    'Final Answer: The domain of the function f(x) = cos(x) is all real numbers, and its range is [-1, 1].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '13. Given the function f(x) = tan(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a tangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the tangent function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at odd multiples of pi/2.\n'
                    'So, the domain of the function is all real numbers except odd multiples of pi/2.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the tangent function is all real numbers.\n'
                    'The function approaches positive infinity as it approaches odd multiples of pi/2 from the left side,\n'
                    'and it approaches negative infinity as it approaches odd multiples of pi/2 from the right side.\n\n'
                    'Final Answer: The domain of the function f(x) = tan(x) is all real numbers except odd multiples of pi/2, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '14. Given the function f(x) = cot(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cotangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cotangent function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at even multiples of pi.\n'
                    'So, the domain of the function is all real numbers except even multiples of pi.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cotangent function is all real numbers.\n'
                    'The function approaches positive infinity as it approaches even multiples of pi from the left side,\n'
                    'and it approaches negative infinity as it approaches even multiples of pi from the right side.\n\n'
                    'Final Answer: The domain of the function f(x) = cot(x) is all real numbers except even multiples of pi, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '15. Given the function f(x) = sec(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a secant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the secant function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at odd multiples of pi/2.\n'
                    'So, the domain of the function is all real numbers except odd multiples of pi/2.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the secant function is all real numbers except the values where the cosine function equals zero.\n'
                    'Since the cosine function equals zero at odd multiples of pi/2, the range of the secant function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = sec(x) is all real numbers except odd multiples of pi/2, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '16. Given the function f(x) = csc(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cosecant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cosecant function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at even multiples of pi.\n'
                    'So, the domain of the function is all real numbers except even multiples of pi.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cosecant function is all real numbers except the values where the sine function equals zero.\n'
                    'Since the sine function equals zero at multiples of pi, the range of the cosecant function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = csc(x) is all real numbers except even multiples of pi, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '17. Given the function f(x) = |x|, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an absolute value function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'The absolute value function is defined for all real numbers.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The absolute value function always returns non-negative values.\n'
                    'So, the range of the function is all real numbers greater than or equal to zero.\n\n'
                    'Final Answer: The domain of the function f(x) = |x| is all real numbers, and its range is all real numbers greater than or equal to zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '18. Given the function f(x) = x^3, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cubic function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'Since the function is a polynomial, it is defined for all real numbers.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'To find the range, we need to analyze the behavior of the cubic function.\n'
                    'As x approaches positive infinity, f(x) also approaches positive infinity.\n'
                    'As x approaches negative infinity, f(x) also approaches negative infinity.\n'
                    'Therefore, the range of the function is all real numbers.\n\n'
                    'Final Answer: The domain of the function f(x) = x^3 is all real numbers, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '19. Given the function f(x) = √(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a square root function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the square root function, the expression under the square root must be non-negative.\n'
                    'So, x ≥ 0.\n'
                    'Therefore, the domain of the function is all real numbers greater than or equal to zero.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The square root function always returns non-negative values.\n'
                    'So, the range of the function is all real numbers greater than or equal to zero.\n\n'
                    'Final Answer: The domain of the function f(x) = √(x) is all real numbers greater than or equal to zero, and its range is all real numbers greater than or equal to zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '20. Given the function f(x) = 1 / x, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a rational function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For a rational function, the denominator cannot be zero.\n'
                    'So, x ≠ 0.\n'
                    'Therefore, the domain of the function is all real numbers except zero.\n\n'
                    'Step 3: Find the range:\n\n'
                    'As x approaches zero from the left side, f(x) approaches negative infinity.\n'
                    'As x approaches zero from the right side, f(x) approaches positive infinity.\n'
                    'So, the range of the function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = 1 / x is all real numbers except zero, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '21. Given the function f(x) = log(x + 1), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a logarithmic function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithmic function, the argument (x + 1) must be positive.\n'
                    'So, x + 1 > 0.\n'
                    'Solving for x, we get x > -1.\n'
                    'Therefore, the domain of the function is all real numbers greater than -1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithmic function is all real numbers.\n'
                    'Since the logarithmic function approaches negative infinity as x approaches zero,\n'
                    'and it approaches positive infinity as x approaches positive infinity, there is no upper bound on the range.\n\n'
                    'Final Answer: The domain of the function f(x) = log(x + 1) is all real numbers greater than -1, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '22. Given the function f(x) = e^(-x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the exponential function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the exponential function is all positive real numbers.\n'
                    'Since the exponential function approaches positive infinity as x approaches negative infinity,\n'
                    'there is no upper bound on the range.\n\n'
                    'Final Answer: The domain of the function f(x) = e^(-x) is all real numbers, and its range is all positive real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '23. Given the function f(x) = logₐ(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a logarithmic function with base a.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithmic function, the argument (x) must be positive.\n'
                    'So, x > 0.\n'
                    'Therefore, the domain of the function is all positive real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithmic function is all real numbers.\n'
                    'Since the logarithmic function approaches negative infinity as x approaches zero,\n'
                    'and it approaches positive infinity as x approaches positive infinity, there is no upper bound on the range.\n\n'
                    'Final Answer: The domain of the function f(x) = logₐ(x) is all positive real numbers, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '24. Given the function f(x) = a^x, determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base a.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the exponential function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the exponential function depends on the value of the base (a).\n'
                    'If 0 < a < 1, then the range is (0, ∞).\n'
                    'If a > 1, then the range is (0, ∞).\n'
                    'If a = 1, then the range is {1}.\n'
                    'If a < 0, then the range is undefined for most real numbers.\n\n'
                    'Final Answer: The domain of the function f(x) = a^x is all real numbers, and its range depends on the value of the base (a).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '25. Given the function f(x) = sin(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a sine function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the sine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the sine function is all real numbers between -1 and 1.\n'
                    'So, the range of the function is [-1, 1].\n\n'
                    'Final Answer: The domain of the function f(x) = sin(2x) is all real numbers, and its range is [-1, 1].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '26. Given the function f(x) = cos(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cosine function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cosine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cosine function is all real numbers between -1 and 1.\n'
                    'So, the range of the function is [-1, 1].\n\n'
                    'Final Answer: The domain of the function f(x) = cos(2x) is all real numbers, and its range is [-1, 1].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '27. Given the function f(x) = tan(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a tangent function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the tangent function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at odd multiples of pi/2.\n'
                    'So, the domain of the function is all real numbers except odd multiples of pi/4.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the tangent function is all real numbers.\n'
                    'The function approaches positive infinity as it approaches odd multiples of pi/4 from the left side,\n'
                    'and it approaches negative infinity as it approaches odd multiples of pi/4 from the right side.\n\n'
                    'Final Answer: The domain of the function f(x) = tan(2x) is all real numbers except odd multiples of pi/4, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '28. Given the function f(x) = cot(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cotangent function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cotangent function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at even multiples of pi.\n'
                    'So, the domain of the function is all real numbers except even multiples of pi/4.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cotangent function is all real numbers.\n'
                    'The function approaches positive infinity as it approaches even multiples of pi/4 from the left side,\n'
                    'and it approaches negative infinity as it approaches even multiples of pi/4 from the right side.\n\n'
                    'Final Answer: The domain of the function f(x) = cot(2x) is all real numbers except even multiples of pi/4, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '29. Given the function f(x) = sec(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a secant function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the secant function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at odd multiples of pi/2.\n'
                    'So, the domain of the function is all real numbers except odd multiples of pi/4.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the secant function is all real numbers except the values where the cosine function equals zero.\n'
                    'Since the cosine function equals zero at odd multiples of pi/4, the range of the secant function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = sec(2x) is all real numbers except odd multiples of pi/4, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '30. Given the function f(x) = csc(2x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a cosecant function with double angle.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the cosecant function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined at even multiples of pi.\n'
                    'So, the domain of the function is all real numbers except even multiples of pi/4.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the cosecant function is all real numbers except the values where the sine function equals zero.\n'
                    'Since the sine function equals zero at multiples of pi/4, the range of the cosecant function is all real numbers except zero.\n\n'
                    'Final Answer: The domain of the function f(x) = csc(2x) is all real numbers except even multiples of pi/4, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '31. Given the function f(x) = arcsin(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse sine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the arcsine function, the argument (x) must be between -1 and 1.\n'
                    'So, -1 ≤ x ≤ 1.\n'
                    'Therefore, the domain of the function is all real numbers between -1 and 1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the arcsine function is all real numbers between -π/2 and π/2.\n'
                    'So, the range of the function is [-π/2, π/2].\n\n'
                    'Final Answer: The domain of the function f(x) = arcsin(x) is all real numbers between -1 and 1, and its range is [-π/2, π/2].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '32. Given the function f(x) = arccos(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse cosine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the arccosine function, the argument (x) must be between -1 and 1.\n'
                    'So, -1 ≤ x ≤ 1.\n'
                    'Therefore, the domain of the function is all real numbers between -1 and 1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the arccosine function is all real numbers between 0 and π.\n'
                    'So, the range of the function is [0, π].\n\n'
                    'Final Answer: The domain of the function f(x) = arccos(x) is all real numbers between -1 and 1, and its range is [0, π].',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '33. Given the function f(x) = arctan(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse tangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the arctangent function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the arctangent function is all real numbers between -π/2 and π/2.\n'
                    'So, the range of the function is (-π/2, π/2).\n\n'
                    'Final Answer: The domain of the function f(x) = arctan(x) is all real numbers, and its range is (-π/2, π/2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '34. Given the function f(x) = sinh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic sine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic sine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic sine function is all real numbers.\n'
                    'The function approaches positive infinity as x approaches positive infinity,\n'
                    'and it approaches negative infinity as x approaches negative infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = sinh(x) is all real numbers, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '35. Given the function f(x) = cosh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic cosine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic cosine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic cosine function is all real numbers greater than or equal to 1.\n'
                    'The function approaches positive infinity as x approaches positive infinity,\n'
                    'and it approaches positive infinity as x approaches negative infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = cosh(x) is all real numbers, and its range is all real numbers greater than or equal to 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '36. Given the function f(x) = tanh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic tangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic tangent function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic tangent function is all real numbers between -1 and 1.\n'
                    'The function approaches 1 as x approaches positive infinity,\n'
                    'and it approaches -1 as x approaches negative infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = tanh(x) is all real numbers, and its range is all real numbers between -1 and 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '37. Given the function f(x) = csch(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic cosecant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic cosecant function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined when sinh(x) = 0.\n'
                    'So, the domain of the function is all real numbers except x ≠ 0.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic cosecant function is all real numbers except zero.\n'
                    'The function approaches positive infinity as x approaches 0 from the right side,\n'
                    'and it approaches negative infinity as x approaches 0 from the left side.\n\n'
                    'Final Answer: The domain of the function f(x) = csch(x) is all real numbers except x ≠ 0, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '38. Given the function f(x) = sech(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic secant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic secant function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic secant function is all real numbers between 0 and 1.\n'
                    'The function approaches 0 as x approaches positive infinity,\n'
                    'and it approaches 0 as x approaches negative infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = sech(x) is all real numbers, and its range is all real numbers between 0 and 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '39. Given the function f(x) = coth(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the hyperbolic cotangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the hyperbolic cotangent function, there are restrictions on the domain where the function is undefined.\n'
                    'The function is undefined when tanh(x) = 0.\n'
                    'So, the domain of the function is all real numbers except x ≠ 0.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the hyperbolic cotangent function is all real numbers except zero.\n'
                    'The function approaches positive infinity as x approaches 0 from the right side,\n'
                    'and it approaches negative infinity as x approaches 0 from the left side.\n\n'
                    'Final Answer: The domain of the function f(x) = coth(x) is all real numbers except x ≠ 0, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '40. Given the function f(x) = arcsinh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic sine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic sine function, there are no restrictions on the domain.\n'
                    'So, the domain of the function is all real numbers.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic sine function is all real numbers.\n'
                    'The function approaches positive infinity as x approaches positive infinity,\n'
                    'and it approaches negative infinity as x approaches negative infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = arcsinh(x) is all real numbers, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '41. Given the function f(x) = arccosh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic cosine function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic cosine function, the argument (x) must be greater than or equal to 1.\n'
                    'So, x ≥ 1.\n'
                    'Therefore, the domain of the function is all real numbers greater than or equal to 1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic cosine function is all real numbers greater than or equal to 0.\n'
                    'The function approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = arccosh(x) is all real numbers greater than or equal to 1, and its range is all real numbers greater than or equal to 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '42. Given the function f(x) = arctanh(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic tangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic tangent function, the argument (x) must be between -1 and 1.\n'
                    'So, -1 < x < 1.\n'
                    'Therefore, the domain of the function is all real numbers between -1 and 1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic tangent function is all real numbers.\n'
                    'The function approaches positive infinity as x approaches 1 from the left side,\n'
                    'and it approaches negative infinity as x approaches -1 from the right side.\n\n'
                    'Final Answer: The domain of the function f(x) = arctanh(x) is all real numbers between -1 and 1, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '43. Given the function f(x) = arccsch(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic cosecant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic cosecant function, the argument (x) must be non-zero.\n'
                    'So, x ≠ 0.\n'
                    'Therefore, the domain of the function is all real numbers except zero.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic cosecant function is all real numbers except zero.\n'
                    'The function approaches positive infinity as x approaches 0 from the right side,\n'
                    'and it approaches negative infinity as x approaches 0 from the left side.\n\n'
                    'Final Answer: The domain of the function f(x) = arccsch(x) is all real numbers except zero, and its range is all real numbers except zero.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '44. Given the function f(x) = arcsech(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic secant function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic secant function, the argument (x) must be between 0 and 1.\n'
                    'So, 0 < x ≤ 1.\n'
                    'Therefore, the domain of the function is all real numbers between 0 and 1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic secant function is all real numbers greater than or equal to 0.\n'
                    'The function approaches positive infinity as x approaches 0.\n\n'
                    'Final Answer: The domain of the function f(x) = arcsech(x) is all real numbers between 0 and 1, and its range is all real numbers greater than or equal to 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '45. Given the function f(x) = arccoth(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the inverse hyperbolic cotangent function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the inverse hyperbolic cotangent function, the argument (x) must be non-zero.\n'
                    'So, x ≠ 0.\n'
                    'Therefore, the domain of the function is all real numbers except zero.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the inverse hyperbolic cotangent function is all real numbers.\n'
                    'The function approaches positive infinity as x approaches 0 from the right side,\n'
                    'and it approaches negative infinity as x approaches 0 from the left side.\n\n'
                    'Final Answer: The domain of the function f(x) = arccoth(x) is all real numbers except zero, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '46. Given the function f(x) = log(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function.\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the natural logarithm function, the argument (x) must be positive.\n'
                    'So, x > 0.\n'
                    'Therefore, the domain of the function is all real numbers greater than 0.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the natural logarithm function is all real numbers.\n'
                    'The function approaches negative infinity as x approaches 0 from the right side,\n'
                    'and it approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = log(x) is all real numbers greater than 0, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '47. Given the function f(x) = log_a(x), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base "a".\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithm function with base "a", the argument (x) must be positive.\n'
                    'So, x > 0.\n'
                    'Therefore, the domain of the function is all real numbers greater than 0.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithm function with base "a" is all real numbers.\n'
                    'The function approaches negative infinity as x approaches 0 from the right side,\n'
                    'and it approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = log_a(x) is all real numbers greater than 0, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '48. Given the function f(x) = ln(x + 1), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with the argument (x + 1).\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the natural logarithm function, the argument (x + 1) must be positive.\n'
                    'So, x + 1 > 0.\n'
                    'Solving for x, we get: x > -1.\n'
                    'Therefore, the domain of the function is all real numbers greater than -1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the natural logarithm function is all real numbers.\n'
                    'The function approaches negative infinity as x approaches -1 from the right side,\n'
                    'and it approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = ln(x + 1) is all real numbers greater than -1, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '49. Given the function f(x) = log_a(x + 1), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base "a" and the argument (x + 1).\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithm function with base "a", the argument (x + 1) must be positive.\n'
                    'So, x + 1 > 0.\n'
                    'Solving for x, we get: x > -1.\n'
                    'Therefore, the domain of the function is all real numbers greater than -1.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithm function with base "a" is all real numbers.\n'
                    'The function approaches negative infinity as x approaches -1 from the right side,\n'
                    'and it approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = log_a(x + 1) is all real numbers greater than -1, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '50. Given the function f(x) = log_a(x - 2), determine the domain and range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base "a" and the argument (x - 2).\n\n'
                    'Step 2: Find the domain:\n\n'
                    'For the logarithm function with base "a", the argument (x - 2) must be positive.\n'
                    'So, x - 2 > 0.\n'
                    'Solving for x, we get: x > 2.\n'
                    'Therefore, the domain of the function is all real numbers greater than 2.\n\n'
                    'Step 3: Find the range:\n\n'
                    'The range of the logarithm function with base "a" is all real numbers.\n'
                    'The function approaches negative infinity as x approaches 2 from the right side,\n'
                    'and it approaches positive infinity as x approaches positive infinity.\n\n'
                    'Final Answer: The domain of the function f(x) = log_a(x - 2) is all real numbers greater than 2, and its range is all real numbers.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
