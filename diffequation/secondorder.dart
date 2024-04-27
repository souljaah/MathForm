import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class SecondOrder extends StatelessWidget {
  final Color chosenColor;
  SecondOrder ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second-Order Differential Equations'),
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
                'Second-Order Differential Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Second-order differential equations are equations that involve the second derivative of an unknown function with respect to a single independent variable. Mathematically, a second-order ordinary differential equation (ODE) can be represented as:\n\n'
                    'd²y/dx² = f(x, y, dy/dx)\n\n'
                    'or\n\n'
                    'M(x, y, dy/dx) d²y/dx² + N(x, y, dy/dx) dy/dx + P(x, y) = 0\n\n'
                    'where y is the unknown function of x (the independent variable), and f(x, y, dy/dx), M(x, y, dy/dx), N(x, y, dy/dx), and P(x, y) are functions of x, y, and dy/dx.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Example:\n\nSolve the second-order ordinary differential equation: d²y/dx² + 2 dy/dx + y = 0.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Solving this quadratic equation, we get a repeated root:\n\n'
                    'r = -1.\n\n'
                    'Step 2: General Solution\n\n'
                    'Since we have a repeated root, the general solution is given by:\n\n'
                    'y(x) = (C₁ + C₂ * x) * e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 3: Particular Solution\n\n'
                    'No initial or boundary conditions are provided, so the solution remains in terms of the arbitrary constants C₁ and C₂.\n\n'
                    'This concludes the solution to the second-order ODE.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\nSolve the second-order ordinary differential equation: d²y/dx² - 3 dy/dx + 2y = 0.\n\nGiven boundary conditions: y(0) = 1 and y(π) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can factorize the quadratic equation to find the roots:\n\n'
                    '(r - 1)(r - 2) = 0.\n\n'
                    'This gives us two distinct roots: r₁ = 1 and r₂ = 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'Since the roots are distinct, the general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁e^(r₁x) + C₂e^(r₂x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Boundary Conditions\n\n'
                    'Using the boundary conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1:\n\n'
                    '1 = C₁e^(0) + C₂e^(0) = C₁ + C₂.\n\n'
                    'At x = π, y(π) = 0:\n\n'
                    '0 = C₁e^(π) + C₂e^(2π).\n\n'
                    'Solving these equations, we can find the values of C₁ and C₂.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = C₁e^(x) + C₂e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\nSolve the second-order ordinary differential equation: d²y/dx² + 6 dy/dx + 9y = 0.\n\nGiven initial conditions: y(0) = 2 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can factorize the quadratic equation to find the roots:\n\n'
                    '(r + 3)² = 0.\n\n'
                    'This gives us a repeated root: r = -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'Since the root is repeated, the general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 1:\n\n'
                    '2 = C₁e^(0) + C₂e^(0) = C₁ + C₂.\n\n'
                    '1 = -3(C₁e^(0) + C₂e^(0)) + C₂(-3e^(0)).\n\n'
                    'Solving these equations, we can find the values of C₁ and C₂.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x).',

              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\nSolve the second-order ordinary differential equation: d²y/dx² + 4 dy/dx + 4y = 0.\n\nGiven initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can factorize the quadratic equation to find the roots:\n\n'
                    '(r + 2)² = 0.\n\n'
                    'This gives us a repeated root: r = -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'Since the root is repeated, the general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁e^(0) + C₂e^(0) = C₁ + C₂.\n\n'
                    '0 = -2(C₁e^(0) + C₂e^(0)) + C₂(-2e^(0)).\n\n'
                    'Solving these equations, we can find the values of C₁ and C₂.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\nSolve the second-order ordinary differential equation: d²y/dx² - 5 dy/dx + 6y = 0.\n\nGiven initial conditions: y(0) = 3 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can factorize the quadratic equation to find the roots:\n\n'
                    '(r - 2)(r - 3) = 0.\n\n'
                    'This gives us two distinct roots: r₁ = 2 and r₂ = 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'Since the roots are distinct, the general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁e^(2x) + C₂e^(3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 2:\n\n'
                    '3 = C₁e^(0) + C₂e^(0) = C₁ + C₂.\n\n'
                    '2 = 2(C₁e^(0)) + 3(C₂e^(0)).\n\n'
                    'Solving these equations, we can find the values of C₁ and C₂.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = C₁e^(2x) + C₂e^(3x).',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\nSolve the second-order ordinary differential equation: d²y/dx² + y = 0.\n\nGiven initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁cos(x) + C₂sin(x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁cos(0) + C₂sin(0) = C₁.\n\n'
                    '0 = -C₁sin(0) + C₂cos(0) = C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±2i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁cos(2x) + C₂sin(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁cos(0) + C₂sin(0) = C₁.\n\n'
                    '-1 = -2C₁sin(0) + 2C₂cos(0) = 2C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -1/2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = 2cos(2x) - 0.5sin(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1, 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁e^x + C₂e^(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 2:\n\n'
                    '1 = C₁e^0 + C₂e^0 = C₁ + C₂.\n\n'
                    '2 = C₁e^0 + 2C₂e^0 = C₁ + 2C₂.\n\n'
                    'Thus, C₁ = -1 and C₂ = 2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = -e^x + 2e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -2:\n\n'
                    '1 = C₁.\n\n'
                    '-2 = C₁(-3) + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = -5.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (1 - 5x)e^(-3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 0 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^x,\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 0 and y\'(0) = 1:\n\n'
                    '0 = C₁.\n\n'
                    '1 = C₁ + C₂.\n\n'
                    'Thus, C₁ = 0 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = xe^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2, 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁e^(2x) + C₂e^(3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 3:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '3 = 2C₁ + 3C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(2x) + e^(3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = -2:\n\n'
                    '3 = C₁.\n\n'
                    '-2 = -3C₁ + C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -5.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 - 5x)e^(-3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁.\n\n'
                    '0 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (1 + x)e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = C₁e^(2x) + C₂e^(-2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 1:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '1 = 2C₁ - 2C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(2x) + e^(-2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1, -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-x) + C₂e^(-2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -1:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '-1 = -C₁ - 2C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -2, -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-2x) + C₂e^(-3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 3:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '3 = -2C₁ - 3C₂.\n\n'
                    'Thus, C₁ = 5 and C₂ = -3.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = 5e^(-2x) - 3e^(-3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 2:\n\n'
                    '3 = C₁.\n\n'
                    '2 = 2C₁ + C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -4.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 - 4x)e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 2dy/dx + 1y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁.\n\n'
                    '0 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±2i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁cos(2x) + C₂sin(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁.\n\n'
                    '-1 = -2C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = 2cos(2x) + sin(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1, 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^x + C₂e^(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 1:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '1 = C₁ + 2C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = -2:\n\n'
                    '3 = C₁.\n\n'
                    '-2 = -3C₁ + C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -5.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 - 5x)e^(-3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 2:\n\n'
                    '3 = C₁.\n\n'
                    '2 = 2C₁ + C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -4.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 - 4x)e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2, 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(2x) + C₂e^(3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '-1 = 2C₁ + 3C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(2x) + e^(3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1, -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-x) + C₂e^(-2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 1:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '1 = -C₁ - 2C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁.\n\n'
                    '0 = -2C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (1 + 2x)e^(-2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 1:\n\n'
                    '2 = C₁.\n\n'
                    '1 = 3C₁ + C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -5.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2 - 5x)e^(3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -2, -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-2x) + C₂e^(-3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = -2:\n\n'
                    '3 = C₁ + C₂.\n\n'
                    '-2 = -2C₁ - 3C₂.\n\n'
                    'Thus, C₁ = 5 and C₂ = -2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (5e^(-2x) - 2e^(-3x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1, 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^x + C₂e^(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -1:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '-1 = C₁ + 2C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3e^x - 2e^(2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^x,\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁.\n\n'
                    '-1 = C₁ + C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -3.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2 - 3x)e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1, 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^x + C₂e^(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 0:\n\n'
                    '3 = C₁ + C₂.\n\n'
                    '0 = C₁ + 2C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2e^x + e^(2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 2:\n\n'
                    '2 = C₁.\n\n'
                    '2 = 2C₁ + C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2 - 2x)e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -1:\n\n'
                    '1 = C₁.\n\n'
                    '-1 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^x,\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 0:\n\n'
                    '2 = C₁.\n\n'
                    '0 = C₁ + C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2 - 2x)e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx² and y with r² and 1 respectively:\n\n'
                    'r² + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±2i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁cos(2x) + C₂sin(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 1:\n\n'
                    '3 = C₁.\n\n'
                    '1 = 2C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = 1/2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3cos(2x) + (1/2)sin(2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -2:\n\n'
                    '1 = C₁.\n\n'
                    '-2 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = -1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^(-x) - x * e^(-x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2, 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(2x) + C₂e^(3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 1:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '1 = 2C₁ + 3C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^(2x) + e^(3x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -3.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -3:\n\n'
                    '1 = C₁.\n\n'
                    '-3 = -3C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = -6.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^(-3x) - 6x * e^(-3x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = -2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx² and y with r² and 1 respectively:\n\n'
                    'r² - 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±√2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(√2x) + C₂e^(-√2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = -2:\n\n'
                    '3 = C₁ + C₂.\n\n'
                    '-2 = √2C₁ - √2C₂.\n\n'
                    'Thus, C₁ = (3 + √2) / 2√2 and C₂ = (3 - √2) / 2√2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = ((3 + √2)e^(√2x) + (3 - √2)e^(-√2x)) / 2√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1, -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-x) + C₂e^(-2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 2:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '2 = -C₁ - 2C₂.\n\n'
                    'Thus, C₁ = -1 and C₂ = 2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^(-x) + 2e^(-2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 7dy/dx + 12y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 7r + 12 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 3, 4.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(3x) + C₂e^(4x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 3:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '3 = 3C₁ + 4C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = 2e^(3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 5dy/dx + 6y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = -4.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 5r + 6 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -2, -3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-2x) + C₂e^(-3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = -4:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '-4 = -2C₁ - 3C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 6dy/dx + 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -3.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 6r + 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(3x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -3:\n\n'
                    '2 = C₁.\n\n'
                    '-3 = 3C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = -1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (2 - x)e^(3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = -4.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = -4:\n\n'
                    '3 = C₁.\n\n'
                    '-4 = -2C₁ + C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 - 2x)e^(-2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 9y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx² and y with r² and 1 respectively:\n\n'
                    'r² - 9 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±3.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(3x) + C₂e^(-3x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁ + C₂.\n\n'
                    '0 = 3C₁ - 3C₂.\n\n'
                    'Thus, C₁ = 1/2 and C₂ = 1/2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (1/2)e^(3x) + (1/2)e^(-3x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(-x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 1:\n\n'
                    '1 = C₁.\n\n'
                    '1 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^(-x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx² and y with r² and 1 respectively:\n\n'
                    'r² + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±2i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁cos(2x) + C₂sin(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = 0:\n\n'
                    '2 = C₁.\n\n'
                    '0 = -2C₁ + 2C₂.\n\n'
                    'Thus, C₁ = 2 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = 2cos(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 4dy/dx + 4y = 0.\n\n'
                    'Given initial conditions: y(0) = 3 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 4r + 4 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^(2x),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 3 and y\'(0) = 1:\n\n'
                    '3 = C₁.\n\n'
                    '1 = 2C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = 1/2.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (3 + (1/2)x)e^(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1, 2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^x + C₂e^(2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '-1 = C₁ + 2C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^x + e^(2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx² and y with r² and 1 respectively:\n\n'
                    'r² + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = ±i.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁cos(x) + C₂sin(x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 0:\n\n'
                    '1 = C₁.\n\n'
                    '0 = -C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² + 3dy/dx + 2y = 0.\n\n'
                    'Given initial conditions: y(0) = 2 and y\'(0) = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² + 3r + 2 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = -1, -2.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁e^(-x) + C₂e^(-2x)),\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 2 and y\'(0) = -1:\n\n'
                    '2 = C₁ + C₂.\n\n'
                    '-1 = -C₁ - 2C₂.\n\n'
                    'Thus, C₁ = 3 and C₂ = -1.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = (e^(-x) - e^(-2x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the second-order ordinary differential equation: d²y/dx² - 2dy/dx + y = 0.\n\n'
                    'Given initial conditions: y(0) = 1 and y\'(0) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Characteristic Equation\n\n'
                    'The characteristic equation corresponding to the given ODE is obtained by replacing d²y/dx², dy/dx, and y with r², r, and 1 respectively:\n\n'
                    'r² - 2r + 1 = 0.\n\n'
                    'Step 2: Solve for Roots\n\n'
                    'We can solve the characteristic equation to find the roots:\n\n'
                    'r = 1.\n\n'
                    'Step 3: General Solution\n\n'
                    'The general solution of the differential equation is given by:\n\n'
                    'y(x) = (C₁ + C₂x)e^x,\n\n'
                    'where C₁ and C₂ are arbitrary constants.\n\n'
                    'Step 4: Apply Initial Conditions\n\n'
                    'Using the initial conditions, we can determine the values of C₁ and C₂:\n\n'
                    'At x = 0, y(0) = 1 and y\'(0) = 1:\n\n'
                    '1 = C₁.\n\n'
                    '1 = C₁ + C₂.\n\n'
                    'Thus, C₁ = 1 and C₂ = 0.\n\n'
                    'Step 5: Final Solution\n\n'
                    'Substitute the determined values of C₁ and C₂ into the general solution to obtain the particular solution:\n\n'
                    'y(x) = e^x.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
