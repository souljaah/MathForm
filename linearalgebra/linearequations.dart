import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class LinearEquations extends StatelessWidget {
  final Color chosenColor;
  LinearEquations ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Systems of Linear Equations'),
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
                'Systems of Linear Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Linear algebra deals with systems of linear equations, which involve multiple linear equations with multiple variables. A system of linear equations can be represented in matrix form and solved using various methods, such as Gaussian elimination, matrix inversion, or matrix factorization.\n\n\nIn a system of linear equations, each equation represents a linear relationship between variables. The goal is to find the values of the variables that satisfy all equations simultaneously, if such values exist.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'For example, a system of linear equations with two variables x and y can be represented as follows:\n\n a_11x+ a_12y= b_1\n\na_21x+a_22y=b_2\n\n\nWhere a_ij are the coefficient of the variables x and y, and b_i are constants. The goal is to find the values of x and y that satisfy both equations.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Consider the following system of linear equations:\n\n2x+3y= 8\n\n4x-2y= 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Write down the system of equations.\n\n2x+3y= 8 (Equation 1)\n\n4x-2y= 2 (Equation 2)\n\nStep 2: Choose a method to solve the system. In this example, we`ll use the substitution method.\n\nStep 3: Solve one equation for one variable. Let`s solve Equation 1 for x:\n\n2x= 8-3y\n\nDivide both sides by 2:\n\nx=4 -3/2y',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Substitute the expression for x into second equation (Equation 2):\n\n4(4-3/2y) -2y =2\n\nStep 5: Expand and simplify the equations:\n\n16-6y-2y=2\n\nCombine like terms:\n\n16-8y= 2\n\nStep 6: Solve for y:\n\n 16-2 =8y\n\n14=8y\n\ny= 14/8 = 7/4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 7: Substitute the value of y back into Equation 1 to solve for x:\n\n2x+3(7/4)=8\n\n 2x+21/4=8\n\n2x = 8 -21/4\n\n2x=32/4 -21/4\n\n2x=11/4\n\nx= 11/8\n\nStep 8: Verify the solution by substituting the values of x and y back into both equations to ensure they satisfy both equations.\n\n\nTherefore, the solution to the system of linear equations is x = 11/8 and y 7/4.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSolve the system of equations:\n\n'
                    '3x + 2y = 11\n'
                    '4x - y = -3',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 11  ...(1)\n'
                    '4x - y = -3  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (2) for y:\n\n'
                    'y = 4x + 3\n\n'
                    'Step 4: Substitute the expression for y into Equation (1):\n\n'
                    '3x + 2(4x + 3) = 11\n\n'
                    'Step 5: Solve for x:\n\n'
                    '11x + 6 = 11\n'
                    '11x = 5\n'
                    'x = 5 / 11\n\n'
                    'Step 6: Substitute the value of x back into Equation (2) to solve for y:\n\n'
                    '4(5 / 11) - y = -3\n'
                    '20 / 11 - y = -3\n'
                    'y = 20 / 11 + 3\n\n'
                    'Step 7: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 5 / 11 and y = 53 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSolve the system of equations:\n\n'
                    '2x - 3y = 5\n'
                    '3x + 4y = 7',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = 5  ...(1)\n'
                    '3x + 4y = 7  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 4 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '8x - 12y = 20  ...(3)\n'
                    '9x + 12y = 21  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '17x = 41\n'
                    'x = 41 / 17\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2(41 / 17) - 3y = 5\n'
                    '82 / 17 - 3y = 5\n'
                    '3y = 82 / 17 - 5\n\n'
                    'Step 6: Solve for y:\n\n'
                    'y = (82 / 17 - 85 / 17) / 3\n'
                    'y = -3 / 17\n\n'
                    'Step 7: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 41 / 17 and y = -3 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSolve the system of equations:\n\n'
                    'x + y = 8\n'
                    '2x - 3y = -3',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    'x + y = 8  ...(1)\n'
                    '2x - 3y = -3  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for x:\n\n'
                    'x = 8 - y\n\n'
                    'Step 4: Substitute the expression for x into Equation (2):\n\n'
                    '2(8 - y) - 3y = -3\n\n'
                    'Step 5: Solve for y:\n\n'
                    '16 - 2y - 3y = -3\n'
                    '16 - 5y = -3\n'
                    '-5y = -19\n'
                    'y = 19 / 5\n\n'
                    'Step 6: Substitute the value of y back into Equation (1) to solve for x:\n\n'
                    'x + (19 / 5) = 8\n'
                    'x = 8 - 19 / 5\n'
                    'x = (40 / 5) - (19 / 5)\n'
                    'x = 21 / 5\n\n'
                    'Step 7: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 21 / 5 and y = 19 / 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSolve the system of equations:\n\n'
                    '3x - y = 5\n'
                    'x + 2y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - y = 5  ...(1)\n'
                    'x + 2y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for y:\n\n'
                    'y = 3x - 5\n\n'
                    'Step 4: Substitute the expression for y into Equation (2):\n\n'
                    'x + 2(3x - 5) = -1\n\n'
                    'Step 5: Solve for x:\n\n'
                    'x + 6x - 10 = -1\n'
                    '7x - 10 = -1\n'
                    '7x = 9\n'
                    'x = 9 / 7\n\n'
                    'Step 6: Substitute the value of x back into Equation (1) to solve for y:\n\n'
                    '3(9 / 7) - y = 5\n'
                    '27 / 7 - y = 5\n'
                    'y = 27 / 7 - 5\n'
                    'y = (27 - 35) / 7\n'
                    'y = -8 / 7\n\n'
                    'Step 7: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 9 / 7 and y = -8 / 7.\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSolve the system of equations:\n\n'
                    '2x + y = 6\n'
                    'x - 3y = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + y = 6  ...(1)\n'
                    'x - 3y = 1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '6x + 3y = 18  ...(3)\n'
                    'x - 3y = 1  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '7x = 19\n'
                    'x = 19 / 7\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2(19 / 7) + y = 6\n'
                    '38 / 7 + y = 6\n'
                    'y = 42 / 7 - 38 / 7\n'
                    'y = 4 / 7\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 19 / 7 and y = 4 / 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nSolve the system of equations:\n\n'
                    '3x + 4y = 10\n'
                    '2x - y = 5',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 4y = 10  ...(1)\n'
                    '2x - y = 5  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (2) for x:\n\n'
                    '2x = y + 5\n'
                    'x = (y + 5) / 2\n\n'
                    'Step 4: Substitute the expression for x into Equation (1):\n\n'
                    '3((y + 5) / 2) + 4y = 10\n'
                    '(3y + 15) / 2 + 4y = 10\n'
                    '3y + 15 + 8y = 20\n'
                    '11y + 15 = 20\n'
                    '11y = 5\n'
                    'y = 5 / 11\n\n'
                    'Step 5: Substitute the value of y back into Equation (2) to solve for x:\n\n'
                    '2x - (5 / 11) = 5\n'
                    '2x = 5 + (5 / 11)\n'
                    '2x = (55 + 5) / 11\n'
                    '2x = 60 / 11\n'
                    'x = 30 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 30 / 11 and y = 5 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nSolve the system of equations:\n\n'
                    '4x - y = 6\n'
                    '2x + 3y = 8',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x - y = 6  ...(1)\n'
                    '2x + 3y = 8  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for y:\n\n'
                    'y = 4x - 6\n\n'
                    'Step 4: Substitute the expression for y into Equation (2):\n\n'
                    '2x + 3(4x - 6) = 8\n'
                    '2x + 12x - 18 = 8\n'
                    '14x - 18 = 8\n'
                    '14x = 26\n'
                    'x = 26 / 14\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) to solve for y:\n\n'
                    '4(26 / 14) - y = 6\n'
                    '(52 / 14) - y = 6\n'
                    'y = (52 / 14) - 6\n'
                    'y = 52 / 14 - 84 / 14\n'
                    'y = -32 / 14\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 13 / 7 and y = -16 / 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nSolve the system of equations:\n\n'
                    '5x + 2y = 12\n'
                    '3x - 4y = 5',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x + 2y = 12  ...(1)\n'
                    '3x - 4y = 5  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 5 to make the coefficients of y equal:\n\n'
                    '10x + 4y = 24  ...(3)\n'
                    '15x - 20y = 25  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '25x = 49\n'
                    'x = 49 / 25\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '5(49 / 25) + 2y = 12\n'
                    '245 / 25 + 2y = 12\n'
                    '2y = 12 - 245 / 25\n'
                    '2y = 300 / 25 - 245 / 25\n'
                    'y = 55 / 25\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 49 / 25 and y = 11 / 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nSolve the system of equations:\n\n'
                    'x + 2y = 7\n'
                    '3x - y = 4',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    'x + 2y = 7  ...(1)\n'
                    '3x - y = 4  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '3x + 6y = 21  ...(3)\n'
                    '3x - y = 4  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '7y = 17\n'
                    'y = 17 / 7\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    'x + 2(17 / 7) = 7\n'
                    'x + 34 / 7 = 7\n'
                    'x = 49 / 7 - 34 / 7\n'
                    'x = 15 / 7\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 15 / 7 and y = 17 / 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nSolve the system of equations:\n\n'
                    '2x + 3y = 11\n'
                    '4x - 2y = 10',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 3y = 11  ...(1)\n'
                    '4x - 2y = 10  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '4x + 6y = 22  ...(3)\n'
                    '4x - 2y = 10  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '8y = 12\n'
                    'y = 12 / 8\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 3(12 / 8) = 11\n'
                    '2x + 36 / 8 = 11\n'
                    '2x = 88 / 8 - 36 / 8\n'
                    '2x = 52 / 8\n'
                    'x = 13 / 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 13 / 2 and y = 3 / 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nSolve the system of equations:\n\n'
                    '3x - 2y = 7\n'
                    '5x + 4y = 3',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 2y = 7  ...(1)\n'
                    '5x + 4y = 3  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '6x - 4y = 14  ...(3)\n'
                    '5x + 4y = 3  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '11x = 17\n'
                    'x = 17 / 11\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(17 / 11) - 2y = 7\n'
                    '51 / 11 - 2y = 7\n'
                    '- 2y = 77 / 11 - 51 / 11\n'
                    '- 2y = 26 / 11\n'
                    'y = - 13 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 17 / 11 and y = - 13 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nSolve the system of equations:\n\n'
                    '2x + 5y = 9\n'
                    '3x - 2y = 8',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 5y = 9  ...(1)\n'
                    '3x - 2y = 8  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 2 to make the coefficients of y equal:\n\n'
                    '6x + 15y = 27  ...(3)\n'
                    '6x - 4y = 16  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '19y = 11\n'
                    'y = 11 / 19\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 5(11 / 19) = 9\n'
                    '2x + 55 / 19 = 9\n'
                    '2x = 171 / 19 - 55 / 19\n'
                    '2x = 116 / 19\n'
                    'x = 58 / 19\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 58 / 19 and y = 11 / 19.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nSolve the system of equations:\n\n'
                    '4x - 3y = 5\n'
                    '2x + 7y = 13',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x - 3y = 5  ...(1)\n'
                    '2x + 7y = 13  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 4 to make the coefficients of y equal:\n\n'
                    '8x - 6y = 10  ...(3)\n'
                    '8x + 28y = 52  ...(4)\n\n'
                    'Step 4: Subtract Equation (3) from Equation (4) to eliminate y:\n\n'
                    '34y = 42\n'
                    'y = 42 / 34\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '4x - 3(42 / 34) = 5\n'
                    '4x - 126 / 34 = 5\n'
                    '4x = 170 / 34 + 126 / 34\n'
                    '4x = 296 / 34\n'
                    'x = 148 / 17\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 148 / 17 and y = 21 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nSolve the system of equations:\n\n'
                    '3x + 2y = 11\n'
                    '2x - 5y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 11  ...(1)\n'
                    '2x - 5y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x + 4y = 22  ...(3)\n'
                    '6x - 15y = -3  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '19y = 25\n'
                    'y = 25 / 19\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x + 2(25 / 19) = 11\n'
                    '3x + 50 / 19 = 11\n'
                    '3x = 209 / 19 - 50 / 19\n'
                    '3x = 159 / 19\n'
                    'x = 53 / 19\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 53 / 19 and y = 25 / 19.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nSolve the system of equations:\n\n'
                    '5x - 3y = 7\n'
                    '4x + 2y = 14',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x - 3y = 7  ...(1)\n'
                    '4x + 2y = 14  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '10x - 6y = 14  ...(3)\n'
                    '12x + 6y = 42  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '22x = 56\n'
                    'x = 56 / 22\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '5(56 / 22) - 3y = 7\n'
                    '280 / 22 - 3y = 7\n'
                    '3y = 280 / 22 - 154 / 22\n'
                    '3y = 126 / 22\n'
                    'y = 63 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 28 / 11 and y = 63 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nSolve the system of equations:\n\n'
                    '3x - 4y = 2\n'
                    '2x + y = 6',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 4y = 2  ...(1)\n'
                    '2x + y = 6  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x - 8y = 4  ...(3)\n'
                    '6x + 3y = 18  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '-11y = -14\n'
                    'y = -14 / -11\n'
                    'y = 14 / 11\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 14 / 11 = 6\n'
                    '2x = 66 / 11 - 14 / 11\n'
                    '2x = 52 / 11\n'
                    'x = 26 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 26 / 11 and y = 14 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nSolve the system of equations:\n\n'
                    'x - 2y = 5\n'
                    '3x + 4y = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    'x - 2y = 5  ...(1)\n'
                    '3x + 4y = 1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '3x - 6y = 15  ...(3)\n'
                    '3x + 4y = 1  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '-10y = 14\n'
                    'y = -14 / 10\n'
                    'y = -7 / 5\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    'x - 2(-7 / 5) = 5\n'
                    'x + 14 / 5 = 5\n'
                    'x = 25 / 5 - 14 / 5\n'
                    'x = 11 / 5\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 11 / 5 and y = -7 / 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nSolve the system of equations:\n\n'
                    '2x + 3y = 8\n'
                    '4x - 5y = -7',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 3y = 8  ...(1)\n'
                    '4x - 5y = -7  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 4 and Equation (2) by 2 to make the coefficients of y equal:\n\n'
                    '8x + 12y = 32  ...(3)\n'
                    '8x - 10y = -14  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '22y = 46\n'
                    'y = 46 / 22\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 3(46 / 22) = 8\n'
                    '2x + 138 / 22 = 8\n'
                    '2x = 176 / 22 - 138 / 22\n'
                    '2x = 38 / 22\n'
                    'x = 19 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 19 / 11 and y = 23 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nSolve the system of equations:\n\n'
                    '3x - y = 5\n'
                    '4x + 2y = 3',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - y = 5  ...(1)\n'
                    '4x + 2y = 3  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for y:\n\n'
                    'y = 3x - 5\n\n'
                    'Step 4: Substitute the expression for y into Equation (2):\n\n'
                    '4x + 2(3x - 5) = 3\n'
                    '4x + 6x - 10 = 3\n'
                    '10x - 10 = 3\n'
                    '10x = 13\n'
                    'x = 13 / 10\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) to solve for y:\n\n'
                    '3(13 / 10) - y = 5\n'
                    '39 / 10 - y = 5\n'
                    'y = 39 / 10 - 50 / 10\n'
                    'y = -11 / 10\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 13 / 10 and y = -11 / 10.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nSolve the system of equations:\n\n'
                    '2x - 3y = 4\n'
                    'x + 4y = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = 4  ...(1)\n'
                    'x + 4y = 2  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (2) for x:\n\n'
                    'x = 2 - 4y\n\n'
                    'Step 4: Substitute the expression for x into Equation (1):\n\n'
                    '2(2 - 4y) - 3y = 4\n'
                    '4 - 8y - 3y = 4\n'
                    '4 - 11y = 4\n'
                    '-11y = 0\n'
                    'y = 0\n\n'
                    'Step 5: Substitute the value of y back into Equation (2) to solve for x:\n\n'
                    'x + 4(0) = 2\n'
                    'x = 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 2 and y = 0.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nSolve the system of equations:\n\n'
                    '3x + 2y = 10\n'
                    '4x - 3y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 10  ...(1)\n'
                    '4x - 3y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 2 to make the coefficients of y equal:\n\n'
                    '9x + 6y = 30  ...(3)\n'
                    '8x - 6y = -2  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '17x = 28\n'
                    'x = 28 / 17\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(28 / 17) + 2y = 10\n'
                    '84 / 17 + 2y = 10\n'
                    '2y = 170 / 17 - 84 / 17\n'
                    '2y = 86 / 17\n'
                    'y = 43 / 17\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 28 / 17 and y = 43 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nSolve the system of equations:\n\n'
                    '2x - 5y = 3\n'
                    '3x + y = 7',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 5y = 3  ...(1)\n'
                    '3x + y = 7  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 5 to make the coefficients of y equal:\n\n'
                    '6x - 15y = 9  ...(3)\n'
                    '15x + 5y = 35  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '21x = 44\n'
                    'x = 44 / 21\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(44 / 21) + y = 7\n'
                    '132 / 21 + y = 7\n'
                    'y = 147 / 21 - 132 / 21\n'
                    'y = 15 / 21\n'
                    'y = 5 / 7\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 44 / 21 and y = 5 / 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nSolve the system of equations:\n\n'
                    '3x + 2y = 8\n'
                    '2x - 3y = -5',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 8  ...(1)\n'
                    '2x - 3y = -5  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 2 to make the coefficients of y equal:\n\n'
                    '9x + 6y = 24  ...(3)\n'
                    '4x - 6y = -10  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '13x = 14\n'
                    'x = 14 / 13\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(14 / 13) + 2y = 8\n'
                    '42 / 13 + 2y = 8\n'
                    '2y = 104 / 13 - 42 / 13\n'
                    '2y = 62 / 13\n'
                    'y = 31 / 13\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 14 / 13 and y = 31 / 13.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nSolve the system of equations:\n\n'
                    '5x - 2y = 3\n'
                    '3x + 4y = 11',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x - 2y = 3  ...(1)\n'
                    '3x + 4y = 11  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 5 to make the coefficients of y equal:\n\n'
                    '10x - 4y = 6  ...(3)\n'
                    '15x + 20y = 55  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '25x = 61\n'
                    'x = 61 / 25\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '5(61 / 25) - 2y = 3\n'
                    '305 / 25 - 2y = 3\n'
                    '2y = 75 / 25 - 305 / 25\n'
                    '2y = -230 / 25\n'
                    'y = -115 / 25\n'
                    'y = -23 / 5\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 61 / 25 and y = -23 / 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nSolve the system of equations:\n\n'
                    '3x + 4y = 14\n'
                    '2x - 3y = 6',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 4y = 14  ...(1)\n'
                    '2x - 3y = 6  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x + 8y = 28  ...(3)\n'
                    '6x - 9y = 18  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '17y = 10\n'
                    'y = 10 / 17\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x + 4(10 / 17) = 14\n'
                    '3x + 40 / 17 = 14\n'
                    '3x = 238 / 17 - 40 / 17\n'
                    '3x = 198 / 17\n'
                    'x = 66 / 17\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 66 / 17 and y = 10 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nSolve the system of equations:\n\n'
                    '2x + 3y = 13\n'
                    '4x - 2y = 10',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 3y = 13  ...(1)\n'
                    '4x - 2y = 10  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '4x + 6y = 26  ...(3)\n'
                    '4x - 2y = 10  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '8y = 16\n'
                    'y = 16 / 8\n'
                    'y = 2\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 3(2) = 13\n'
                    '2x + 6 = 13\n'
                    '2x = 13 - 6\n'
                    '2x = 7\n'
                    'x = 7 / 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 7 / 2 and y = 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nSolve the system of equations:\n\n'
                    '3x - 5y = 17\n'
                    '2x + 4y = 14',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 5y = 17  ...(1)\n'
                    '2x + 4y = 14  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x - 10y = 34  ...(3)\n'
                    '6x + 12y = 42  ...(4)\n\n'
                    'Step 4: Subtract Equation (3) from Equation (4) to eliminate y:\n\n'
                    '22y = 8\n'
                    'y = 8 / 22\n'
                    'y = 4 / 11\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x - 5(4 / 11) = 17\n'
                    '3x - 20 / 11 = 17\n'
                    '3x = 187 / 11 + 20 / 11\n'
                    '3x = 207 / 11\n'
                    'x = 69 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 69 / 11 and y = 4 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nSolve the system of equations:\n\n'
                    '4x + 3y = 23\n'
                    '3x - 2y = 5',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x + 3y = 23  ...(1)\n'
                    '3x - 2y = 5  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 4 to make the coefficients of y equal:\n\n'
                    '12x + 9y = 69  ...(3)\n'
                    '12x - 8y = 20  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '17y = 49\n'
                    'y = 49 / 17\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '4x + 3(49 / 17) = 23\n'
                    '4x + 147 / 17 = 23\n'
                    '4x = 391 / 17 - 147 / 17\n'
                    '4x = 244 / 17\n'
                    'x = 61 / 17\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 61 / 17 and y = 49 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nSolve the system of equations:\n\n'
                    '3x - 2y = 7\n'
                    '2x + 5y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 2y = 7  ...(1)\n'
                    '2x + 5y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x - 4y = 14  ...(3)\n'
                    '6x + 15y = -3  ...(4)\n\n'
                    'Step 4: Subtract Equation (3) from Equation (4) to eliminate y:\n\n'
                    '19y = -17\n'
                    'y = -17 / 19\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x - 2(-17 / 19) = 7\n'
                    '3x + 34 / 19 = 7\n'
                    '3x = 133 / 19 - 34 / 19\n'
                    '3x = 99 / 19\n'
                    'x = 33 / 19\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 33 / 19 and y = -17 / 19.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nSolve the system of equations:\n\n'
                    '3x + 2y = 9\n'
                    '4x - y = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 9  ...(1)\n'
                    '4x - y = 1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 4 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '12x + 8y = 36  ...(3)\n'
                    '12x - 3y = 3  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '11y = 33\n'
                    'y = 33 / 11\n'
                    'y = 3\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x + 2(3) = 9\n'
                    '3x + 6 = 9\n'
                    '3x = 9 - 6\n'
                    '3x = 3\n'
                    'x = 3 / 3\n'
                    'x = 1\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 1 and y = 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nSolve the system of equations:\n\n'
                    '2x - 3y = 5\n'
                    '3x + 4y = 6',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = 5  ...(1)\n'
                    '3x + 4y = 6  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for x:\n\n'
                    'x = (5 + 3y) / 2\n\n'
                    'Step 4: Substitute the expression for x into Equation (2):\n\n'
                    '3((5 + 3y) / 2) + 4y = 6\n'
                    '(15 + 9y) / 2 + 4y = 6\n'
                    '15 + 9y + 8y = 12\n'
                    '17y = -3\n'
                    'y = -3 / 17\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) to solve for x:\n\n'
                    '2x - 3(-3 / 17) = 5\n'
                    '2x + 9 / 17 = 5\n'
                    '2x = 85 / 17 - 9 / 17\n'
                    '2x = 76 / 17\n'
                    'x = 38 / 17\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 38 / 17 and y = -3 / 17.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nSolve the system of equations:\n\n'
                    'x - 2y = 7\n'
                    '2x + 3y = 11',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    'x - 2y = 7  ...(1)\n'
                    '2x + 3y = 11  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '2x - 4y = 14  ...(3)\n'
                    '2x + 3y = 11  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '-7y = 3\n'
                    'y = 3 / -7\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    'x - 2(3 / -7) = 7\n'
                    'x + 6 / 7 = 7\n'
                    'x = 49 / 7 - 6 / 7\n'
                    'x = 43 / 7\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 43 / 7 and y = 3 / -7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nSolve the system of equations:\n\n'
                    '2x + 5y = 9\n'
                    '4x - 3y = 11',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 5y = 9  ...(1)\n'
                    '4x - 3y = 11  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 4 and Equation (2) by 2 to make the coefficients of x equal:\n\n'
                    '8x + 20y = 36  ...(3)\n'
                    '8x - 6y = 22  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate x:\n\n'
                    '26y = 14\n'
                    'y = 14 / 26\n'
                    'y = 7 / 13\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '2x + 5(7 / 13) = 9\n'
                    '2x + 35 / 13 = 9\n'
                    '2x = 117 / 13 - 35 / 13\n'
                    '2x = 82 / 13\n'
                    'x = 41 / 13\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 41 / 13 and y = 7 / 13.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nSolve the system of equations:\n\n'
                    '3x - 2y = 5\n'
                    '6x + 4y = 17',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 2y = 5  ...(1)\n'
                    '6x + 4y = 17  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '9x - 6y = 15  ...(3)\n'
                    '6x + 4y = 17  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '15x = 32\n'
                    'x = 32 / 15\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(32 / 15) - 2y = 5\n'
                    '96 / 15 - 2y = 5\n'
                    '2y = 80 / 15 - 96 / 15\n'
                    '2y = -16 / 15\n'
                    'y = -8 / 15\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 32 / 15 and y = -8 / 15.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nSolve the system of equations:\n\n'
                    '5x - 3y = 11\n'
                    '2x + 7y = 5',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x - 3y = 11  ...(1)\n'
                    '2x + 7y = 5  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 5 to make the coefficients of x equal:\n\n'
                    '10x - 6y = 22  ...(3)\n'
                    '10x + 35y = 25  ...(4)\n\n'
                    'Step 4: Subtract Equation (3) from Equation (4) to eliminate x:\n\n'
                    '41y = 3\n'
                    'y = 3 / 41\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '5x - 3(3 / 41) = 11\n'
                    '5x - 9 / 41 = 11\n'
                    '5x = 451 / 41 + 9 / 41\n'
                    '5x = 460 / 41\n'
                    'x = 92 / 41\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 92 / 41 and y = 3 / 41.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nSolve the system of equations:\n\n'
                    '4x + 5y = 13\n'
                    '3x - 2y = 7',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x + 5y = 13  ...(1)\n'
                    '3x - 2y = 7  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 3 and Equation (2) by 4 to make the coefficients of x equal:\n\n'
                    '12x + 15y = 39  ...(3)\n'
                    '12x - 8y = 28  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate x:\n\n'
                    '23y = 11\n'
                    'y = 11 / 23\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '4x + 5(11 / 23) = 13\n'
                    '4x + 55 / 23 = 13\n'
                    '4x = 299 / 23 - 55 / 23\n'
                    '4x = 244 / 23\n'
                    'x = 61 / 23\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 61 / 23 and y = 11 / 23.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nSolve the system of equations:\n\n'
                    '3x - 4y = 14\n'
                    '5x + 2y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 4y = 14  ...(1)\n'
                    '5x + 2y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 5 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '15x - 20y = 70  ...(3)\n'
                    '15x + 6y = -3  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '-26y = 73\n'
                    'y = 73 / -26\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x - 4(73 / -26) = 14\n'
                    '3x + 292 / 26 = 14\n'
                    '3x = 364 / 26 - 292 / 26\n'
                    '3x = 72 / 26\n'
                    'x = 36 / 13\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 36 / 13 and y = 73 / -26.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nSolve the system of equations:\n\n'
                    '2x - y = 5\n'
                    '3x + 4y = -2',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - y = 5  ...(1)\n'
                    '3x + 4y = -2  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 4 and Equation (2) by 1 to make the coefficients of y equal:\n\n'
                    '8x - 4y = 20  ...(3)\n'
                    '3x + 4y = -2  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '11x = 18\n'
                    'x = 18 / 11\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2(18 / 11) - y = 5\n'
                    '36 / 11 - y = 5\n'
                    'y = 36 / 11 - 55 / 11\n'
                    'y = -19 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 18 / 11 and y = -19 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nSolve the system of equations:\n\n'
                    '4x + 3y = 10\n'
                    '6x - 2y = 16',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x + 3y = 10  ...(1)\n'
                    '6x - 2y = 16  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '8x + 6y = 20  ...(3)\n'
                    '18x - 6y = 48  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '26x = 68\n'
                    'x = 68 / 26\n'
                    'x = 34 / 13\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '4(34 / 13) + 3y = 10\n'
                    '136 / 13 + 3y = 10\n'
                    '3y = 130 / 13 - 136 / 13\n'
                    '3y = -6 / 13\n'
                    'y = -2 / 13\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 34 / 13 and y = -2 / 13.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nSolve the system of equations:\n\n'
                    '2x - 3y = 1\n'
                    '4x + 5y = 11',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = 1  ...(1)\n'
                    '4x + 5y = 11  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 5 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '10x - 15y = 5  ...(3)\n'
                    '12x + 15y = 33  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '22x = 38\n'
                    'x = 38 / 22\n'
                    'x = 19 / 11\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2(19 / 11) - 3y = 1\n'
                    '38 / 11 - 3y = 1\n'
                    '3y = 38 / 11 - 11 / 11\n'
                    '3y = 27 / 11\n'
                    'y = 9 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 19 / 11 and y = 9 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nSolve the system of equations:\n\n'
                    '3x + 2y = 10\n'
                    '2x - 4y = -4',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 2y = 10  ...(1)\n'
                    '2x - 4y = -4  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '6x + 4y = 20  ...(3)\n'
                    '6x - 12y = -12  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate y:\n\n'
                    '16y = 32\n'
                    'y = 32 / 16\n'
                    'y = 2\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x + 2(2) = 10\n'
                    '3x + 4 = 10\n'
                    '3x = 10 - 4\n'
                    '3x = 6\n'
                    'x = 6 / 3\n'
                    'x = 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 2 and y = 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nSolve the system of equations:\n\n'
                    '5x + 3y = 7\n'
                    '2x - y = 1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x + 3y = 7  ...(1)\n'
                    '2x - y = 1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (2) for y:\n\n'
                    'y = 2x - 1\n\n'
                    'Step 4: Substitute the expression for y into Equation (1):\n\n'
                    '5x + 3(2x - 1) = 7\n'
                    '5x + 6x - 3 = 7\n'
                    '11x - 3 = 7\n'
                    '11x = 10\n'
                    'x = 10 / 11\n\n'
                    'Step 5: Substitute the value of x back into Equation (2) to solve for y:\n\n'
                    '2(10 / 11) - y = 1\n'
                    '20 / 11 - y = 1\n'
                    'y = 20 / 11 - 11 / 11\n'
                    'y = 9 / 11\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 10 / 11 and y = 9 / 11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nSolve the system of equations:\n\n'
                    '3x - 4y = 11\n'
                    '4x + 2y = -3',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x - 4y = 11  ...(1)\n'
                    '4x + 2y = -3  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 4 to make the coefficients of y equal:\n\n'
                    '6x - 8y = 22  ...(3)\n'
                    '16x + 8y = -12  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '22x = 10\n'
                    'x = 10 / 22\n'
                    'x = 5 / 11\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(5 / 11) - 4y = 11\n'
                    '15 / 11 - 4y = 11\n'
                    '4y = 15 / 11 - 121 / 11\n'
                    '4y = -106 / 11\n'
                    'y = -106 / 44\n'
                    'y = -53 / 22\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 5 / 11 and y = -53 / 22.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nSolve the system of equations:\n\n'
                    '2x + 3y = 5\n'
                    '4x - 5y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x + 3y = 5  ...(1)\n'
                    '4x - 5y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 5 and Equation (2) by 3 to make the coefficients of y equal:\n\n'
                    '10x + 15y = 25  ...(3)\n'
                    '12x - 15y = -3  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate y:\n\n'
                    '22x = 22\n'
                    'x = 22 / 22\n'
                    'x = 1\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2(1) + 3y = 5\n'
                    '2 + 3y = 5\n'
                    '3y = 5 - 2\n'
                    '3y = 3\n'
                    'y = 3 / 3\n'
                    'y = 1\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 1 and y = 1.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nSolve the system of equations:\n\n'
                    '4x - 3y = 10\n'
                    '2x + y = -1',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '4x - 3y = 10  ...(1)\n'
                    '2x + y = -1  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (2) for y:\n\n'
                    'y = -2x - 1\n\n'
                    'Step 4: Substitute the expression for y into Equation (1):\n\n'
                    '4x - 3(-2x - 1) = 10\n'
                    '4x + 6x + 3 = 10\n'
                    '10x + 3 = 10\n'
                    '10x = 7\n'
                    'x = 7 / 10\n\n'
                    'Step 5: Substitute the value of x back into Equation (2) to solve for y:\n\n'
                    '2(7 / 10) + y = -1\n'
                    '7 / 5 + y = -1\n'
                    'y = -1 - 7 / 5\n'
                    'y = -5 / 5 - 7 / 5\n'
                    'y = -12 / 5\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 7 / 10 and y = -12 / 5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nSolve the system of equations:\n\n'
                    '3x + 4y = 6\n'
                    '6x - 8y = 12',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + 4y = 6  ...(1)\n'
                    '6x - 8y = 12  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of x equal:\n\n'
                    '6x + 8y = 12  ...(3)\n'
                    '6x - 8y = 12  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate x:\n\n'
                    '16y = 0\n'
                    'y = 0\n\n'
                    'Step 5: Substitute the value of y back into Equation (1) or (2) to solve for x:\n\n'
                    '3x + 4(0) = 6\n'
                    '3x = 6\n'
                    'x = 6 / 3\n'
                    'x = 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 2 and y = 0.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nSolve the system of equations:\n\n'
                    '2x - 3y = -5\n'
                    '4x + 6y = 10',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = -5  ...(1)\n'
                    '4x + 6y = 10  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of x equal:\n\n'
                    '4x - 6y = -10  ...(3)\n'
                    '4x + 6y = 10  ...(4)\n\n'
                    'Step 4: Add Equations (3) and (4) to eliminate x:\n\n'
                    '0 = 0\n'
                    'x can be any real number\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2x - 3y = -5\n'
                    '2(1) - 3y = -5\n'
                    '-3y = -7\n'
                    'y = -7 / -3\n'
                    'y = 7 / 3\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x can be any real number and y = 7 / 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nSolve the system of equations:\n\n'
                    '3x + y = 5\n'
                    '2x - 2y = -4',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '3x + y = 5  ...(1)\n'
                    '2x - 2y = -4  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the substitution method.\n\n'
                    'Step 3: Solve Equation (1) for y:\n\n'
                    'y = 5 - 3x\n\n'
                    'Step 4: Substitute the expression for y into Equation (2):\n\n'
                    '2x - 2(5 - 3x) = -4\n'
                    '2x - 10 + 6x = -4\n'
                    '8x - 10 = -4\n'
                    '8x = 6\n'
                    'x = 6 / 8\n'
                    'x = 3 / 4\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '3(3 / 4) + y = 5\n'
                    '9 / 4 + y = 5\n'
                    'y = 20 / 4 - 9 / 4\n'
                    'y = 11 / 4\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x = 3 / 4 and y = 11 / 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nSolve the system of equations:\n\n'
                    '2x - 3y = 1\n'
                    '4x - 6y = 2',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '2x - 3y = 1  ...(1)\n'
                    '4x - 6y = 2  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of x equal:\n\n'
                    '4x - 6y = 2  ...(3)\n'
                    '4x - 6y = 2  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate x:\n\n'
                    '0 = 0\n'
                    'x can be any real number\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '2x - 3y = 1\n'
                    '2(0) - 3y = 1\n'
                    '-3y = 1\n'
                    'y = 1 / -3\n'
                    'y = -1 / 3\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x can be any real number and y = -1 / 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nSolve the system of equations:\n\n'
                    '5x + 2y = 9\n'
                    '10x + 4y = 18',
                solution: 'Solution:\n\n'
                    'Step 1: Write down the system of equations:\n\n'
                    '5x + 2y = 9  ...(1)\n'
                    '10x + 4y = 18  ...(2)\n\n'
                    'Step 2: Choose a method to solve the system. '
                    'In this example, we\'ll use the elimination method.\n\n'
                    'Step 3: Multiply Equation (1) by 2 and Equation (2) by 1 to make the coefficients of x equal:\n\n'
                    '10x + 4y = 18  ...(3)\n'
                    '10x + 4y = 18  ...(4)\n\n'
                    'Step 4: Subtract Equation (4) from Equation (3) to eliminate x:\n\n'
                    '0 = 0\n'
                    'x can be any real number\n\n'
                    'Step 5: Substitute the value of x back into Equation (1) or (2) to solve for y:\n\n'
                    '5x + 2y = 9\n'
                    '5(0) + 2y = 9\n'
                    '2y = 9\n'
                    'y = 9 / 2\n\n'
                    'Step 6: Verify the solution by substituting the values of x and y '
                    'back into both original equations to ensure they satisfy both equations.\n\n'
                    'Therefore, the solution to the system of equations is: x can be any real number and y = 9 / 2.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
