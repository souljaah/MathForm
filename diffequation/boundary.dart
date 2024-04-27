import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Boundary extends StatelessWidget {
  final Color chosenColor;
  Boundary ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boundary Value Problems'),
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
                'Boundary Value Problems',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Boundary Value Problems in Differential Equations:\n\n'
                    'Boundary value problems involve finding solutions to differential equations subject to boundary conditions. Unlike initial value problems, where conditions are specified at a single point, boundary value problems specify conditions at multiple points, typically at the boundaries of the domain over which the solution is sought.\n\n'
                    'In mathematical terms, a boundary value problem involves finding a solution to a differential equation subject to conditions at the boundaries of the domain.\n\n'
                    'Example:\n\n'
                    'Consider the second-order ordinary differential equation:\n\n'
                    'd²y/dx² + λy = 0\n\n'
                    'Subject to the boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0\n\n'
                    'This is a boundary value problem because the solution is sought subject to conditions at both boundaries, namely at x = 0 and x = π.\n\n'
                    'Boundary value problems are encountered in various fields of science and engineering, such as heat transfer, fluid dynamics, and quantum mechanics.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Solving boundary value problems often requires specialized techniques, such as shooting methods, finite difference methods, finite element methods, or spectral methods, depending on the nature of the differential equation and the boundary conditions. The choice of method depends on factors such as the complexity of the problem, the desired accuracy of the solution, and computational considerations.\n\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Solution:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 2y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(2)x) + B*cos(sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(1) = 3:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = 1: A*sin(sqrt(2)) + B*cos(sqrt(2)) = A*sin(sqrt(2)) + cos(sqrt(2)) = 3\n\n'
                    'Solving for A, we get:\n\n'
                    'A = (3 - cos(sqrt(2))) / sin(sqrt(2))\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substituting the values of A and B into the homogeneous solution, we get:\n\n'
                    'y(x) = ((3 - cos(sqrt(2))) / sin(sqrt(2))) * sin(sqrt(2)x) + 1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(1) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(x) + B*cos(x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(1) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = 1: A*sin(1) + B*cos(1) = A*sin(1) + cos(1) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = (1 - cos(1)) / sin(1)\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substituting the values of A and B into the homogeneous solution, we get:\n\n'
                    'y(x) = ((1 - cos(1)) / sin(1)) * sin(x) + 0',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 4y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(1) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 4y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2x) + B*cos(2x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(1) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = 1: A*sin(2) + B*cos(2) = A*sin(2) + cos(2) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(2)\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substituting the values of A and B into the homogeneous solution, we get:\n\n'
                    'y(x) = -cos(2) * sin(2x) + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(x) + B*cos(x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π) + B*cos(π) = A*sin(π) - B = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0, the final solution is:\n\n'
                    'y(x) = B*cos(x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 9y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π/2) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 9y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3x) + B*cos(3x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π/2) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π/2: A*sin(3π/2) + B*cos(3π/2) = A*sin(3π/2) - B = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0, the final solution is:\n\n'
                    'y(x) = B*cos(3x) + 1',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 6y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 6y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(6)x) + B*cos(sqrt(6)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(6)) + B*cos(π*sqrt(6)) = A*sin(π*sqrt(6)) + B*cos(π*sqrt(6)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0, the final solution is:\n\n'
                    'y(x) = B*cos(sqrt(6)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(x) + B*cos(x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π) + B*cos(π) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(π) + 1*cos(π) = A*sin(π) - 1 = 2\n\n'
                    'Solving for A, we get:\n\n'
                    'A = (2 + 1) / sin(π) = 3\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = 3*sin(x) + cos(x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² - 2y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 - 2y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(2)x) + B*cos(sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 2\n\n'
                    'At x = π: A*sin(π*sqrt(2)) + B*cos(π*sqrt(2)) = A*sin(π*sqrt(2)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0, the final solution is:\n\n'
                    'y(x) = 2*cos(sqrt(2)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 9y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 9y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3x) + B*cos(3x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(3π) + B*cos(3π) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(3π) + 1*cos(3π) = A*sin(3π) + cos(3π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(3π) = -1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -sin(3x) + cos(3x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² - 4y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 - 4y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2x) + B*cos(2x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(2π) + B*cos(2π) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(2π) + 1*cos(2π) = A*sin(2π) + cos(2π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(2π) = -1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -sin(2x) + cos(2x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 5y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 5y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(5)x) + B*cos(sqrt(5)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(5)) + B*cos(π*sqrt(5)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² - y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 - y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sinh(x) + B*cosh(x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = 2:\n\n'
                    'At x = 0: A*sinh(0) + B*cosh(0) = B = 2\n\n'
                    'At x = π: A*sinh(π) + B*cosh(π) = 0\n\n'
                    'Since B = 2, we substitute B into the second boundary condition:\n\n'
                    'A*sinh(π) + 2*cosh(π) = A*sinh(π) + 2*cosh(π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -2*cosh(π)/sinh(π) = -2*1/sinh(π) = -2/coth(π)\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -2/coth(π)*sinh(x) + 2*cosh(x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(x) + B*cos(x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π) + B*cos(π) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(π) + 1*cos(π) = A*sin(π) - 1 = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = sin(x) + cos(x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² - 2y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = -2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 - 2y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(2)x) + B*cos(sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = -2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(2)) + B*cos(π*sqrt(2)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 9y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 9y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3x) + B*cos(3x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -1\n\n'
                    'At x = π: A*sin(3π) + B*cos(3π) = 0\n\n'
                    'Since B = -1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(3π) + (-1)*cos(3π) = A*sin(3π) - cos(3π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = cos(3π) = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = sin(3x) - cos(3x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 4y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = -2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 4y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2x) + B*cos(2x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = -2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 2\n\n'
                    'At x = π: A*sin(2π) + B*cos(2π) = 0\n\n'
                    'Since B = 2, we substitute B into the second boundary condition:\n\n'
                    'A*sin(2π) + 2*cos(2π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -2*cos(2π) = -2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -2*sin(2x) + 2*cos(2x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 3y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 3y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(3)x) + B*cos(sqrt(3)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(3)) + B*cos(π*sqrt(3)) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(π*sqrt(3)) + 1*cos(π*sqrt(3)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(π*sqrt(3))\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -cos(π*sqrt(3))*sin(sqrt(3)x) + cos(sqrt(3)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 2y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 2y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(2)x) + B*cos(sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(2)) + B*cos(π*sqrt(2)) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(π*sqrt(2)) + 1*cos(π*sqrt(2)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(π*sqrt(2))\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -cos(π*sqrt(2))*sin(sqrt(2)x) + cos(sqrt(2)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 5y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 5y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(5)x) + B*cos(sqrt(5)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(5)) + B*cos(π*sqrt(5)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 8y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -2\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 8y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2*sqrt(2)x) + B*cos(2*sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -2 and y(π) = 2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -2\n\n'
                    'At x = π: A*sin(2*π*sqrt(2)) + B*cos(2*π*sqrt(2)) = 0\n\n'
                    'Since B = -2, we substitute B into the second boundary condition:\n\n'
                    'A*sin(2*π*sqrt(2)) + (-2)*cos(2*π*sqrt(2)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 2*cos(2*π*sqrt(2))\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = 2*cos(2*π*sqrt(2))*sin(2*sqrt(2)x) - 2*cos(2*sqrt(2)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 7y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 7y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(7)x) + B*cos(sqrt(7)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(7)) + B*cos(π*sqrt(7)) = 1\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 9y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 9y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3x) + B*cos(3x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(3π) + B*cos(3π) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(3π) + 1*cos(3π) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(3π)\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -cos(3π)*sin(3x) + cos(3x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 10y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 10y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(10)x) + B*cos(sqrt(10)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(10)) + B*cos(π*sqrt(10)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 11y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 11y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(11)x) + B*cos(sqrt(11)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -1\n\n'
                    'At x = π: A*sin(π*sqrt(11)) + B*cos(π*sqrt(11)) = 1\n\n'
                    'Since B = -1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + (-1)*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = -1, the final solution is:\n\n'
                    'y(x) = -cos(sqrt(11)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 12y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 12y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2*sqrt(3)x) + B*cos(2*sqrt(3)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(2*π*sqrt(3)) + B*cos(2*π*sqrt(3)) = 0\n\n'
                    'Since B = 1, we substitute B into the second boundary condition:\n\n'
                    'A*sin(2*π*sqrt(3)) + 1*cos(2*π*sqrt(3)) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -cos(2*π*sqrt(3))\n\n'
                    'Step 4: Final Solution:\n\n'
                    'The final solution is:\n\n'
                    'y(x) = -cos(2*π*sqrt(3))*sin(2*sqrt(3)x) + cos(2*sqrt(3)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 13y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 13y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(13)x) + B*cos(sqrt(13)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(13)) + B*cos(π*sqrt(13)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 14y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 14y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(14)x) + B*cos(sqrt(14)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(14)) + B*cos(π*sqrt(14)) = 1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 1, the final solution is:\n\n'
                    'y(x) = cos(sqrt(14)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 15y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 15y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(15)x) + B*cos(sqrt(15)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(15)) + B*cos(π*sqrt(15)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 16y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 16y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(4x) + B*cos(4x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(4π) + B*cos(4π) = 0\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(4x) + cos(4x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 17y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 17y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(17)x) + B*cos(sqrt(17)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(17)) + B*cos(π*sqrt(17)) = 1\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 18y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 18y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3sqrt(2)x) + B*cos(3sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(3πsqrt(2)) + B*cos(3πsqrt(2)) = 1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(3sqrt(2)x) + cos(3sqrt(2)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 19y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 19y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(19)x) + B*cos(sqrt(19)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(19)) + B*cos(π*sqrt(19)) = 0\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 20y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 20y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2sqrt(5)x) + B*cos(2sqrt(5)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(2πsqrt(5)) + B*cos(2πsqrt(5)) = 0\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(2sqrt(5)x) + cos(2sqrt(5)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 21y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 21y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(21)x) + B*cos(sqrt(21)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(21)) + B*cos(π*sqrt(21)) = 1\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 22y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 22y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(22)x) + B*cos(sqrt(22)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(22)) + B*cos(π*sqrt(22)) = 1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(sqrt(22)x) + cos(sqrt(22)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 23y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 23y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(23)x) + B*cos(sqrt(23)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(23)) + B*cos(π*sqrt(23)) = -1\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 24y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 24y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2sqrt(6)x) + B*cos(2sqrt(6)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(2πsqrt(6)) + B*cos(2πsqrt(6)) = -1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(2sqrt(6)x) + cos(2sqrt(6)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 25y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 25y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(5x) + B*cos(5x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -1\n\n'
                    'At x = π: A*sin(5π) + B*cos(5π) = A*sin(5π) - B = 1\n\n'
                    'Since B = -1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) - 1*cos(0) = A*sin(0) = -1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = -1 and B = -1, the final solution is:\n\n'
                    'y(x) = -sin(5x) - cos(5x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 26y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 26y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(26)x) + B*cos(sqrt(26)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(26)) + B*cos(π*sqrt(26)) = 2\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 27y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 27y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(3sqrt(3)x) + B*cos(3sqrt(3)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(3πsqrt(3)) + B*cos(3πsqrt(3)) = -2\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = A*sin(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(3sqrt(3)x) + cos(3sqrt(3)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 28y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 28y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(2sqrt(7)x) + B*cos(2sqrt(7)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = 2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 2\n\n'
                    'At x = π: A*sin(2πsqrt(7)) + B*cos(2πsqrt(7)) = 2\n\n'
                    'Since B = 2, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 2*cos(0) = 2\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 2 and B = 2, the final solution is:\n\n'
                    'y(x) = 2*sin(2sqrt(7)x) + 2*cos(2sqrt(7)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 29y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 3',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 29y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(29)x) + B*cos(sqrt(29)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 3:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(29)) + B*cos(π*sqrt(29)) = 3\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = A*sin(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 30y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -3\n'
                    'y(π) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 30y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(30)x) + B*cos(sqrt(30)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -3 and y(π) = 0:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -3\n\n'
                    'At x = π: A*sin(π*sqrt(30)) + B*cos(π*sqrt(30)) = 0\n\n'
                    'Since B = -3, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) - 3*cos(0) = -3\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -3\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = -3 and B = -3, the final solution is:\n\n'
                    'y(x) = -3*sin(sqrt(30)x) - 3*cos(sqrt(30)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 31y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 4',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 31y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(31)x) + B*cos(sqrt(31)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 4:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(31)) + B*cos(π*sqrt(31)) = 4\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(sqrt(31)x) + cos(sqrt(31)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 32y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = 5',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 32y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(4sqrt(2)x) + B*cos(4sqrt(2)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = 5:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 2\n\n'
                    'At x = π: A*sin(4πsqrt(2)) + B*cos(4πsqrt(2)) = 5\n\n'
                    'Since B = 2, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 2*cos(0) = 2\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 2 and B = 2, the final solution is:\n\n'
                    'y(x) = 2*sin(4sqrt(2)x) + 2*cos(4sqrt(2)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 33y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 33y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(33)x) + B*cos(sqrt(33)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = 1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(π*sqrt(33)) + B*cos(π*sqrt(33)) = 1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(sqrt(33)x) + cos(sqrt(33)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 34y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 0\n'
                    'y(π) = 4',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 34y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(34)x) + B*cos(sqrt(34)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 0 and y(π) = 4:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 0\n\n'
                    'At x = π: A*sin(π*sqrt(34)) + B*cos(π*sqrt(34)) = 4\n\n'
                    'Since B = 0, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 0*cos(0) = 0\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 0 and B = 0, the final solution is the trivial solution: y(x) = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 35y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -2\n'
                    'y(π) = -2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 35y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(35)x) + B*cos(sqrt(35)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -2 and y(π) = -2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -2\n\n'
                    'At x = π: A*sin(π*sqrt(35)) + B*cos(π*sqrt(35)) = -2\n\n'
                    'Since B = -2, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) - 2*cos(0) = -2\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = -2 and B = -2, the final solution is:\n\n'
                    'y(x) = -2*sin(sqrt(35)x) - 2*cos(sqrt(35)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 36y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 1\n'
                    'y(π) = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 36y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(6x) + B*cos(6x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 1 and y(π) = -1:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 1\n\n'
                    'At x = π: A*sin(6π) + B*cos(6π) = -1\n\n'
                    'Since B = 1, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 1*cos(0) = 1\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 1 and B = 1, the final solution is:\n\n'
                    'y(x) = sin(6x) + cos(6x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 37y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = -3\n'
                    'y(π) = 3',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 37y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(37)x) + B*cos(sqrt(37)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = -3 and y(π) = 3:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = -3\n\n'
                    'At x = π: A*sin(π*sqrt(37)) + B*cos(π*sqrt(37)) = 3\n\n'
                    'Since B = -3, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) - 3*cos(0) = -3\n\n'
                    'Solving for A, we get:\n\n'
                    'A = -3\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = -3 and B = -3, the final solution is:\n\n'
                    'y(x) = -3*sin(sqrt(37)x) - 3*cos(sqrt(37)x)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the second-order ordinary differential equation with boundary conditions:\n\n'
                    'd²y/dx² + 38y = 0\n\n'
                    'Given boundary conditions:\n\n'
                    'y(0) = 2\n'
                    'y(π) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'd^2y/dx^2 + 38y = 0\n\n'
                    'Step 2: Solve the homogeneous differential equation:\n\n'
                    'The homogeneous solution is given by:\n\n'
                    'y_h(x) = A*sin(sqrt(38)x) + B*cos(sqrt(38)x)\n\n'
                    'Step 3: Apply the boundary conditions:\n\n'
                    'Using the boundary conditions y(0) = 2 and y(π) = 2:\n\n'
                    'At x = 0: A*sin(0) + B*cos(0) = B = 2\n\n'
                    'At x = π: A*sin(π*sqrt(38)) + B*cos(π*sqrt(38)) = 2\n\n'
                    'Since B = 2, we substitute B into the first boundary condition:\n\n'
                    'A*sin(0) + 2*cos(0) = 2\n\n'
                    'Solving for A, we get:\n\n'
                    'A = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Since A = 2 and B = 2, the final solution is:\n\n'
                    'y(x) = 2*sin(sqrt(38)x) + 2*cos(sqrt(38)x)',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
