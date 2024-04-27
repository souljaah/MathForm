import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class IntegrationPage extends StatelessWidget {
  final Color chosenColor;
  IntegrationPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Integration'),
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
                'Calculus Integration:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Calculus integration is a fundamental concept in mathematics that deals with finding the accumulation of quantities over intervals. Integration is essentially the reverse process of differentiation. It involves finding the antiderivative of a function, also known as the indefinite integral, or computing the definite integral over a specified interval.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'In simpler terms, integration allows us to calculate the area under a curve, representing the total change or accumulation of a quantity over a given range.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'There are two main types of integrals:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Indefinite Integral: This type of integral does not have specified limits of integration. It represents a family of functions that differ by a constant. The indefinite integral of a function f(x) is denoted by ∫f(x)dx.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Definite Integral: The definite integral computes the accumulation of a function over a specified interval [a,b]. It represents the area under the curve of the function between the limits a and b. The definite integral of a function f(x) from a and b is denoted by ∫^bva f(x)dx.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Integration has various applications in mathematics, physics, engineering, economics, and many other fields. It allows us to solve problems related to areas, volumes, work, probability, and much more.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nExample: Find the definite integral of the function f(x)= 2x over the interval [1,3].',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1: Compute the antiderivatives, ∫2xdx=x^2+C ',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nWhere C is the constant of integration.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: Evaluate the antiderivative at the upper and lower limits, f(x)= x^2+C',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: f(3)-f(1)=(3)^2 -(1)^2=9 - 1 = 8',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nSo, the definite integral of f(x)=2x over the interval [1,3] is 8',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nAnswer: 8',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = √x + 1/x with respect to x.',
                solution:
                'Solution:\n'
                    '1. Separate the terms of the function: ∫(√x + 1/x) dx.\n'
                    '2. Integrate each term separately.\n'
                    '3. Integrate √x with respect to x:\n'
                    '    - ∫√x dx = (2/3)x^(3/2) + C1.\n'
                    '4. Integrate 1/x with respect to x:\n'
                    '    - ∫(1/x) dx = ln|x| + C2.\n'
                    '5. Combine the results:\n'
                    '    - ∫(√x + 1/x) dx = (2/3)x^(3/2) + ln|x| + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^2 + 3x + 5 with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^2 + 3x + 5) dx.\n'
                    '2. Integrate each term separately.\n'
                    '3. Integrate x^2 with respect to x:\n'
                    '    - ∫x^2 dx = (1/3)x^3 + C1.\n'
                    '4. Integrate 3x with respect to x:\n'
                    '    - ∫(3x) dx = (3/2)x^2 + C2.\n'
                    '5. Integrate 5 with respect to x:\n'
                    '    - ∫5 dx = 5x + C3.\n'
                    '6. Combine the results:\n'
                    '    - ∫(x^2 + 3x + 5) dx = (1/3)x^3 + (3/2)x^2 + 5x + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^x with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫e^x dx.\n'
                    '2. Recall that the integral of e^x with respect to x is simply e^x.\n'
                    '3. Therefore, the integral of e^x is e^x + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 2sin(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫2sin(x) dx.\n'
                    '2. Recall that the integral of sin(x) with respect to x is -cos(x).\n'
                    '3. Therefore, the integral of 2sin(x) is -2cos(x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 5x^4 - 4x^3 + 3x^2 - 2x + 1 with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(5x^4 - 4x^3 + 3x^2 - 2x + 1) dx.\n'
                    '2. Integrate each term separately.\n'
                    '3. Integrate 5x^4 with respect to x:\n'
                    '    - ∫5x^4 dx = (5/5)x^5 + C1.\n'
                    '4. Integrate -4x^3 with respect to x:\n'
                    '    - ∫(-4x^3) dx = (-4/4)x^4 + C2.\n'
                    '5. Integrate 3x^2 with respect to x:\n'
                    '    - ∫(3x^2) dx = (3/3)x^3 + C3.\n'
                    '6. Integrate -2x with respect to x:\n'
                    '    - ∫(-2x) dx = (-2/2)x^2 + C4.\n'
                    '7. Integrate 1 with respect to x:\n'
                    '    - ∫1 dx = x + C5.\n'
                    '8. Combine the results:\n'
                    '    - ∫(5x^4 - 4x^3 + 3x^2 - 2x + 1) dx = x^5 - x^4 + x^3 - x^2 + x + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = sec^2(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫sec^2(x) dx.\n'
                    '2. Recall that the integral of sec^2(x) with respect to x is tan(x).\n'
                    '3. Therefore, the integral of sec^2(x) is tan(x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^(2x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫e^(2x) dx.\n'
                    '2. Recall that the integral of e^(kx) with respect to x is (1/k)e^(kx).\n'
                    '3. Therefore, the integral of e^(2x) is (1/2)e^(2x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 1/(1 + x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(1/(1 + x^2)) dx.\n'
                    '2. Recognize that the integrand resembles the derivative of arctan(x).\n'
                    '3. Recall that the integral of 1/(1 + x^2) with respect to x is arctan(x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = ln(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫ln(x) dx.\n'
                    '2. Recognize that the integral of ln(x) with respect to x is x*ln(x) - x + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 1/(x ln(x)) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(1/(x ln(x))) dx.\n'
                    '2. Recognize that the integral of 1/(x ln(x)) with respect to x is ln|ln(x)| + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^x * cos(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(e^x * cos(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = e^x and dv = cos(x) dx.\n'
                    '4. Compute du/dx = e^x and v = sin(x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = e^x * sin(x).\n'
                    '7. Calculate ∫v du = ∫sin(x) * e^x dx = e^x * sin(x) - ∫e^x * sin(x) dx.\n'
                    '8. Recognize that the integral ∫e^x * sin(x) dx can be solved using integration by parts again.\n'
                    '9. Repeat the steps of integration by parts until the integral becomes solvable.\n'
                    '10. Finally, solve for the original integral: ∫(e^x * cos(x)) dx = e^x * sin(x) - e^x * cos(x) + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 1/(x^2 - 4) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(1/(x^2 - 4)) dx.\n'
                    '2. Recognize that the integrand can be rewritten as a partial fraction.\n'
                    '3. Decompose the integrand into partial fractions: 1/(x^2 - 4) = A/(x - 2) + B/(x + 2).\n'
                    '4. Find the values of A and B by equating the fractions to the original integrand.\n'
                    '5. Integrate each partial fraction separately.\n'
                    '6. Solve for the integral: ∫(1/(x^2 - 4)) dx = (1/4) * ln|(x - 2)/(x + 2)| + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^2 * e^(x^3) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^2 * e^(x^3)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^3, then du/dx = 3x^2.\n'
                    '4. Solve for dx: dx = du / (3x^2).\n'
                    '5. Rewrite the integral in terms of u: ∫(1/3 * e^u) du.\n'
                    '6. Integrate with respect to u: (1/3) * ∫(e^u) du = (1/3) * e^u + C.\n'
                    '7. Substitute back u = x^3: (1/3) * e^(x^3) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * ln(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * ln(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = ln(x) and dv = x dx.\n'
                    '4. Compute du/dx = 1/x and v = (1/2)x^2.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (1/2)x^2 * ln(x).\n'
                    '7. Calculate ∫v du = ∫(1/2)x dx = (1/4)x^2.\n'
                    '8. Combine the results:\n'
                    '    - ∫(x * ln(x)) dx = (1/2)x^2 * ln(x) - (1/4)x^2 + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = (x^2 + 1) / x with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫((x^2 + 1) / x) dx.\n'
                    '2. Recognize that this integral can be split into two separate integrals:\n'
                    '   ∫(x^2 / x) dx + ∫(1 / x) dx.\n'
                    '3. Simplify each integral separately:\n'
                    '   - ∫(x^2 / x) dx = ∫x dx = (1/2)x^2 + C1.\n'
                    '   - ∫(1 / x) dx = ln|x| + C2.\n'
                    '4. Combine the results:\n'
                    '    - ∫((x^2 + 1) / x) dx = (1/2)x^2 + ln|x| + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^x with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^x) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = x and dv = e^x dx.\n'
                    '4. Compute du/dx = 1 and v = e^x.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = x * e^x.\n'
                    '7. Calculate ∫v du = ∫e^x dx = e^x.\n'
                    '8. Combine the results:\n'
                    '    - ∫(x * e^x) dx = x * e^x - e^x + C,\n'
                    '      where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = sqrt(x) * e^x with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(sqrt(x) * e^x) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = sqrt(x) and dv = e^x dx.\n'
                    '4. Compute du/dx = (1/2)sqrt(x) and v = e^x.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = sqrt(x) * e^x.\n'
                    '7. Calculate ∫v du = ∫e^x * (1/2)sqrt(x) dx.\n'
                    '8. Recognize that ∫e^x * (1/2)sqrt(x) dx requires substitution.\n'
                    '9. Let t = sqrt(x), then dt/dx = (1/2)sqrt(x) and dx = 2t dt.\n'
                    '10. Rewrite the integral in terms of t: ∫e^x * t dt.\n'
                    '11. Integrate with respect to t: ∫e^x * t dt = e^x * t - ∫e^x dt = e^x * t - e^x + C.\n'
                    '12. Substitute back t = sqrt(x): e^x * sqrt(x) - e^x + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = cos(x)^2 with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(cos(x)^2) dx.\n'
                    '2. Recognize that this integral requires the use of a trigonometric identity.\n'
                    '3. Recall the double angle formula for cos(2x): cos(2x) = 2cos^2(x) - 1.\n'
                    '4. Rearrange the formula to solve for cos^2(x): cos^2(x) = (1 + cos(2x)) / 2.\n'
                    '5. Substitute the identity into the integral: ∫((1 + cos(2x)) / 2) dx.\n'
                    '6. Split the integral into two separate integrals: (1/2) * ∫(1) dx + (1/2) * ∫cos(2x) dx.\n'
                    '7. Integrate each term separately: (1/2)x + (1/4) * sin(2x) + C.\n'
                    '8. Combine the results: (1/2)x + (1/4) * sin(2x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * sin(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * sin(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = x and dv = sin(x) dx.\n'
                    '4. Compute du/dx = 1 and v = -cos(x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = -x * cos(x).\n'
                    '7. Calculate ∫v du = ∫(-cos(x)) dx = sin(x).\n'
                    '8. Combine the results: -x * cos(x) - sin(x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^3 * cos(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^3 * cos(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = x^3 and dv = cos(x) dx.\n'
                    '4. Compute du/dx = 3x^2 and v = sin(x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = x^3 * sin(x).\n'
                    '7. Calculate ∫v du = ∫sin(x) * 3x^2 dx.\n'
                    '8. Recognize that ∫sin(x) * 3x^2 dx requires integration by parts again.\n'
                    '9. Repeat the steps of integration by parts until the integral becomes solvable.\n'
                    '10. Finally, solve for the original integral: ∫(x^3 * cos(x)) dx = x^3 * sin(x) - 3x^2 * cos(x) + 6x * sin(x) - 6 * cos(x) + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = (2x + 1) / (x^2 + 2x + 1) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫((2x + 1) / (x^2 + 2x + 1)) dx.\n'
                    '2. Recognize that the denominator can be factored: x^2 + 2x + 1 = (x + 1)^2.\n'
                    '3. Decompose the integrand into partial fractions: (2x + 1) / (x^2 + 2x + 1) = A/(x + 1) + B/(x + 1)^2.\n'
                    '4. Find the values of A and B by equating the fractions to the original integrand.\n'
                    '5. Integrate each partial fraction separately.\n'
                    '6. Solve for the integral: ∫((2x + 1) / (x^2 + 2x + 1)) dx = ln|x + 1| - 1/(x + 1) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = 1 / (x^2 * sqrt(x)) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(1 / (x^2 * sqrt(x))) dx.\n'
                    '2. Rewrite the integrand: 1 / (x^2 * sqrt(x)) = x^(-5/2).\n'
                    '3. Integrate the function: ∫(x^(-5/2)) dx = -2x^(-3/2) / 3 + C.\n'
                    '4. Simplify the result: -2/(3 * sqrt(x^3)) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^(2x) * sin(3x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(e^(2x) * sin(3x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = e^(2x) and dv = sin(3x) dx.\n'
                    '4. Compute du/dx = 2e^(2x) and v = -(1/3)cos(3x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = -(1/3)e^(2x)cos(3x).\n'
                    '7. Calculate ∫v du = -(1/3) ∫e^(2x)cos(3x) dx.\n'
                    '8. Recognize that ∫e^(2x)cos(3x) dx requires integration by parts again.\n'
                    '9. Repeat the steps of integration by parts until the integral becomes solvable.\n'
                    '10. Finally, solve for the original integral: ∫(e^(2x) * sin(3x)) dx = -(1/3)e^(2x)cos(3x) + (2/9)e^(2x)sin(3x) + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = tan(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫tan(x) dx.\n'
                    '2. Recognize that this integral can be rewritten in terms of ln|sec(x)|.\n'
                    '3. Recall that tan(x) = sin(x) / cos(x), and sec(x) = 1 / cos(x).\n'
                    '4. Therefore, ∫tan(x) dx = -ln|cos(x)| + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^2 * ln(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^2 * ln(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = ln(x) and dv = x^2 dx.\n'
                    '4. Compute du/dx = 1/x and v = (1/3)x^3.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (1/3)x^3 * ln(x).\n'
                    '7. Calculate ∫v du = ∫(1/3)x^2 dx = (1/9)x^3.\n'
                    '8. Combine the results: (1/3)x^3 * ln(x) - (1/9)x^3 + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * ln(1 + x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * ln(1 + x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = ln(1 + x) and dv = x dx.\n'
                    '4. Compute du/dx = 1 / (1 + x) and v = (1/2)x^2.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (1/2)x^2 * ln(1 + x).\n'
                    '7. Calculate ∫v du = ∫(1/2)x dx = (1/4)x^2.\n'
                    '8. Combine the results: (1/2)x^2 * ln(1 + x) - (1/4)x^2 + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * sqrt(4 - x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * sqrt(4 - x^2)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = 4 - x^2, then du/dx = -2x and dx = -du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(-sqrt(u)) du.\n'
                    '5. Integrate with respect to u: (-2/3)u^(3/2) + C.\n'
                    '6. Substitute back u = 4 - x^2: (-2/3)(4 - x^2)^(3/2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^(x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^(x^2)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^2, then du/dx = 2x and dx = du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(1/2)e^u du.\n'
                    '5. Integrate with respect to u: (1/2)e^u + C.\n'
                    '6. Substitute back u = x^2: (1/2)e^(x^2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * sqrt(x^2 + 1) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * sqrt(x^2 + 1)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^2 + 1, then du/dx = 2x and dx = du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫sqrt(u) du.\n'
                    '5. Integrate with respect to u: (2/3)u^(3/2) + C.\n'
                    '6. Substitute back u = x^2 + 1: (2/3)(x^2 + 1)^(3/2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = ln(2x + 1) / (2x + 1) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(ln(2x + 1) / (2x + 1)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = 2x + 1, then du/dx = 2 and dx = du / 2.\n'
                    '4. Rewrite the integral in terms of u: ∫(ln(u) / u) du.\n'
                    '5. Integrate with respect to u: (1/2)(ln(u))^2 + C.\n'
                    '6. Substitute back u = 2x + 1: (1/2)(ln(2x + 1))^2 + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^(x^2 + 1) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^(x^2 + 1)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^2 + 1, then du/dx = 2x and dx = du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(1/2)e^u du.\n'
                    '5. Integrate with respect to u: (1/2)e^u + C.\n'
                    '6. Substitute back u = x^2 + 1: (1/2)e^(x^2 + 1) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * sin(x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * sin(x^2)) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^2, then du/dx = 2x and dx = du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(1/2)sin(u) du.\n'
                    '5. Integrate with respect to u: -(1/2)cos(u) + C.\n'
                    '6. Substitute back u = x^2: -(1/2)cos(x^2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^(x^3) * 3x^2 with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(e^(x^3) * 3x^2) dx.\n'
                    '2. Recognize that this integral requires substitution.\n'
                    '3. Let u = x^3, then du/dx = 3x^2 and dx = du / (3x^2).\n'
                    '4. Rewrite the integral in terms of u: ∫e^u du.\n'
                    '5. Integrate with respect to u: e^u + C.\n'
                    '6. Substitute back u = x^3: e^(x^3) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = sqrt(1 + x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫sqrt(1 + x^2) dx.\n'
                    '2. Recognize that this integral requires a trigonometric substitution.\n'
                    '3. Let x = tan(θ), then dx = sec^2(θ) dθ.\n'
                    '4. Rewrite the integral in terms of θ: ∫sec^3(θ) dθ.\n'
                    '5. Use the reduction formula for ∫sec^n(θ) dθ.\n'
                    '6. Solve the integral in terms of θ.\n'
                    '7. Substitute back x = tan(θ).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^(-2x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^(-2x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = x and dv = e^(-2x) dx.\n'
                    '4. Compute du/dx = 1 and v = -(1/2)e^(-2x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = -(1/2)xe^(-2x).\n'
                    '7. Calculate ∫v du = ∫(-(1/2)e^(-2x)) dx.\n'
                    '8. Recognize that ∫(-(1/2)e^(-2x)) dx can be integrated directly.\n'
                    '9. Finally, solve for the original integral: ∫(x * e^(-2x)) dx = -(1/2)xe^(-2x) + (1/4)e^(-2x) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = (ln(x))^2 with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫((ln(x))^2) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = ln(x) and dv = ln(x) dx.\n'
                    '4. Compute du/dx = 1/x and v = xln(x) - x.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = x(ln(x))^2 - x^2.\n'
                    '7. Calculate ∫v du = ∫(x - 1) dx = (1/2)x^2 - x.\n'
                    '8. Combine the results: x(ln(x))^2 - x^2 - (1/2)x^2 + x + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * arctan(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * arctan(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = arctan(x) and dv = x dx.\n'
                    '4. Compute du/dx = 1 / (1 + x^2) and v = (1/2)x^2.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (1/2)x^2 * arctan(x).\n'
                    '7. Calculate ∫v du = ∫(1/2)x / (1 + x^2) dx.\n'
                    '8. Recognize that ∫(1/2)x / (1 + x^2) dx requires a substitution.\n'
                    '9. After substitution and simplification, solve for the integral.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = e^(-x) * cos(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(e^(-x) * cos(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = e^(-x) and dv = cos(x) dx.\n'
                    '4. Compute du/dx = -e^(-x) and v = sin(x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = -e^(-x) * sin(x).\n'
                    '7. Calculate ∫v du = ∫e^(-x)sin(x) dx.\n'
                    '8. Recognize that ∫e^(-x)sin(x) dx requires integration by parts again.\n'
                    '9. After applying integration by parts twice and simplifying, solve for the integral.\n'
                    '10. Finally, the solution is ∫(e^(-x) * cos(x)) dx = (-1/2)e^(-x)(cos(x) + sin(x)) + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^2 * e^(-2x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^2 * e^(-2x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = x^2 and dv = e^(-2x) dx.\n'
                    '4. Compute du/dx = 2x and v = (-1/2)e^(-2x).\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (-1/2)x^2 * e^(-2x).\n'
                    '7. Calculate ∫v du = ∫(-1/2)e^(-2x) * 2x dx.\n'
                    '8. Recognize that ∫(-1/2)e^(-2x) * 2x dx requires integration by parts again.\n'
                    '9. After applying integration by parts twice and simplifying, solve for the integral.\n'
                    '10. Finally, the solution is ∫(x^2 * e^(-2x)) dx = (-1/2)x^2 * e^(-2x) + (1/2)x * e^(-2x) - (1/4)e^(-2x) + C,\n'
                    '    where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * ln(x) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * ln(x)) dx.\n'
                    '2. Recognize that this integral requires integration by parts.\n'
                    '3. Let u = ln(x) and dv = x dx.\n'
                    '4. Compute du/dx = 1/x and v = (1/2)x^2.\n'
                    '5. Apply the integration by parts formula: ∫u dv = uv - ∫v du.\n'
                    '6. Calculate uv = (1/2)x^2 * ln(x).\n'
                    '7. Calculate ∫v du = ∫(1/2)x dx = (1/4)x^2.\n'
                    '8. Combine the results: (1/2)x^2 * ln(x) - (1/4)x^2 + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^(-x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^(-x^2)) dx.\n'
                    '2. Recognize that this integral requires a substitution.\n'
                    '3. Let u = -x^2, then du/dx = -2x and dx = du / (-2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(-1/2)e^u du.\n'
                    '5. Integrate with respect to u: (-1/2)e^u + C.\n'
                    '6. Substitute back u = -x^2: (-1/2)e^(-x^2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x^3 * e^(-x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x^3 * e^(-x^2)) dx.\n'
                    '2. Recognize that this integral requires a substitution.\n'
                    '3. Let u = -x^2, then du/dx = -2x and dx = du / (-2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(-1/2)x^2 e^u du.\n'
                    '5. Integrate with respect to u: (-1/4)x^2 e^u + C.\n'
                    '6. Substitute back u = -x^2: (-1/4)x^2 e^(-x^2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the integral of f(x) = x * e^(x^2) with respect to x.',
                solution:
                'Solution:\n'
                    '1. Identify the function: ∫(x * e^(x^2)) dx.\n'
                    '2. Recognize that this integral requires a substitution.\n'
                    '3. Let u = x^2, then du/dx = 2x and dx = du / (2x).\n'
                    '4. Rewrite the integral in terms of u: ∫(1/2)e^u du.\n'
                    '5. Integrate with respect to u: (1/2)e^u + C.\n'
                    '6. Substitute back u = x^2: (1/2)e^(x^2) + C,\n'
                    '   where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
