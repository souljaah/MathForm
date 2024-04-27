import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class ODEs extends StatelessWidget {
  final Color chosenColor;
  ODEs ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordinary Differential Equations (ODEs)'),
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
                'Ordinary Differential Equations (ODEs)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ordinary Differential Equations (ODEs) are a type of differential equation where the unknown function depends on a single independent variable. In other words, ODEs involve derivatives of a function with respect to only one variable.\n\nMathematically, an ordinary differential equation (ODE) can be represented as:\n\nF(x, y, y`, y``, . . . . , y^(n)) = 0\n\nWhere:\n\ny is the unknown function of x (the independent variable).\n\ny`, y``, . . . ., y^(n) represent the first, second, . . . , n-th derivatives of y with respect of x.\n\nF is function that relates the dependent variable y, its derivatives, and the independent variable x.\n\nThe equation is typically defined over a certain interval of x.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'ODEs can be classified based on various factors, including:\n\n1. Order: The highest order of the derivative present in the equation. For example, a first-order ODE involves only the first derivative, while a second-order ODE involves the second derivative.\n\n2. Linearity: ODEs can be linear or nonlinear depending on whether the unknown function and its derivatives appear linearly or not in the equation.\n\n3. Autonomous vs. Non-autonomous: An autonomous ODE has no explicit dependence on the independent variable x, while a non-autonomous ODE does.\n\n4. Homogeneous vs. Non-homogeneous: An ODE is homogeneous if the right-hand side of the equation is zero, otherwise, it is non-homogeneous.\n\n\nSolving ODEs involves finding a function y(x) that satisfies the given differential equation along with any initial or boundary conditions. Various techniques such as separation of variables, integrating factors, substitution, series solutions, and numerical methods can be used to solve ODEs depending on their complexity and characteristics.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Let`s consider a simple first-order ordinary differential equation (ODE):\n\ndy/dx= 2x\n\nThis is a first-order ODE because it involves only the first derivative of the unknown function y(x) with respect to x.\n\nTo solve this equation, we can use separation of variables.\n\nStep 1: Separate the variables:\n\ndy/dx= 2x\n\ndy = 2x dx\n\nStep 2: Integrate both sides:\n\n∫dy = ∫2x dx\n\ny = x^2 + C\n\nwhere C is the constant of integration\n\nSo the general solution to the differential equation is:\n\ny(x) = x^2 + C',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThis is the general solution. To find the particular solution, we need to know the initial condition or boundary condition. For example, if we`re given that y(0) = 1, we can use this information to find the value of C.\n\ny(0) = 0^2 + C = C = 1\n\nTherefore, the particular solution with the initial condition y(0) = 1 is:\n\ny(x) = x^2 + 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSolve the first-order ordinary differential equation: dy/dx = 2x.',
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
                problem: 'Problem 2:\nSolve the first-order ordinary differential equation: dy/dx = sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = sin(x).\n'
                    'dy = sin(x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫sin(x) dx.\n'
                    'y = -cos(x) + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = -cos(0) + C.\n'
                    'C = 1.\n\n'
                    'So, the particular solution is y = -cos(x) + 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSolve the first-order ordinary differential equation: dy/dx = e^x.',
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
                problem: 'Problem 4:\nSolve the first-order ordinary differential equation: dy/dx = x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2.\n'
                    'dy = x^2 dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫x^2 dx.\n'
                    'y = (1/3)x^3 + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the general solution:\n\n'
                    '0 = (1/3)(0)^3 + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = (1/3)x^3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSolve the first-order ordinary differential equation: dy/dx = 1/x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 1/x.\n'
                    'dy = (1/x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(1/x) dx.\n'
                    'y = ln|x| + C.\n\n'
                    'where C is the constant of integration.\n\n'
                    'Step 3: Find the particular solution with initial condition:\n\n'
                    'Given y(1) = 0, substitute x = 1 and y = 0 into the general solution:\n\n'
                    '0 = ln|1| + C.\n'
                    'C = 0.\n\n'
                    'So, the particular solution is y = ln|x|.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^2 + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + x.\n'
                    'dy = (x^2 + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + x) dx.\n'
                    'y = (1/3) x^3 + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 2x^3 - x^2 + 3x - 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x^3 - x^2 + 3x - 5.\n'
                    'dy = (2x^3 - x^2 + 3x - 5) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2x^3 - x^2 + 3x - 5) dx.\n'
                    'y = (1/2) x^4 - (1/3) x^3 + (3/2) x^2 - 5x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + 2x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + 2x.\n'
                    'dy = (e^x + 2x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + 2x) dx.\n'
                    'y = e^x + x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = cos(x) + 3x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = cos(x) + 3x^2.\n'
                    'dy = (cos(x) + 3x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(cos(x) + 3x^2) dx.\n'
                    'y = sin(x) + x^3 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = ln(x) + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = ln(x) + x.\n'
                    'dy = (ln(x) + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(ln(x) + x) dx.\n'
                    'y = x ln(x) + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - x.\n'
                    'dy = (e^x - x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - x) dx.\n'
                    'y = e^x - (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = cos(x) - sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = cos(x) - sin(x).\n'
                    'dy = (cos(x) - sin(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(cos(x) - sin(x)) dx.\n'
                    'y = sin(x) + cos(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 2x^3 + 3x^2 - 4x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x^3 + 3x^2 - 4x + 1.\n'
                    'dy = (2x^3 + 3x^2 - 4x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2x^3 + 3x^2 - 4x + 1) dx.\n'
                    'y = (1/2) x^4 + x^3 - 2x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^2 + x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + x + 1.\n'
                    'dy = (x^2 + x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + x + 1) dx.\n'
                    'y = (1/3) x^3 + (1/2) x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - e^-x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - e^-x.\n'
                    'dy = (e^x - e^-x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - e^-x) dx.\n'
                    'y = e^x + e^-x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 + x^2 + x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 + x^2 + x + 1.\n'
                    'dy = (x^3 + x^2 + x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 + x^2 + x + 1) dx.\n'
                    'y = (1/4) x^4 + (1/3) x^3 + (1/2) x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = cos(x) - 2sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = cos(x) - 2sin(x).\n'
                    'dy = (cos(x) - 2sin(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(cos(x) - 2sin(x)) dx.\n'
                    'y = sin(x) + 2cos(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^2 + 2x + 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + 2x + 3.\n'
                    'dy = (x^2 + 2x + 3) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + 2x + 3) dx.\n'
                    'y = (1/3) x^3 + x^2 + 3x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 1 + e^x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 1 + e^x.\n'
                    'dy = (1 + e^x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(1 + e^x) dx.\n'
                    'y = x + e^x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = ln(x) - 2/x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = ln(x) - 2/x.\n'
                    'dy = (ln(x) - 2/x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(ln(x) - 2/x) dx.\n'
                    'y = x ln(x) - 2ln(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 + x^2 - x + 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 + x^2 - x + 2.\n'
                    'dy = (x^3 + x^2 - x + 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 + x^2 - x + 2) dx.\n'
                    'y = (1/4) x^4 + (1/3) x^3 - (1/2) x^2 + 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = sin(x) + cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = sin(x) + cos(x).\n'
                    'dy = (sin(x) + cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(sin(x) + cos(x)) dx.\n'
                    'y = -cos(x) + sin(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 2x^2 + x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 2x^2 + x - 1.\n'
                    'dy = (x^3 - 2x^2 + x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 2x^2 + x - 1) dx.\n'
                    'y = (1/4) x^4 - (2/3) x^3 + (1/2) x^2 - x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - e^-x + x^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - e^-x + x^2.\n'
                    'dy = (e^x - e^-x + x^2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - e^-x + x^2) dx.\n'
                    'y = e^x + e^-x + (1/3) x^3 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 3sin(x) - 2cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3sin(x) - 2cos(x).\n'
                    'dy = (3sin(x) - 2cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3sin(x) - 2cos(x)) dx.\n'
                    'y = -3cos(x) - 2sin(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^2 + 3x + 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^2 + 3x + 2.\n'
                    'dy = (x^2 + 3x + 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^2 + 3x + 2) dx.\n'
                    'y = (1/3) x^3 + (3/2) x^2 + 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + e^-x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + e^-x - 1.\n'
                    'dy = (e^x + e^-x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + e^-x - 1) dx.\n'
                    'y = e^x + e^-x - x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 3x^2 + x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 3x^2 + x - 1.\n'
                    'dy = (x^3 - 3x^2 + x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 3x^2 + x - 1) dx.\n'
                    'y = (1/4) x^4 - x^3 + (1/2) x^2 - x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 2cos(x) - sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2cos(x) - sin(x).\n'
                    'dy = (2cos(x) - sin(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2cos(x) - sin(x)) dx.\n'
                    'y = 2sin(x) + cos(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 4x^3 - 3x^2 + 2x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 4x^3 - 3x^2 + 2x - 1.\n'
                    'dy = (4x^3 - 3x^2 + 2x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(4x^3 - 3x^2 + 2x - 1) dx.\n'
                    'y = x^4 - x^3 + x^2 - x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + 2cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + 2cos(x).\n'
                    'dy = (e^x + 2cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + 2cos(x)) dx.\n'
                    'y = e^x + 2sin(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 + 2x^2 - x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 + 2x^2 - x + 1.\n'
                    'dy = (x^3 + 2x^2 - x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 + 2x^2 - x + 1) dx.\n'
                    'y = (1/4) x^4 + (2/3) x^3 - (1/2) x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = sin(x) + cos(x) + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = sin(x) + cos(x) + x.\n'
                    'dy = (sin(x) + cos(x) + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(sin(x) + cos(x) + x) dx.\n'
                    'y = -cos(x) + sin(x) + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - 2e^-x + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - 2e^-x + x.\n'
                    'dy = (e^x - 2e^-x + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - 2e^-x + x) dx.\n'
                    'y = e^x + 2e^-x + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 3x^2 + 4x + 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x^2 + 4x + 2.\n'
                    'dy = (3x^2 + 4x + 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3x^2 + 4x + 2) dx.\n'
                    'y = x^3 + 2x^2 + 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + e^-x + x^2 + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + e^-x + x^2 + x.\n'
                    'dy = (e^x + e^-x + x^2 + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + e^-x + x^2 + x) dx.\n'
                    'y = e^x + e^-x + (1/3) x^3 + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = sin(x) + 2cos(x) + x.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = sin(x) + 2cos(x) + x.\n'
                    'dy = (sin(x) + 2cos(x) + x) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(sin(x) + 2cos(x) + x) dx.\n'
                    'y = -2sin(x) + 2cos(x) + (1/2) x^2 + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - e^-x + x^2 + x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - e^-x + x^2 + x + 1.\n'
                    'dy = (e^x - e^-x + x^2 + x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - e^-x + x^2 + x + 1) dx.\n'
                    'y = e^x + e^-x + (1/3) x^3 + (1/2) x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 2x^3 - 3x^2 + 4x - 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x^3 - 3x^2 + 4x - 2.\n'
                    'dy = (2x^3 - 3x^2 + 4x - 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2x^3 - 3x^2 + 4x - 2) dx.\n'
                    'y = (1/2) x^4 - x^3 + 2x^2 - 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + e^-x - 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + e^-x - 2.\n'
                    'dy = (e^x + e^-x - 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + e^-x - 2) dx.\n'
                    'y = e^x + e^-x - 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 4x^2 + 3x - 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 4x^2 + 3x - 2.\n'
                    'dy = (x^3 - 4x^2 + 3x - 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 4x^2 + 3x - 2) dx.\n'
                    'y = (1/4) x^4 - (4/3) x^3 + (3/2) x^2 - 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - e^-x + x^3 - x^2 + x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - e^-x + x^3 - x^2 + x - 1.\n'
                    'dy = (e^x - e^-x + x^3 - x^2 + x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - e^-x + x^3 - x^2 + x - 1) dx.\n'
                    'y = e^x + e^-x + (1/4) x^4 - (1/3) x^3 + (1/2) x^2 - x + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = sin(x) + cos(x) + x^3 - x^2 + x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = sin(x) + cos(x) + x^3 - x^2 + x - 1.\n'
                    'dy = (sin(x) + cos(x) + x^3 - x^2 + x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(sin(x) + cos(x) + x^3 - x^2 + x - 1) dx.\n'
                    'y = -cos(x) + sin(x) + (1/4) x^4 - (1/3) x^3 + (1/2) x^2 - x + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x + 2cos(x) + x^3 - x^2 + x - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x + 2cos(x) + x^3 - x^2 + x - 1.\n'
                    'dy = (e^x + 2cos(x) + x^3 - x^2 + x - 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x + 2cos(x) + x^3 - x^2 + x - 1) dx.\n'
                    'y = e^x + 2sin(x) + (1/4) x^4 - (1/3) x^3 + (1/2) x^2 - x + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 2x^3 - 4x^2 + 3x - 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 2x^3 - 4x^2 + 3x - 2.\n'
                    'dy = (2x^3 - 4x^2 + 3x - 2) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(2x^3 - 4x^2 + 3x - 2) dx.\n'
                    'y = (1/2) x^4 - (4/3) x^3 + (3/2) x^2 - 2x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = e^x - e^-x + 2cos(x) + 3x^2 - 2x + 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = e^x - e^-x + 2cos(x) + 3x^2 - 2x + 1.\n'
                    'dy = (e^x - e^-x + 2cos(x) + 3x^2 - 2x + 1) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(e^x - e^-x + 2cos(x) + 3x^2 - 2x + 1) dx.\n'
                    'y = e^x + e^-x + 2sin(x) + x^3 - x^2 + x + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = 3x^2 - 2x + 1 + e^x - e^-x + 2sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = 3x^2 - 2x + 1 + e^x - e^-x + 2sin(x).\n'
                    'dy = (3x^2 - 2x + 1 + e^x - e^-x + 2sin(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(3x^2 - 2x + 1 + e^x - e^-x + 2sin(x)) dx.\n'
                    'y = x^3 - x^2 + x + e^x + e^-x - 2cos(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 2x^2 + x + e^x - e^-x + 3cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 2x^2 + x + e^x - e^-x + 3cos(x).\n'
                    'dy = (x^3 - 2x^2 + x + e^x - e^-x + 3cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 2x^2 + x + e^x - e^-x + 3cos(x)) dx.\n'
                    'y = (1/4) x^4 - (2/3) x^3 + (1/2) x^2 + e^x + e^-x + 3sin(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 3x^2 + 2x + e^x - e^-x + 4sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 3x^2 + 2x + e^x - e^-x + 4sin(x).\n'
                    'dy = (x^3 - 3x^2 + 2x + e^x - e^-x + 4sin(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 3x^2 + 2x + e^x - e^-x + 4sin(x)) dx.\n'
                    'y = (1/4) x^4 - x^3 + x^2 + e^x + e^-x - 4cos(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the first-order ordinary differential equation: dy/dx = x^3 - 4x^2 + 3x + e^x - e^-x + 5cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Separate the variables:\n\n'
                    'dy/dx = x^3 - 4x^2 + 3x + e^x - e^-x + 5cos(x).\n'
                    'dy = (x^3 - 4x^2 + 3x + e^x - e^-x + 5cos(x)) dx.\n\n'
                    'Step 2: Integrate both sides:\n\n'
                    '∫dy = ∫(x^3 - 4x^2 + 3x + e^x - e^-x + 5cos(x)) dx.\n'
                    'y = (1/4) x^4 - (4/3) x^3 + (3/2) x^2 + e^x + e^-x + 5sin(x) + C.\n\n'
                    'where C is the constant of integration.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
