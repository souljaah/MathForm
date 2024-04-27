import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class FirstOrder extends StatelessWidget {
  final Color chosenColor;
  FirstOrder ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First-Order Differential Equations'),
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
                'First-Order Differential Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'First-order differential equations are equations that involve the first derivative of an unknown function with respect to a single independent variable. Mathematically, a first-order differential equation can be represented as:\n\ndy/dx = f(x, y)\n\nor\n\nM(x, y) + N (x, y) dy/dx= 0\n\nwhere y is the unknown function of x (the independent variable, and f (x, y), M (x, y), and N(x, y) are functions of x and y.',
                style: TextStyle(fontSize: 16),
              ),SizedBox(height: 10),
              Text(
                'First-Order Differential Equations (ODEs) are equations that involve the first derivative of an unknown function with respect to a single independent variable. They are fundamental in many areas of science and engineering.\n\n'
                    'Let\'s consider an example of solving a first-order ODE:\n\n'
                    'Problem:\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 3x.\n\n'
                    'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x.\n'
                    'dy = 3x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫3x dx.\n'
                    'y = 3x^2/2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'This concludes the solution to the first-order ODE.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\nSolve the first-order ordinary differential equation: dy/dx = x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x.\n'
                    'dy = x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫x dx.\n'
                    'y = x^2/2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0^2/2 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = x^2/2 + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\nSolve the first-order ordinary differential equation: dy/dx = e^x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x.\n'
                    'dy = e^x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫e^x dx.\n'
                    'y = e^x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = e^0 + C.\n'
                    'C = 1 - 1 = 0.\n\n'
                    'So, the particular solution is y = e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\nSolve the first-order ordinary differential equation: dy/dx = 2x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x.\n'
                    'dy = 2x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫2x dx.\n'
                    'y = x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0^2 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = x^2 + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\nSolve the first-order ordinary differential equation: dy/dx = cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = cos(x).\n'
                    'dy = cos(x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫cos(x) dx.\n'
                    'y = sin(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = sin(0) + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = sin(x).',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\nSolve the first-order ordinary differential equation: dy/dx = 1/(1+x^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 1/(1+x^2).\n'
                    'dy = 1/(1+x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫1/(1+x^2) dx.\n'
                    'y = arctan(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = arctan(0) + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = arctan(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\nSolve the first-order ordinary differential equation: dy/dx = x^2 + 2x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + 2x.\n'
                    'dy = (x^2 + 2x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + 2x) dx.\n'
                    'y = (1/3)x^3 + x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (1/3)*0^3 + 0^2 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = (1/3)x^3 + x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\nSolve the first-order ordinary differential equation: dy/dx = 3x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x^2.\n'
                    'dy = 3x^2 dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫3x^2 dx.\n'
                    'y = x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '1 = 1^3 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = x^3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\nSolve the first-order ordinary differential equation: dy/dx = 1 + e^x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 1 + e^x.\n'
                    'dy = (1 + e^x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(1 + e^x) dx.\n'
                    'y = x + e^x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0 + 1 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = x + e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\nSolve the first-order ordinary differential equation: dy/dx = x^2 - 4x + 4.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 - 4x + 4.\n'
                    'dy = (x^2 - 4x + 4) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 - 4x + 4) dx.\n'
                    'y = (1/3)x^3 - 2x^2 + 4x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = (1/3)*0^3 - 2*0^2 + 4*0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (1/3)x^3 - 2x^2 + 4x + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\nSolve the first-order ordinary differential equation: dy/dx = cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = cos(x).\n'
                    'dy = cos(x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫cos(x) dx.\n'
                    'y = sin(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = sin(0) + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = sin(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\nSolve the first-order ordinary differential equation: dy/dx = x^2 + 3x + 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + 3x + 2.\n'
                    'dy = (x^2 + 3x + 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + 3x + 2) dx.\n'
                    'y = (1/3)x^3 + (3/2)x^2 + 2x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = (1/3)*0^3 + (3/2)*0^2 + 2*0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (1/3)x^3 + (3/2)x^2 + 2x + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\nSolve the first-order ordinary differential equation: dy/dx = 2x + e^x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x + e^x.\n'
                    'dy = (2x + e^x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2x + e^x) dx.\n'
                    'y = x^2 + e^x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0^2 + e^0 + C.\n'
                    'C = 1 - 1.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = x^2 + e^x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\nSolve the first-order ordinary differential equation: dy/dx = 3sin(x) + 2cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3sin(x) + 2cos(x).\n'
                    'dy = (3sin(x) + 2cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3sin(x) + 2cos(x)) dx.\n'
                    'y = -3cos(x) + 2sin(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(π/2) = 1, substitute x = π/2 and y = 1 into the general solution:\n\n'
                    '1 = -3cos(π/2) + 2sin(π/2) + C.\n'
                    '1 = -3(0) + 2(1) + C.\n'
                    'C = 1 - 2.\n'
                    'C = -1.\n\n'
                    'So, the particular solution is y = -3cos(x) + 2sin(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\nSolve the first-order ordinary differential equation: dy/dx = x^3 + 4x^2 + 2x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 + 4x^2 + 2x + 1.\n'
                    'dy = (x^3 + 4x^2 + 2x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 + 4x^2 + 2x + 1) dx.\n'
                    'y = (1/4)x^4 + (4/3)x^3 + x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (1/4)*0^4 + (4/3)*0^3 + 0^2 + 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = (1/4)x^4 + (4/3)x^3 + x^2 + x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\nSolve the first-order ordinary differential equation: dy/dx = x*e^x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x*e^x.\n'
                    'dy = x*e^x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫x*e^x dx.\n'
                    'y = (x - 1)*e^x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (0 - 1)*e^0 + C.\n'
                    '0 = (-1) + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (x - 1)*e^x + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\nSolve the first-order ordinary differential equation: dy/dx = 2x*e^(x^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x*e^(x^2).\n'
                    'dy = 2x*e^(x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫2x*e^(x^2) dx.\n'
                    'y = e^(x^2) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = e^(0^2) + C.\n'
                    '1 = e^0 + C.\n'
                    '1 = 1 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = e^(x^2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\nSolve the first-order ordinary differential equation: dy/dx = 4x^3 + 3x^2 + 2x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 4x^3 + 3x^2 + 2x.\n'
                    'dy = (4x^3 + 3x^2 + 2x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(4x^3 + 3x^2 + 2x) dx.\n'
                    'y = x^4 + x^3 + x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0^4 + 0^3 + 0^2 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = x^4 + x^3 + x^2 + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\nSolve the first-order ordinary differential equation: dy/dx = e^x + cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + cos(x).\n'
                    'dy = (e^x + cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + cos(x)) dx.\n'
                    'y = e^x + sin(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = e^0 + sin(0) + C.\n'
                    '0 = 1 + 0 + C.\n'
                    'C = -1.\n\n'
                    'So, the particular solution is y = e^x + sin(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\nSolve the first-order ordinary differential equation: dy/dx = 3x^2 + 2x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x^2 + 2x + 1.\n'
                    'dy = (3x^2 + 2x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3x^2 + 2x + 1) dx.\n'
                    'y = x^3 + x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = 0^3 + 0^2 + 0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = x^3 + x^2 + x + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\nSolve the first-order ordinary differential equation: dy/dx = (1/x) + ln(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (1/x) + ln(x).\n'
                    'dy = ((1/x) + ln(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫((1/x) + ln(x)) dx.\n'
                    'y = ln|x| + x*ln(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 0, substitute x = 1 and y = 0 into the general solution:\n\n'
                    '0 = ln|1| + 1*ln(1) + C.\n'
                    '0 = 0 + 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = ln|x| + x*ln(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\nSolve the first-order ordinary differential equation: dy/dx = 2/x + x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2/x + x^2.\n'
                    'dy = (2/x + x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2/x + x^2) dx.\n'
                    'y = 2*ln|x| + (1/3)x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 0, substitute x = 1 and y = 0 into the general solution:\n\n'
                    '0 = 2*ln|1| + (1/3)*1^3 + C.\n'
                    '0 = 0 + (1/3) + C.\n'
                    'C = -1/3.\n\n'
                    'So, the particular solution is y = 2*ln|x| + (1/3)x^3 - 1/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\nSolve the first-order ordinary differential equation: dy/dx = 3x^2 + 2x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x^2 + 2x - 1.\n'
                    'dy = (3x^2 + 2x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3x^2 + 2x - 1) dx.\n'
                    'y = x^3 + x^2 - x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = 0^3 + 0^2 - 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = x^3 + x^2 - x.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\nSolve the first-order ordinary differential equation: dy/dx = 1/(x^2) + e^(x^3).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 1/(x^2) + e^(x^3).\n'
                    'dy = (1/(x^2) + e^(x^3)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(1/(x^2) + e^(x^3)) dx.\n'
                    'y = -1/x + (1/3)e^(x^3) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '1 = -1/1 + (1/3)e^(1^3) + C.\n'
                    '1 = -1/1 + (1/3)e^1 + C.\n'
                    '1 = -1/1 + (1/3)*e + C.\n'
                    '1 = -1 + (e/3) + C.\n'
                    'C = 1 + 1/3 - e/3.\n\n'
                    'So, the particular solution is y = -1/x + (1/3)e^(x^3) + 1 + 1/3 - e/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\nSolve the first-order ordinary differential equation: dy/dx = e^x + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + x.\n'
                    'dy = (e^x + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + x) dx.\n'
                    'y = e^x + (1/2)x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = e^0 + (1/2)*0^2 + C.\n'
                    '1 = 1 + 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = e^x + (1/2)x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\nSolve the first-order ordinary differential equation: dy/dx = (1 + e^x)/(1 - e^x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (1 + e^x)/(1 - e^x).\n'
                    'dy = ((1 + e^x)/(1 - e^x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫((1 + e^x)/(1 - e^x)) dx.\n'
                    'y = ln|1 - e^x| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = ln|1 - e^0| + C.\n'
                    '0 = ln|1 - 1| + C.\n'
                    '0 = ln|0| + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = ln|1 - e^x|.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\nSolve the first-order ordinary differential equation: dy/dx = x*e^(x^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x*e^(x^2).\n'
                    'dy = x*e^(x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫x*e^(x^2) dx.\n'
                    'y = (1/2)e^(x^2) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (1/2)e^(0^2) + C.\n'
                    '0 = (1/2)*e^0 + C.\n'
                    '0 = (1/2)*1 + C.\n'
                    'C = -1/2.\n\n'
                    'So, the particular solution is y = (1/2)e^(x^2) - 1/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\nSolve the first-order ordinary differential equation: dy/dx = x*cos(x) - y*sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x*cos(x) - y*sin(x).\n'
                    'dy + y*sin(x) = x*cos(x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy + y*sin(x)) = ∫x*cos(x) dx.\n'
                    'y*cos(x) = x*sin(x) + cos(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1*cos(0) = 0*sin(0) + cos(0) + C.\n'
                    '1 = 1 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y*cos(x) = x*sin(x) + cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\nSolve the first-order ordinary differential equation: dy/dx = (x + y)/(x - y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x + y)/(x - y).\n'
                    'dy(x - y) = (x + y) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy(x - y) = ∫(x + y) dx.\n'
                    'y*x - y^2 = (1/2)x^2 + x*y + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 2, substitute x = 1 and y = 2 into the general solution:\n\n'
                    '2*1 - 2^2 = (1/2)*1^2 + 1*2 + C.\n'
                    '2 - 4 = (1/2) + 2 + C.\n'
                    '-2 = (1/2) + 2 + C.\n'
                    'C = -4 - (1/2).\n\n'
                    'So, the particular solution is y*x - y^2 = (1/2)x^2 + x*y - 9/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\nSolve the first-order ordinary differential equation: dy/dx = y/(x*cos(x) + sin(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y/(x*cos(x) + sin(x)).\n'
                    'dy/y = dx/(x*cos(x) + sin(x)).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/y) = ∫(dx/(x*cos(x) + sin(x))).\n'
                    'ln|y| = ln|x*cos(x) + sin(x)| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(π/2) = 1, substitute x = π/2 and y = 1 into the general solution:\n\n'
                    'ln|1| = ln|(π/2)*cos(π/2) + sin(π/2)| + C.\n'
                    '0 = ln|(π/2)*0 + 1| + C.\n'
                    '0 = ln|1| + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is ln|y| = ln|x*cos(x) + sin(x)|.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\nSolve the first-order ordinary differential equation: dy/dx = y^2 * (x + 1).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y^2 * (x + 1).\n'
                    'dy/y^2 = (x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/y^2) = ∫(x + 1) dx.\n'
                    '-1/y = (1/2)x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '-1/1 = (1/2)*0^2 + 0 + C.\n'
                    '-1 = 0 + 0 + C.\n'
                    'C = -1.\n\n'
                    'So, the particular solution is -1/y = (1/2)x^2 + x - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\nSolve the first-order ordinary differential equation: dy/dx = y^2 + x*y.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y^2 + x*y.\n'
                    'dy/(y^2 + x*y) = dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/(y^2 + x*y)) = ∫dx.\n'
                    '(-1/y)ln|y| = x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(-1/1)ln|1| = 1 + C.\n'
                    '0 = 1 + C.\n'
                    'C = -1.\n\n'
                    'So, the particular solution is (-1/y)ln|y| = x - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\nSolve the first-order ordinary differential equation: dy/dx = (x + y)/(x - y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x + y)/(x - y).\n'
                    'dy = (x + y)/(x - y) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x + y)/(x - y) dx.\n'
                    'y = (1/2)x^2 + 2*x*ln|x - y| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = (1/2)*0^2 + 2*0*ln|0 - 1| + C.\n'
                    '1 = 0 + 0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (1/2)x^2 + 2*x*ln|x - y| + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\nSolve the first-order ordinary differential equation: dy/dx = (y - x)/(y + x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (y - x)/(y + x).\n'
                    '(y + x) dy = (y - x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(y + x) dy = ∫(y - x) dx.\n'
                    '(1/2)*y^2 + x*y = (1/2)*y^2 - x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '(1/2)*1^2 + 0*1 = (1/2)*1^2 - 0^2 + C.\n'
                    '1/2 = 1/2 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is (1/2)*y^2 + x*y = (1/2)*y^2 - x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\nSolve the first-order ordinary differential equation: dy/dx = (y - 1)/(x^2 + y^2 - 1).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (y - 1)/(x^2 + y^2 - 1).\n'
                    'dy/(y - 1) = dx/(x^2 + y^2 - 1).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/(y - 1)) = ∫(dx/(x^2 + y^2 - 1)).\n'
                    'ln|y - 1| = arctan(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the general solution:\n\n'
                    'ln|2 - 1| = arctan(0) + C.\n'
                    'ln|1| = 0 + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is ln|y - 1| = arctan(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\nSolve the first-order ordinary differential equation: dy/dx = x^2 - y^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 - y^2.\n'
                    'dy/(1 - y^2) = dx/x^2.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/(1 - y^2)) = ∫(dx/x^2).\n'
                    '1/2*ln|1 + y| - 1/2*ln|1 - y| = -1/x + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1/2*ln|1 + 1| - 1/2*ln|1 - 1| = -1/0 + C.\n'
                    '1/2*ln|2| - 1/2*ln|0| = -∞ + C.\n'
                    '∞ = -∞ + C.\n'
                    'C = ∞ + ∞.\n\n'
                    'So, the particular solution is 1/2*ln|1 + y| - 1/2*ln|1 - y| = -1/x + ∞ + ∞.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\nSolve the first-order ordinary differential equation: dy/dx = x*e^y.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x*e^y.\n'
                    'dy/e^y = x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/e^y) = ∫(x dx).\n'
                    '-ln|e^y| = (1/2)*x^2 + C.\n'
                    '-y = (1/2)*x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (1/2)*0^2 + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is -y = (1/2)*x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\nSolve the first-order ordinary differential equation: dy/dx = (x + y)/(x^2 + y^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x + y)/(x^2 + y^2).\n'
                    'dy/(y) = dx/(x).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/(y)) = ∫(dx/(x)).\n'
                    'ln|y| = ln|x| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    'ln|1| = ln|1| + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is ln|y| = ln|x|.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\nSolve the first-order ordinary differential equation: dy/dx = (x^2 - 1)/(y - x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x^2 - 1)/(y - x).\n'
                    'dy = ((x^2 - 1)/(y - x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫((x^2 - 1)/(y - x)) dx.\n'
                    'y = (1/2)*x^2 - ln|y - x| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '1 = (1/2)*0^2 - ln|1 - 0| + C.\n'
                    '1 = 0 - ln|1| + C.\n'
                    '1 = 0 - 0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (1/2)*x^2 - ln|y - x| + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\nSolve the first-order ordinary differential equation: dy/dx = (x - y)/(x + y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x - y)/(x + y).\n'
                    '(x + y) dy = (x - y) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(x + y) dy = ∫(x - y) dx.\n'
                    '(1/2)*y^2 + xy = (1/2)*x^2 - xy + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '(1/2)*0^2 + 0*0 = (1/2)*0^2 - 0*0 + C.\n'
                    '0 + 0 = 0 - 0 + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is (1/2)*y^2 + xy = (1/2)*x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\nSolve the first-order ordinary differential equation: dy/dx = x/y.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x/y.\n'
                    'y dy = x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫y dy = ∫x dx.\n'
                    '(1/2)*y^2 = (1/2)*x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(1/2)*1^2 = (1/2)*1^2 + C.\n'
                    '1/2 = 1/2 + C.\n'
                    '0 = C.\n\n'
                    'So, the particular solution is (1/2)*y^2 = (1/2)*x^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\nSolve the first-order ordinary differential equation: dy/dx = (x - 2y)/(x + y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x - 2y)/(x + y).\n'
                    '(x + y) dy = (x - 2y) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(x + y) dy = ∫(x - 2y) dx.\n'
                    '(1/2)*y^2 + xy = (1/2)*x^2 - y^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(1/2)*1^2 + 1*1 = (1/2)*1^2 - 1^2 + C.\n'
                    '1/2 + 1 = 1/2 - 1 + C.\n'
                    '3/2 = -1/2 + C.\n'
                    '2 = C.\n\n'
                    'So, the particular solution is (1/2)*y^2 + xy = (1/2)*x^2 - y^2 + 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\nSolve the first-order ordinary differential equation: dy/dx = (x^2 - y^2)/(x - y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (x^2 - y^2)/(x - y).\n'
                    'dy/(y^2 - x^2) = dx/(x - y).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/(y^2 - x^2)) = ∫(dx/(x - y)).\n'
                    '(-1/2)*ln|y + x| + (1/2)*ln|y - x| = ln|x - y| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(-1/2)*ln|1 + 1| + (1/2)*ln|1 - 1| = ln|1 - 1| + C.\n'
                    '(-1/2)*ln|2| + (1/2)*ln|0| = ln|0| + C.\n'
                    '(-1/2)*ln|2| + (1/2)*∞ = ∞ + C.\n'
                    '∞ - ∞ = ∞ + C.\n'
                    '0 = ∞ + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is (-1/2)*ln|y + x| + (1/2)*ln|y - x| = ln|x - y|.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\nSolve the first-order ordinary differential equation: dy/dx = x*sqrt(y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x*sqrt(y).\n'
                    'dy/sqrt(y) = x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/sqrt(y)) = ∫(x dx).\n'
                    '2*sqrt(y) = (1/2)*x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    '2*sqrt(1) = (1/2)*0^2 + C.\n'
                    '2 = 0 + C.\n'
                    'C = 2.\n\n'
                    'So, the particular solution is 2*sqrt(y) = (1/2)*x^2 + 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\nSolve the first-order ordinary differential equation: dy/dx = y/(x^2 + y^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y/(x^2 + y^2).\n'
                    'dy/y = dx/(x^2 + y^2).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy/y) = ∫(dx/(x^2 + y^2)).\n'
                    'ln|y| = arctan(x/y) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the general solution:\n\n'
                    'ln|1| = arctan(0/1) + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is ln|y| = arctan(x/y).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\nSolve the first-order ordinary differential equation: dy/dx = (y^2 - x^2)/(x + y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (y^2 - x^2)/(x + y).\n'
                    '(x + y) dy = (y^2 - x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(x + y) dy = ∫(y^2 - x^2) dx.\n'
                    '(1/2)*y^2 + xy = (1/3)*y^3 - (1/3)*x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '(1/2)*0^2 + 0*0 = (1/3)*0^3 - (1/3)*0^3 + C.\n'
                    '0 = 0 - 0 + C.\n'
                    '0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is (1/2)*y^2 + xy = (1/3)*y^3 - (1/3)*x^3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\nSolve the first-order ordinary differential equation: dy/dx = x/(x^2 + y^2).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x/(x^2 + y^2).\n'
                    'dy = x dx/(x^2 + y^2).\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫x dx/(x^2 + y^2).\n'
                    'y = (1/2)*ln|x^2 + y^2| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '1 = (1/2)*ln|1^2 + 1^2| + C.\n'
                    '1 = (1/2)*ln|2| + C.\n'
                    '1 = (1/2)*ln(2) + C.\n'
                    'C = 1 - (1/2)*ln(2).\n\n'
                    'So, the particular solution is y = (1/2)*ln|x^2 + y^2| + 1 - (1/2)*ln(2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\nSolve the first-order ordinary differential equation: dy/dx = (2x + 3y)/(x - 2y).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = (2x + 3y)/(x - 2y).\n'
                    '(x - 2y) dy = (2x + 3y) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(x - 2y) dy = ∫(2x + 3y) dx.\n'
                    '(1/2)*y^2 - xy = x^2 + (3/2)*y^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(1/2)*1^2 - 1*1 = 1^2 + (3/2)*1^2 + C.\n'
                    '1/2 - 1 = 1 + (3/2) + C.\n'
                    '-1/2 = 5/2 + C.\n'
                    'C = -3.\n\n'
                    'So, the particular solution is (1/2)*y^2 - xy = x^2 + (3/2)*y^2 - 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\nSolve the first-order ordinary differential equation: dy/dx = y + x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y + x^2.\n'
                    'dy - y dx = x^2 dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(dy - y dx) = ∫x^2 dx.\n'
                    'y - (1/2)y^2 = (1/3)x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 - (1/2)*0^2 = (1/3)*0^3 + C.\n'
                    '0 - 0 = 0 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y - (1/2)y^2 = (1/3)x^3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\nSolve the first-order ordinary differential equation: dy/dx = y^2 - x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = y^2 - x^2.\n'
                    'dy = (y^2 - x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(y^2 - x^2) dx.\n'
                    'y = (1/3)y^3 - (1/3)x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '1 = (1/3)*1^3 - (1/3)*1^3 + C.\n'
                    '1 = (1/3) - (1/3) + C.\n'
                    '1 = 0 + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = (1/3)y^3 - (1/3)x^3 + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\nSolve the first-order ordinary differential equation: dy/dx = x/y.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x/y.\n'
                    'y dy = x dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫(y dy) = ∫(x dx).\n'
                    '(1/2)y^2 = (1/2)x^2 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 1, substitute x = 1 and y = 1 into the general solution:\n\n'
                    '(1/2)*1^2 = (1/2)*1^2 + C.\n'
                    '1/2 = 1/2 + C.\n'
                    'C = 1/2 - 1/2.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is (1/2)y^2 = (1/2)x^2.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
