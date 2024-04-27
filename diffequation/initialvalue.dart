import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class InitialValue extends StatelessWidget {
  final Color chosenColor;
  InitialValue ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Value Problems'),
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
                'Initial Value Problems',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Initial value problems (IVPs) in differential equations involve finding a solution to an ordinary differential equation (ODE) that satisfies certain conditions at a single point, typically at the starting point of the interval on which the differential equation is defined. These conditions are specified in terms of the values of the unknown function and its derivatives at that point.\n\nIn general, an initial value problem for a first-order ordinary differential equation (ODE) has the form:\n\ndy/dx = f (x, y)\n\nsubject to the initial condition:\n\ny (x_0) = y_0\n\nwhere:\n\nf(x, y) is a given function representing the rate of change of the dependent variable y with respect to the independent variable x.\n\n(x_0, y_0) ) is the initial point or starting point at which the solution is known.\n\ny(x_0) = y_0 is the initial condition, specifying the value of the unknown function y at the initial point.\n\nThe goal in solving an initial value problem is to find a solution y(x) that satisfies both the differential equation and the initial condition. This solution provides the behavior of the unknown function y over the entire interval of interest, given the specified starting conditions.',
                style: TextStyle(fontSize: 16),
              ),SizedBox(height: 10),
              Text(
                'Initial Value Problem:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + y\n\n'
                    'Given initial condition: y(0) = 1\n\n'
                    'Step-by-Step Solution:\n\n'
                    'Step 1: Rewrite the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + y) dx\n'
                    'y = x^2/2 + xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^2/2 + 0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^2/2 + xy + 1',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + y) dx\n'
                    'y = x^2/2 + xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^2/2 + 0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^2/2 + xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x) dx\n'
                    'y = xy - x^2/2 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 - 0^2/2 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy - x^2/2 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = (x + y)/(x - y)\n\n'
                    'Given initial condition: y(1) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = (x + y)/(x - y)\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ (x - y) dy = ∫ (x + y) dx\n'
                    '-y^2/2 + xy - x^2/2 = x^2/2 + xy + C\n'
                    '-y^2/2 - x^2/2 = x^2/2 + C\n'
                    '-y^2 - x^2 = x^2 + C\n'
                    '-y^2 = 2x^2 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(1) = 2, substitute x = 1 and y = 2 into the solution:\n'
                    '-2^2 = 2*1^2 + C\n'
                    '-4 = 2 + C\n'
                    'C = -6\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = -6 back into the solution:\n'
                    '-y^2 = 2x^2 - 6\n'
                    'y^2 = 6 - 2x^2\n'
                    'y = ±√(6 - 2x^2)',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y^2 - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y^2 - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy/(y^2 - x^2) = ∫ dx\n'
                    'This integral can be solved using partial fractions:\n\n'
                    'dy/(y + x)(y - x) = dx\n\n'
                    'Using partial fractions, we have:\n\n'
                    'dy/((y + x)(y - x)) = A/(y + x) + B/(y - x)\n\n'
                    'where A and B are constants to be determined.\n\n'
                    'Multiplying both sides by (y + x)(y - x) yields:\n\n'
                    'dy = A(y - x) + B(y + x) dx\n\n'
                    'Comparing coefficients, we get:\n\n'
                    'A = B = 1\n\n'
                    'So the integral becomes:\n\n'
                    'dy = (y - x) + (y + x) dx\n\n'
                    'Now, we integrate both sides:\n\n'
                    '∫ dy = ∫ (y - x) dx + ∫ (y + x) dx\n\n'
                    'y = xy - x^2/2 + xy + x^2/2 + C\n'
                    'y = 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = 2xy + 1',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = 1/x - y\n\n'
                    'Given initial condition: y(1) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = 1/x - y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy/(1 - y) = ∫ dx/x\n'
                    'This integral can be solved using logarithmic functions:\n\n'
                    '∫ dy/(1 - y) = ∫ dx/x\n\n'
                    'ln|1 - y| = ln|x| + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(1) = 2, substitute x = 1 and y = 2 into the solution:\n'
                    'ln|1 - 2| = ln|1| + C\n'
                    'ln|1| = 0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'ln|1 - y| = ln|x|\n'
                    '|1 - y| = |x|\n'
                    '1 - y = ±x\n'
                    'y = 1 ± x',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - y) dx\n'
                    'y = x^2/2 - xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^2/2 - 0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^2/2 - xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^3\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^3) dx\n'
                    'y = xy - x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0*0 - 0^4/4 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = xy - x^4/4',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 3y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 3y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 3y) dx\n'
                    'y = x^2/2 + 3xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^2/2 + 3*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^2/2 + 3xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 3y\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 3y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 3y) dx\n'
                    'y = x^3/3 + 3xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0^3/3 + 3*0*2 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = x^3/3 + 3xy + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y - x^2\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y - x^2) dx\n'
                    'y = xy - x^3/3 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0*1 - 0^3/3 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = xy - x^3/3 + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Given initial condition: y(0) = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = y + x^3\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (y + x^3) dx\n'
                    'y = xy + x^4/4 + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 2, substitute x = 0 and y = 2 into the solution:\n'
                    '2 = 0*2 + 0^4/4 + C\n'
                    'C = 2\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 2 back into the solution:\n'
                    'y = xy + x^4/4 + 2',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x + 2y) dx\n'
                    'y = x^2/2 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 + 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 + 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 + 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 + 2y) dx\n'
                    'y = x^3/3 + 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 + 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 + 2xy + 1',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Given initial condition: y(0) = 0',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x - 2y) dx\n'
                    'y = x^2/2 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 0, substitute x = 0 and y = 0 into the solution:\n'
                    '0 = 0^2/2 - 2*0*0 + C\n'
                    'C = 0\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 0 back into the solution:\n'
                    'y = x^2/2 - 2xy',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\n\n'
                    'Solve the first-order ordinary differential equation with initial condition:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Given initial condition: y(0) = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate the differential equation:\n\n'
                    'The given differential equation is:\n\n'
                    'dy/dx = x^2 - 2y\n\n'
                    'Step 2: Integrate both sides with respect to x:\n\n'
                    '∫ dy = ∫ (x^2 - 2y) dx\n'
                    'y = x^3/3 - 2xy + C\n\n'
                    'Step 3: Apply the initial condition:\n\n'
                    'Given y(0) = 1, substitute x = 0 and y = 1 into the solution:\n'
                    '1 = 0^3/3 - 2*0*1 + C\n'
                    'C = 1\n\n'
                    'Step 4: Final Solution:\n\n'
                    'Substitute C = 1 back into the solution:\n'
                    'y = x^3/3 - 2xy + 1',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
