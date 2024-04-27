import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class LinearNonlinear extends StatelessWidget {
  final Color chosenColor;
  LinearNonlinear ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linear and Nonlinear Differential Equations'),
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
                'Linear and Nonlinear Differential Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Linear and nonlinear differential equations differ in how the unknown function and its derivatives appear within the equation.\n\n'
                    '1. Linear Differential Equations:\n'
                    '- In a linear differential equation, the unknown function and its derivatives appear in a linear manner.\n'
                    '- Mathematically, a linear differential equation can be represented as a polynomial expression of the unknown function and its derivatives.\n'
                    'Example: Ordinary differential equation: dy/dx + p(x)y = q(x)\n\n'
                    '2. Nonlinear Differential Equations:\n'
                    '- In a nonlinear differential equation, the unknown function and its derivatives appear in a nonlinear manner.\n'
                    '- Mathematically, a nonlinear differential equation cannot be expressed as a linear combination of the unknown function and its derivatives.\n'
                    'Example:\n\nOrdinary differential equation: dy/dx = y^2\n\nPartial differential equations: ∂u/dt = u ∂^2u/∂x^2 + f (x, t)',
                style: TextStyle(fontSize: 16),
              ),SizedBox(height: 20),
              Text(
                'Example 1: Linear Differential Equation\n\nSolve the linear ordinary differential equation: dy/dx = x - y.\n\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Solution:\n\n'
                    'Step 1: Rewrite the equation in standard form:\n\n'
                    'dy/dx + y = x.\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫(dy/dx + y) dx = ∫x dx.\n'
                    'y + ∫y dx = x^2/2 + C.\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y(x) = e^(-x)(C + x^2/2).',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Text(
                'Example 2: Nonlinear Differential Equation\n\nSolve the nonlinear ordinary differential equation: dy/dx = y^2.\n\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y^2 = dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/y^2) dy = ∫ dx.\n'
                    '-1/y = x + C.\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y(x) = -1/(x + C).',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\nSolve the first-order linear ordinary differential equation:\n'
                    'dy/dx + 2y = x\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n'
                    'Step 1: Rewrite the equation in standard form:\n'
                    'dy/dx = x - 2y\n'
                    '\n'
                    'Step 2: Integrate both sides with respect to x:\n'
                    '∫(dy/dx + 2y) dx = ∫x dx\n'
                    'y + 2∫y dx = x²/2 + C₁\n'
                    '\n'
                    'Step 3: Solve for y:\n'
                    'y(x) = e^(-2x)(C₁ + x²/2)\n'
                    '\n'
                    'Step 4: Apply the initial condition:\n'
                    'y(0) = e^(-2*0)(C₁ + 0²/2) = 1\n'
                    'C₁ = 1\n'
                    '\n'
                    'Step 5: Final Solution:\n'
                    'y(x) = e^(-2x)(1 + x²/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\nSolve the first-order non-linear ordinary differential equation:\n'
                    'dy/dx = y^2\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n'
                    'Step 1: Separate variables:\n'
                    'dy/y^2 = dx\n'
                    '\n'
                    'Step 2: Integrate both sides with respect to x:\n'
                    '∫(dy/y^2) = ∫dx\n'
                    '-1/y = x + C₁\n'
                    '\n'
                    'Step 3: Solve for y:\n'
                    'y(x) = -1/(x + C₁)\n'
                    '\n'
                    'Step 4: Apply the initial condition:\n'
                    'y(0) = -1/(0 + C₁) = 1\n'
                    'C₁ = -1\n'
                    '\n'
                    'Step 5: Final Solution:\n'
                    'y(x) = -1/(x - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\nSolve the first-order linear ordinary differential equation:\n'
                    'dy/dx + 3y = 2x\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n'
                    'Step 1: Rewrite the equation in standard form:\n'
                    'dy/dx = 2x - 3y\n'
                    '\n'
                    'Step 2: Integrate both sides with respect to x:\n'
                    '∫(dy/dx + 3y) dx = ∫(2x) dx\n'
                    'y + 3∫y dx = x² + C₁\n'
                    '\n'
                    'Step 3: Solve for y:\n'
                    'y(x) = e^(-3x)(C₁ + x²)\n'
                    '\n'
                    'Step 4: Apply the initial condition:\n'
                    'y(0) = e^(-3*0)(C₁ + 0²) = 0\n'
                    'C₁ = 0\n'
                    '\n'
                    'Step 5: Final Solution:\n'
                    'y(x) = e^(-3x)x²',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\nSolve the first-order non-linear ordinary differential equation:\n'
                    'dy/dx = y^2 + x\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n'
                    'Step 1: Separate variables:\n'
                    'dy/(y^2 + x) = dx\n'
                    '\n'
                    'Step 2: Integrate both sides with respect to x:\n'
                    '∫(dy/(y^2 + x)) = ∫dx\n'
                    'atan(y) = x + C₁\n'
                    '\n'
                    'Step 3: Solve for y:\n'
                    'y(x) = tan(x + C₁)\n'
                    '\n'
                    'Step 4: Apply the initial condition:\n'
                    'y(0) = tan(0 + C₁) = 1\n'
                    'C₁ = atan(1)\n'
                    'C₁ = π/4\n'
                    '\n'
                    'Step 5: Final Solution:\n'
                    'y(x) = tan(x + π/4)',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\nSolve the first-order linear ordinary differential equation:\n'
                    'dy/dx + y = 2x\n'
                    'Given initial condition: y(0) = 3',
                solution: 'Solution:\n'
                    'Step 1: Rewrite the equation in standard form:\n'
                    'dy/dx = 2x - y\n'
                    '\n'
                    'Step 2: Integrate both sides with respect to x:\n'
                    '∫(dy/dx + y) dx = ∫(2x) dx\n'
                    'y∫dx - ∫y dx = x² + C₁\n'
                    'xy - ∫y dx = x² + C₁\n'
                    '\n'
                    'Step 3: Solve for y:\n'
                    'y(x) = 2x - C₁e^x\n'
                    '\n'
                    'Step 4: Apply the initial condition:\n'
                    'y(0) = 2*0 - C₁e^0 = 3\n'
                    '-C₁ = 3\n'
                    'C₁ = -3\n'
                    '\n'
                    'Step 5: Final Solution:\n'
                    'y(x) = 2x + 3e^x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 - x\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the first-order linear ordinary differential equation:\n\n'
                    'dy/dx - 3y = 6x\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the equation in standard form:\n\n'
                    'dy/dx = 6x + 3y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫(dy/dx - 3y) dx = ∫(6x) dx\n'
                    'y∫dx - 3∫y dx = 3x² + C₁\n'
                    'xy - 3∫y dx = 3x² + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y(x) = 2x + C₁e^(3x)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    'y(0) = 2*0 + C₁e^0 = 2\n'
                    'C₁ = 2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y(x) = 2x + 2e^(3x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = x^2 + y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the first-order linear ordinary differential equation:\n\n'
                    'dy/dx + 2y = x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the equation in standard form:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫(dy/dx + 2y) dx = ∫(x^2) dx\n'
                    'y∫dx + 2∫y dx = x^3/3 + C₁\n'
                    'xy + 2∫y dx = x^3/3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y(x) = (x^3/3 - C₁)e^(-2x)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    'y(0) = (0^3/3 - C₁)e^(0) = 1\n'
                    '-C₁ = 1\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y(x) = (x^3/3 + 1)e^(-2x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = x^2 * y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the first-order linear ordinary differential equation:\n\n'
                    'dy/dx - y = x^2\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the equation in standard form:\n\n'
                    'dy/dx = x^2 + y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫(dy/dx - y) dx = ∫(x^2) dx\n'
                    'y∫dx - ∫y dx = x^3/3 + C₁\n'
                    'xy - ∫y dx = x^3/3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y(x) = x^3/3 + C₁e^x\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    'y(0) = 0^3/3 + C₁e^0 = 0\n'
                    'C₁ = 0\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y(x) = x^3/3',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 + x\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 + x\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y^2 = dx + x\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/y^2) dy = ∫(1 + x) dx\n'
                    '-1/y = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/2)x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + (1/2)*0^2 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + (1/2)x^2 - 1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 + x\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y^3 = dx + x\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/y^3) dy = ∫(1 + x) dx\n'
                    '-1/(2y^2) = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [-1/(2x + x^2 + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [-1/(0 + 0^2 + 2C₁)]^(1/2)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [-1/(2x + x^2 - 1)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 - x\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2 - 1) = dx + x\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/(y^2 - 1)) dy = ∫(1 + x) dx\n'
                    '(1/2)ln|y - 1| - (1/2)ln|y + 1| = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [C₁e^(2x) + 1] / [C₁e^(2x) - 1]\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [C₁ + 1] / [C₁ - 1]\n'
                    'C₁ = 0\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = (1 + e^(2x)) / (1 - e^(2x))',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 + 2x\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = dx + 2x\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/y^2) dy = ∫(1 + 2x) dx\n'
                    '-1/y = x + x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '0 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = 0\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + x^2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 + x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2 + 1) = dx + x^2\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(1/(y^2 + 1)) dy = ∫(1 + x^2) dx\n'
                    'arctan(y) = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = tan(x + (1/3)x^3 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = tan(0 + (1/3)*0^3 + C₁)\n'
                    'C₁ = 0\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = tan(x + (1/3)x^3)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = x^2 * y^2\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x^2 dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x^3 + 2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 + x^3\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x^3 dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/4)x^4 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/4)x^4 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x^4 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * x\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/2)x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x^2 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 + x^2\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = dx + x^2 dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [3 / (3x^3 + 6x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '0 = [3 / (0 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = -3/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [3 / (3x^3 + 6x - 3)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x^2 dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x^3 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = x * y^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/2)x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x^2 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/2)x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '0 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = 0\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + (1/2)x^2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (x + 1)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (x + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/2)x^2 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/2)x^2 + x + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x^2 + 2x - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * x\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = x dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [4 / (4x^2 + 8C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [4 / (0 + 0)]^(1/2)\n'
                    'C₁ = 1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [4 / (4x^2 + 4)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = x^2 dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x^3 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (x^2 + 1)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = (x^2 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = (1/3)x^3 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [3 / (3x^3 + 6x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [3 / (0 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = 3/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [3 / (3x^3 + 6x + 3)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x^2)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x^2) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/3)x^3 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x + (1/3)x^3 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (x^2 + 1)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (x^2 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + x + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x^3 + x - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x^3)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x^3) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/4)x^4 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/4)x^4 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + (1/4)x^4 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y * (1 + x^2)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y = (1 + x^2) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    'ln|y| = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = Ce^(x + (1/3)x^3)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = Ce^(0 + (1/3)*0^3)\n'
                    'C = 1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = e^(x + (1/3)x^3)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (x^2 + 1)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (x^2 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + x + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x^3 + 2x - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x^3)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x^3) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/4)x^4 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/4)x^4 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + (1/4)x^4 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y * (1 + x^3)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y = (1 + x^3) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    'ln|y| = x + (1/4)x^4 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = Ce^(x + (1/4)x^4)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = Ce^(0 + (1/4)*0^4)\n'
                    'C = 1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = e^(x + (1/4)x^4)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (1 + x^2)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = (1 + x^2) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [3 / (3x^3 + 6x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [3 / (0 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = 3/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [3 / (3x^3 + 6x + 3)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / (x + (1/2)x^2 + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -1 / (x + (1/2)x^2 - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (x^2 + 1)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (x^2 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = (1/3)x^3 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = -1 / ((1/3)x^3 + x + C₁)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = -1 / (0 + 0 + C₁)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = -2 / (x^3 + 2x - 1)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y * (1 + x^2)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (x + 1)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (x^3 + 1)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'This nonlinear ordinary differential equation cannot be solved analytically with standard methods. You may try using numerical methods like Euler\'s method or Runge-Kutta method to approximate the solution.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (1 + x^2)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = (1 + x^2) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = x + (1/3)x^3 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [3 / (3x^3 + 6x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [3 / (0 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = 3/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [3 / (3x^3 + 6x + 3)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x^3)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x^3) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y) = (1/4)x^4 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [-2 / (x^4 + 4x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [-2 / (0^4 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = -1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [-2 / (x^4 + 4x - 2)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y * (x^3 + 1)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y = (x^3 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    'ln|y| = (1/4)x^4 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = Ce^((1/4)x^4 + x)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = Ce^((1/4)*0^4 + 0)\n'
                    'C = 1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = e^((1/4)x^4 + x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = (1 + x) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [4 / (4x^2 + 8x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [4 / (0^2 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = 2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [4 / (4x^2 + 8x + 4)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x^3)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x^3) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y) = (1/4)x^4 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [-2 / (x^4 + 4C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [-2 / (0^4 + 4C₁)]^(1/2)\n'
                    'C₁ = -1/4\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [-2 / (x^4 - 1)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y * (x^3 + 1)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/y = (x^3 + 1) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    'ln|y| = (1/4)x^4 + x + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = Ce^((1/4)x^4 + x)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = Ce^((1/4)*0^4 + 0)\n'
                    'C = 2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = 2e^((1/4)x^4 + x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^3 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^3) = (1 + x) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/(2y^2) = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [4 / (4x^2 + 8x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '2 = [4 / (0^2 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = 1\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [4 / (4x^2 + 8x + 2)]^(1/2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the first-order nonlinear ordinary differential equation:\n\n'
                    'dy/dx = y^2 * (1 + x)\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Separate variables:\n\n'
                    'dy/(y^2) = (1 + x) dx\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '-1/y = x + (1/2)x^2 + C₁\n\n'
                    'Step 3: Solve for y:\n\n'
                    'y = [-2 / (x^2 + 2x + 2C₁)]^(1/2)\n\n'
                    'Step 4: Apply the initial condition:\n\n'
                    '1 = [-2 / (0^2 + 0 + 2C₁)]^(1/2)\n'
                    'C₁ = -1/2\n\n'
                    'Step 5: Final Solution:\n\n'
                    'y = [-2 / (x^2 + 2x - 1)]^(1/2)',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

