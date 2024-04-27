import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class SystemsPage extends StatelessWidget {
  final Color chosenColor;
  SystemsPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Systems of Equations'),
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
                'Systems of Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebra Systems of Equations involve dealing with multiple equations simultaneously. In mathematics, a system of equations is a collection of two or more equations that are solved together because they share one or more common variables. The solution to a system of equations is a set of values that satisfy all the equations in the system simultaneously.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Systems of equations can arise in various real-world scenarios where multiple unknowns need to be determined at the same time. For example, consider the following system of linear equations:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2x +3 y = 10\n\n4x -5y= -3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In this system, x and y are the variables, and there are two equations. The goal is to find values of  x and  y that satisfy both equations simultaneously.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'There are different methods for solving systems of equations, including:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Substitution method: Solve one equation for one variable and then substitute this expression into the other equation.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '2. Elimination method: Add or subtract equations to eliminate one of the variables, then solve for the remaining variable.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Matrix method: Represent the system of equations as a matrix equation and use matrix operations to solve it',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Graphical method: Plot the equations on a graph and find the intersection point(s), which represent the solution(s) to the system.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Consider the following system of equations:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n2x+ y = 7 (Equation 1)\n\n x-y=1 (Equation 2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Solve one equation for one variable.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nLet`s solve for Equation 2 for x:\n\n x= y + 1 (Equation 3)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Substitute the expression for x from Equation 3 into Equation 1.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n2(y+1)+y = 7',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Solve for y.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nExpand and simplify Equation 1:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n2y+2+y=7\n\n3y+2=7\n\n3y= 7-2\n\n3y=5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nDivide both sides by 3\n\n y =5/3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Substitute the value of y into Equation 3 to find x.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nx = 5/3 + 1\n\nx=5/3+3/3\n\nx=8/3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 5: Verify the solution.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSubstitute the values of x and y into both original equations:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nFor Equation 1:\n\n2(8/3) + 5/3 = 16/3 + 5/3 = 21/3 =7',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nFor Equation 2:\n\n 8/3 - 5/3 = 3/3 = 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nBoth equations hold true, so the solution to the system of equations is x = 8/3 and y = 5/3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSolve the system of equations:\n2x + y = 7\nx - y = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = y + 1.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2(y + 1) + y = 7.\n\n'
                    'Step 3: Expand and simplify Equation 1:\n\n'
                    '2y + 2 + y = 7.\n\n'
                    '3y + 2 = 7.\n\n'
                    '3y = 7 - 2.\n\n'
                    '3y = 5.\n\n'
                    'y = 5 / 3.\n\n'
                    'Step 4: Substitute the value of y into Equation 3 to find x:\n\n'
                    'x = 5 / 3 + 1.\n\n'
                    'x = 5 / 3 + 3 / 3.\n\n'
                    'x = 8 / 3.\n\n'
                    'Step 5: Verify the solution:\n\n'
                    'For Equation 1: 2 * (8 / 3) + (5 / 3) = 21 / 3 = 7.\n\n'
                    'For Equation 2: (8 / 3) - (5 / 3) = 3 / 3 = 1.\n\n'
                    'Both equations hold true, so the solution to the system of equations is x = 8 / 3 and y = 5 / 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSolve the system of equations:\n3x - 2y = 5\n2x + 3y = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    '3x = 2y + 5.\n\n'
                    'x = (2y + 5) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '2((2y + 5) / 3) + 3y = 1.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '4y + 10 / 3 + 3y = 1.\n\n'
                    '7y + 10 / 3 = 1.\n\n'
                    '7y = 1 - 10 / 3.\n\n'
                    '7y = 3 / 3 - 10 / 3.\n\n'
                    '7y = -7 / 3.\n\n'
                    'y = -1.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    '3x = 2(-1) + 5.\n\n'
                    '3x = -2 + 5.\n\n'
                    '3x = 3.\n\n'
                    'x = 1.\n\n'
                    'Final Answer: The solution to the system of equations is x = 1 and y = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSolve the system of equations:\n4x + y = 10\nx - 3y = -5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = 3y - 5.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4(3y - 5) + y = 10.\n\n'
                    'Step 3: Expand and simplify Equation 1:\n\n'
                    '12y - 20 + y = 10.\n\n'
                    '13y - 20 = 10.\n\n'
                    '13y = 10 + 20.\n\n'
                    '13y = 30.\n\n'
                    'y = 30 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 3 to find x:\n\n'
                    'x = 3(30 / 13) - 5.\n\n'
                    'x = 90 / 13 - 65 / 13.\n\n'
                    'x = 25 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 25 / 13 and y = 30 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSolve the system of equations:\n5x + 2y = 8\n3x - y = 4.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (y + 4) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '5((y + 4) / 3) + 2y = 8.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(5y + 20) / 3 + 2y = 8.\n\n'
                    '(5y + 20) + 6y = 24.\n\n'
                    '11y + 20 = 24.\n\n'
                    '11y = 24 - 20.\n\n'
                    '11y = 4.\n\n'
                    'y = 4 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    '5x + 2(4 / 11) = 8.\n\n'
                    '5x + 8 / 11 = 8.\n\n'
                    '5x = 8 - 8 / 11.\n\n'
                    '5x = 88 / 11 - 8 / 11.\n\n'
                    '5x = 80 / 11.\n\n'
                    'x = 16 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 16 / 11 and y = 4 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSolve the system of equations:\n3x + y = 10\nx - 2y = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = 2y + 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3(2y + 3) + y = 10.\n\n'
                    'Step 3: Expand and simplify Equation 1:\n\n'
                    '6y + 9 + y = 10.\n\n'
                    '7y + 9 = 10.\n\n'
                    '7y = 10 - 9.\n\n'
                    '7y = 1.\n\n'
                    'y = 1 / 7.\n\n'
                    'Step 4: Substitute the value of y into Equation 3 to find x:\n\n'
                    'x = 2(1 / 7) + 3.\n\n'
                    'x = 2 / 7 + 21 / 7.\n\n'
                    'x = 23 / 7.\n\n'
                    'Final Answer: The solution to the system of equations is x = 23 / 7 and y = 1 / 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 2y = 11\n2x + 3y = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (3 - 3y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((3 - 3y) / 2) - 2y = 11.\n\n'
                    'Step 3: Expand and simplify Equation 1:\n\n'
                    '(9 - 9y) / 2 - 2y = 11.\n\n'
                    '9 - 9y - 4y = 22.\n\n'
                    '9 - 13y = 22.\n\n'
                    '-13y = 22 - 9.\n\n'
                    '-13y = 13.\n\n'
                    'y = 13 / -13.\n\n'
                    'y = -1.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (3 - 3(-1)) / 2.\n\n'
                    'x = (3 + 3) / 2.\n\n'
                    'x = 6 / 2.\n\n'
                    'x = 3.\n\n'
                    'Final Answer: The solution to the system of equations is x = 3 and y = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\nx + y = 5\n2x - y = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (3 + y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '((3 + y) / 2) + y = 5.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(3 + y) / 2 + 2y / 2 = 5.\n\n'
                    '(3 + y + 2y) / 2 = 5.\n\n'
                    '(3 + 3y) / 2 = 5.\n\n'
                    '3 + 3y = 10.\n\n'
                    '3y = 7.\n\n'
                    'y = 7 / 3.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (3 + 7 / 3) / 2.\n\n'
                    'x = (9 / 3 + 7 / 3) / 2.\n\n'
                    'x = 16 / 6.\n\n'
                    'x = 8 / 3.\n\n'
                    'Final Answer: The solution to the system of equations is x = 8 / 3 and y = 7 / 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x - 5y = 3\n3x + 2y = 7.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (7 - 2y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((7 - 2y) / 3) - 5y = 3.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(28 - 8y) / 3 - 5y = 3.\n\n'
                    '28 - 8y - 15y = 9.\n\n'
                    '28 - 23y = 9.\n\n'
                    '-23y = 9 - 28.\n\n'
                    '-23y = -19.\n\n'
                    'y = -19 / -23.\n\n'
                    'y = 19 / 23.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (7 - 2(19 / 23)) / 3.\n\n'
                    'x = (7 - 38 / 23) / 3.\n\n'
                    'x = (161 / 23 - 38 / 23) / 3.\n\n'
                    'x = 123 / 23 / 3.\n\n'
                    'x = 123 / 69.\n\n'
                    'Final Answer: The solution to the system of equations is x = 123 / 69 and y = 19 / 23.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x + 3y = 13\n3x - 2y = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (2y - 1) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2((2y - 1) / 3) + 3y = 13.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(4y - 2) / 3 + 3y = 13.\n\n'
                    '4y - 2 + 9y = 39.\n\n'
                    '13y - 2 = 39.\n\n'
                    '13y = 41.\n\n'
                    'y = 41 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (2(41 / 13) - 1) / 3.\n\n'
                    'x = (82 / 13 - 1) / 3.\n\n'
                    'x = (82 / 13 - 13 / 13) / 3.\n\n'
                    'x = 69 / 13 / 3.\n\n'
                    'x = 69 / 39.\n\n'
                    'x = 23 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 23 / 13 and y = 41 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 4y = 8\n2x + 5y = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (-1 - 5y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((-1 - 5y) / 2) - 4y = 8.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(-3 - 15y) / 2 - 4y = 8.\n\n'
                    '-3 - 15y - 8y = 16.\n\n'
                    '-23y = 19.\n\n'
                    'y = 19 / -23.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (-1 - 5(19 / -23)) / 2.\n\n'
                    'x = (-1 + 95 / 23) / 2.\n\n'
                    'x = (-23 / 23 + 95 / 23) / 2.\n\n'
                    'x = 72 / 23 / 2.\n\n'
                    'x = 72 / 46.\n\n'
                    'x = 36 / 23.\n\n'
                    'Final Answer: The solution to the system of equations is x = 36 / 23 and y = 19 / -23.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x + 3y = 11\n2x - 5y = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5y + 3) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((5y + 3) / 2) + 3y = 11.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(20y + 12) / 2 + 3y = 11.\n\n'
                    '20y + 12 + 6y = 22.\n\n'
                    '26y + 12 = 22.\n\n'
                    '26y = 10.\n\n'
                    'y = 10 / 26.\n\n'
                    'y = 5 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5(5 / 13) + 3) / 2.\n\n'
                    'x = (25 / 13 + 39 / 13) / 2.\n\n'
                    'x = 64 / 13 / 2.\n\n'
                    'x = 64 / 26.\n\n'
                    'x = 32 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 32 / 13 and y = 5 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n5x - 2y = 8\n3x + 4y = 16.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (16 - 4y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '5((16 - 4y) / 3) - 2y = 8.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(80 - 20y) / 3 - 2y = 8.\n\n'
                    '80 - 20y - 6y = 24.\n\n'
                    '80 - 26y = 24.\n\n'
                    '-26y = 24 - 80.\n\n'
                    '-26y = -56.\n\n'
                    'y = -56 / -26.\n\n'
                    'y = 28 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (16 - 4(28 / 13)) / 3.\n\n'
                    'x = (16 - 112 / 13) / 3.\n\n'
                    'x = (208 / 13 - 112 / 13) / 3.\n\n'
                    'x = 96 / 13 / 3.\n\n'
                    'x = 96 / 39.\n\n'
                    'x = 32 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 32 / 13 and y = 28 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 2y = 7\n4x - 3y = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (3y + 1) / 4.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((3y + 1) / 4) + 2y = 7.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(9y + 3) / 4 + 2y = 7.\n\n'
                    '9y + 3 + 8y = 28.\n\n'
                    '17y + 3 = 28.\n\n'
                    '17y = 25.\n\n'
                    'y = 25 / 17.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (3(25 / 17) + 1) / 4.\n\n'
                    'x = (75 / 17 + 1) / 4.\n\n'
                    'x = (75 / 17 + 17 / 17) / 4.\n\n'
                    'x = 92 / 17 / 4.\n\n'
                    'x = 92 / 68.\n\n'
                    'x = 23 / 17.\n\n'
                    'Final Answer: The solution to the system of equations is x = 23 / 17 and y = 25 / 17.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x - y = 3\n3x + 4y = 14.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (14 - 4y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2((14 - 4y) / 3) - y = 3.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(28 - 8y) / 3 - y = 3.\n\n'
                    '28 - 8y - 3y = 9.\n\n'
                    '28 - 11y = 9.\n\n'
                    '-11y = 9 - 28.\n\n'
                    '-11y = -19.\n\n'
                    'y = -19 / -11.\n\n'
                    'y = 19 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (14 - 4(19 / 11)) / 3.\n\n'
                    'x = (14 - 76 / 11) / 3.\n\n'
                    'x = (154 / 11 - 76 / 11) / 3.\n\n'
                    'x = 78 / 11 / 3.\n\n'
                    'x = 78 / 33.\n\n'
                    'x = 26 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 26 / 11 and y = 19 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 2y = 5\n2x + 3y = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (1 - 3y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((1 - 3y) / 2) - 2y = 5.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(3 - 9y) / 2 - 2y = 5.\n\n'
                    '3 - 9y - 4y = 10.\n\n'
                    '3 - 13y = 10.\n\n'
                    '-13y = 10 - 3.\n\n'
                    '-13y = 7.\n\n'
                    'y = 7 / -13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (1 - 3(7 / -13)) / 2.\n\n'
                    'x = (1 + 21 / 13) / 2.\n\n'
                    'x = (13 / 13 + 21 / 13) / 2.\n\n'
                    'x = 34 / 13 / 2.\n\n'
                    'x = 34 / 26.\n\n'
                    'x = 17 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 17 / 13 and y = 7 / -13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x + 3y = 6\n4x - 5y = 8.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5y + 8) / 4.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2((5y + 8) / 4) + 3y = 6.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(10y + 16) / 4 + 3y = 6.\n\n'
                    '10y + 16 + 12y = 24.\n\n'
                    '22y + 16 = 24.\n\n'
                    '22y = 8.\n\n'
                    'y = 8 / 22.\n\n'
                    'y = 4 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5(4 / 11) + 8) / 4.\n\n'
                    'x = (20 / 11 + 88 / 11) / 4.\n\n'
                    'x = 108 / 11 / 4.\n\n'
                    'x = 108 / 44.\n\n'
                    'x = 27 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 27 / 11 and y = 4 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x - 3y = 7\n3x + 2y = 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5 - 2y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((5 - 2y) / 3) - 3y = 7.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(20 - 8y) / 3 - 3y = 7.\n\n'
                    '20 - 8y - 9y = 21.\n\n'
                    '20 - 17y = 21.\n\n'
                    '-17y = 21 - 20.\n\n'
                    '-17y = 1.\n\n'
                    'y = 1 / -17.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5 - 2(1 / -17)) / 3.\n\n'
                    'x = (5 + 2 / 17) / 3.\n\n'
                    'x = (85 / 17 + 2 / 17) / 3.\n\n'
                    'x = 87 / 17 / 3.\n\n'
                    'x = 87 / 51.\n\n'
                    'Final Answer: The solution to the system of equations is x = 87 / 51 and y = 1 / -17.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 2y = 10\n4x - 3y = 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (3y + 5) / 4.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((3y + 5) / 4) + 2y = 10.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(9y + 15) / 4 + 2y = 10.\n\n'
                    '9y + 15 + 8y = 40.\n\n'
                    '17y + 15 = 40.\n\n'
                    '17y = 25.\n\n'
                    'y = 25 / 17.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (3(25 / 17) + 5) / 4.\n\n'
                    'x = (75 / 17 + 5) / 4.\n\n'
                    'x = (75 / 17 + 85 / 17) / 4.\n\n'
                    'x = 160 / 17 / 4.\n\n'
                    'x = 160 / 68.\n\n'
                    'x = 80 / 34.\n\n'
                    'x = 40 / 17.\n\n'
                    'Final Answer: The solution to the system of equations is x = 40 / 17 and y = 25 / 17.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x - 3y = 1\n3x + 4y = 8.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (8 - 4y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2((8 - 4y) / 3) - 3y = 1.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(16 - 8y) / 3 - 3y = 1.\n\n'
                    '16 - 8y - 9y = 3.\n\n'
                    '16 - 17y = 3.\n\n'
                    '-17y = 3 - 16.\n\n'
                    '-17y = -13.\n\n'
                    'y = -13 / -17.\n\n'
                    'y = 13 / 17.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (8 - 4(13 / 17)) / 3.\n\n'
                    'x = (8 - 52 / 17) / 3.\n\n'
                    'x = (136 / 17 - 52 / 17) / 3.\n\n'
                    'x = 84 / 17 / 3.\n\n'
                    'x = 84 / 51.\n\n'
                    'x = 28 / 17.\n\n'
                    'Final Answer: The solution to the system of equations is x = 28 / 17 and y = 13 / 17.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n5x + 2y = 17\n3x - y = 9.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (9 + y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '5((9 + y) / 3) + 2y = 17.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(45 + 5y) / 3 + 2y = 17.\n\n'
                    '45 + 5y + 6y = 51.\n\n'
                    '11y + 45 = 51.\n\n'
                    '11y = 6.\n\n'
                    'y = 6 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (9 + 6 / 11) / 3.\n\n'
                    'x = (99 / 11 + 6 / 11) / 3.\n\n'
                    'x = 105 / 11 / 3.\n\n'
                    'x = 105 / 33.\n\n'
                    'x = 35 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 35 / 11 and y = 6 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x + 5y = 13\n3x - 2y = 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5 + 2y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '2((5 + 2y) / 3) + 5y = 13.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(10 + 4y) / 3 + 5y = 13.\n\n'
                    '10 + 4y + 15y = 39.\n\n'
                    '4y + 15y = 39 - 10.\n\n'
                    '19y = 29.\n\n'
                    'y = 29 / 19.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5 + 2(29 / 19)) / 3.\n\n'
                    'x = (5 + 58 / 19) / 3.\n\n'
                    'x = (95 / 19 + 58 / 19) / 3.\n\n'
                    'x = 153 / 19 / 3.\n\n'
                    'x = 153 / 57.\n\n'
                    'x = 51 / 19.\n\n'
                    'Final Answer: The solution to the system of equations is x = 51 / 19 and y = 29 / 19.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x + 3y = 19\n2x - 5y = 7.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (7 + 5y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((7 + 5y) / 2) + 3y = 19.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(28 + 20y) / 2 + 3y = 19.\n\n'
                    '28 + 20y + 6y = 38.\n\n'
                    '26y + 28 = 38.\n\n'
                    '26y = 10.\n\n'
                    'y = 10 / 26.\n\n'
                    'y = 5 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (7 + 5(5 / 13)) / 2.\n\n'
                    'x = (7 + 25 / 13) / 2.\n\n'
                    'x = (91 / 13 + 25 / 13) / 2.\n\n'
                    'x = 116 / 13 / 2.\n\n'
                    'x = 116 / 26.\n\n'
                    'x = 58 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 58 / 13 and y = 5 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 2y = 8\n5x + 4y = 22.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (22 - 4y) / 5.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((22 - 4y) / 5) - 2y = 8.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(66 - 12y) / 5 - 2y = 8.\n\n'
                    '66 - 12y - 10y = 40.\n\n'
                    '66 - 22y = 40.\n\n'
                    '-22y = 40 - 66.\n\n'
                    '-22y = -26.\n\n'
                    'y = -26 / -22.\n\n'
                    'y = 13 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (22 - 4(13 / 11)) / 5.\n\n'
                    'x = (22 - 52 / 11) / 5.\n\n'
                    'x = (242 / 11 - 52 / 11) / 5.\n\n'
                    'x = 190 / 11 / 5.\n\n'
                    'x = 190 / 55.\n\n'
                    'x = 38 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 38 / 11 and y = 13 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x - 3y = 2\n2x + 5y = 11.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (11 - 5y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((11 - 5y) / 2) - 3y = 2.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(44 - 20y) / 2 - 3y = 2.\n\n'
                    '44 - 20y - 6y = 4.\n\n'
                    '44 - 26y = 4.\n\n'
                    '-26y = 4 - 44.\n\n'
                    '-26y = -40.\n\n'
                    'y = -40 / -26.\n\n'
                    'y = 20 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (11 - 5(20 / 13)) / 2.\n\n'
                    'x = (11 - 100 / 13) / 2.\n\n'
                    'x = (143 / 13 - 100 / 13) / 2.\n\n'
                    'x = 43 / 13 / 2.\n\n'
                    'x = 43 / 26.\n\n'
                    'Final Answer: The solution to the system of equations is x = 43 / 26 and y = 20 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 4y = 17\n2x - y = 5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5 + y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((5 + y) / 2) + 4y = 17.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(15 + 3y) / 2 + 4y = 17.\n\n'
                    '15 + 3y + 8y = 34.\n\n'
                    '3y + 8y = 34 - 15.\n\n'
                    '11y = 19.\n\n'
                    'y = 19 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5 + 19 / 11) / 2.\n\n'
                    'x = (55 / 11 + 19 / 11) / 2.\n\n'
                    'x = 74 / 11 / 2.\n\n'
                    'x = 74 / 22.\n\n'
                    'x = 37 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 37 / 11 and y = 19 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n5x + 2y = 21\n3x - 4y = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (-1 + 4y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '5((-1 + 4y) / 3) + 2y = 21.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(-5 + 20y) / 3 + 2y = 21.\n\n'
                    '-5 + 20y + 6y = 63.\n\n'
                    '20y + 6y = 63 + 5.\n\n'
                    '26y = 68.\n\n'
                    'y = 68 / 26.\n\n'
                    'y = 34 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (-1 + 4(34 / 13)) / 3.\n\n'
                    'x = (-1 + 136 / 13) / 3.\n\n'
                    'x = (13 / 13 - 136 / 13) / 3.\n\n'
                    'x = -123 / 13 / 3.\n\n'
                    'x = -123 / 39.\n\n'
                    'Final Answer: The solution to the system of equations is x = -123 / 39 and y = 34 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - y = 4\n2x + 3y = 13.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = 3x - 4.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '2x + 3(3x - 4) = 13.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '2x + 9x - 12 = 13.\n\n'
                    '11x - 12 = 13.\n\n'
                    '11x = 13 + 12.\n\n'
                    '11x = 25.\n\n'
                    'x = 25 / 11.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '3(25 / 11) - y = 4.\n\n'
                    '75 / 11 - y = 4.\n\n'
                    'y = 75 / 11 - 4.\n\n'
                    'y = (75 - 44) / 11.\n\n'
                    'y = 31 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 25 / 11 and y = 31 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x + y = 7\n2x - 3y = -5.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = 7 - 4x.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '2x - 3(7 - 4x) = -5.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '2x - 21 + 12x = -5.\n\n'
                    '14x - 21 = -5.\n\n'
                    '14x = -5 + 21.\n\n'
                    '14x = 16.\n\n'
                    'x = 16 / 14.\n\n'
                    'x = 8 / 7.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '4(8 / 7) + y = 7.\n\n'
                    '32 / 7 + y = 7.\n\n'
                    'y = 7 - 32 / 7.\n\n'
                    'y = (49 - 32) / 7.\n\n'
                    'y = 17 / 7.\n\n'
                    'Final Answer: The solution to the system of equations is x = 8 / 7 and y = 17 / 7.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 2y = 5\n5x + 4y = 13.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = (3x - 5) / 2.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '5x + 4((3x - 5) / 2) = 13.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '5x + 6x - 10 = 13.\n\n'
                    '11x - 10 = 13.\n\n'
                    '11x = 13 + 10.\n\n'
                    '11x = 23.\n\n'
                    'x = 23 / 11.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '3(23 / 11) - 2y = 5.\n\n'
                    '69 / 11 - 2y = 5.\n\n'
                    '2y = 69 / 11 - 5.\n\n'
                    '2y = (69 - 55) / 11.\n\n'
                    '2y = 14 / 11.\n\n'
                    'y = 14 / 22.\n\n'
                    'y = 7 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 23 / 11 and y = 7 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x - 3y = 1\n5x + 4y = 11.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (1 + 3y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '5((1 + 3y) / 2) + 4y = 11.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(5 + 15y) / 2 + 4y = 11.\n\n'
                    '5 + 15y + 8y = 22.\n\n'
                    '15y + 8y = 22 - 5.\n\n'
                    '23y = 17.\n\n'
                    'y = 17 / 23.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (1 + 3(17 / 23)) / 2.\n\n'
                    'x = (1 + 51 / 23) / 2.\n\n'
                    'x = (23 / 23 + 51 / 23) / 2.\n\n'
                    'x = 74 / 23 / 2.\n\n'
                    'x = 74 / 46.\n\n'
                    'x = 37 / 23.\n\n'
                    'Final Answer: The solution to the system of equations is x = 37 / 23 and y = 17 / 23.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - y = 7\n4x + 2y = 14.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = 3x - 7.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '4x + 2(3x - 7) = 14.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '4x + 6x - 14 = 14.\n\n'
                    '10x - 14 = 14.\n\n'
                    '10x = 14 + 14.\n\n'
                    '10x = 28.\n\n'
                    'x = 28 / 10.\n\n'
                    'x = 14 / 5.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '3(14 / 5) - y = 7.\n\n'
                    '42 / 5 - y = 7.\n\n'
                    'y = 42 / 5 - 7.\n\n'
                    'y = (42 - 35) / 5.\n\n'
                    'y = 7 / 5.\n\n'
                    'Final Answer: The solution to the system of equations is x = 14 / 5 and y = 7 / 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x - y = 5\n3x + 4y = 14.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = 2x - 5.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '3x + 4(2x - 5) = 14.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '3x + 8x - 20 = 14.\n\n'
                    '11x - 20 = 14.\n\n'
                    '11x = 14 + 20.\n\n'
                    '11x = 34.\n\n'
                    'x = 34 / 11.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '2(34 / 11) - y = 5.\n\n'
                    '68 / 11 - y = 5.\n\n'
                    'y = 68 / 11 - 5.\n\n'
                    'y = (68 - 55) / 11.\n\n'
                    'y = 13 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 34 / 11 and y = 13 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x - 2y = 10\n3x + 5y = 29.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (10 + 2y) / 4.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '3((10 + 2y) / 4) + 5y = 29.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(30 + 6y) / 4 + 5y = 29.\n\n'
                    '30 + 6y + 20y = 116.\n\n'
                    '26y = 116 - 30.\n\n'
                    '26y = 86.\n\n'
                    'y = 86 / 26.\n\n'
                    'y = 43 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (10 + 2(43 / 13)) / 4.\n\n'
                    'x = (10 + 86 / 13) / 4.\n\n'
                    'x = (130 / 13 + 86 / 13) / 4.\n\n'
                    'x = 216 / 13 / 4.\n\n'
                    'x = 216 / 52.\n\n'
                    'x = 27 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 27 / 13 and y = 43 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 2y = 16\n5x - 3y = 17.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (16 - 2y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '5((16 - 2y) / 3) - 3y = 17.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(80 - 10y) / 3 - 3y = 17.\n\n'
                    '80 - 10y - 9y = 51.\n\n'
                    '80 - 19y = 51.\n\n'
                    '-19y = 51 - 80.\n\n'
                    '-19y = -29.\n\n'
                    'y = -29 / -19.\n\n'
                    'y = 29 / 19.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (16 - 2(29 / 19)) / 3.\n\n'
                    'x = (16 - 58 / 19) / 3.\n\n'
                    'x = (304 / 19 - 58 / 19) / 3.\n\n'
                    'x = 246 / 19 / 3.\n\n'
                    'x = 246 / 57.\n\n'
                    'Final Answer: The solution to the system of equations is x = 246 / 57 and y = 29 / 19.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x + y = 5\n3x - 4y = 7.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for y:\n\n'
                    'y = 5 - 2x.\n\n'
                    'Step 2: Substitute the expression for y into Equation 2:\n\n'
                    '3x - 4(5 - 2x) = 7.\n\n'
                    'Step 3: Simplify and solve for x:\n\n'
                    '3x - 20 + 8x = 7.\n\n'
                    '11x - 20 = 7.\n\n'
                    '11x = 7 + 20.\n\n'
                    '11x = 27.\n\n'
                    'x = 27 / 11.\n\n'
                    'Step 4: Substitute the value of x into Equation 1 to find y:\n\n'
                    '2(27 / 11) + y = 5.\n\n'
                    '54 / 11 + y = 5.\n\n'
                    'y = 5 - 54 / 11.\n\n'
                    'y = (55 - 54) / 11.\n\n'
                    'y = 1 / 11.\n\n'
                    'Final Answer: The solution to the system of equations is x = 27 / 11 and y = 1 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x - 2y = 11\n5x + 4y = 17.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (11 + 2y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '5((11 + 2y) / 3) + 4y = 17.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(55 + 10y) / 3 + 4y = 17.\n\n'
                    '55 + 10y + 12y = 51.\n\n'
                    '22y = 51 - 55.\n\n'
                    '22y = -4.\n\n'
                    'y = -4 / 22.\n\n'
                    'y = -2 / 11.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (11 + 2(-2 / 11)) / 3.\n\n'
                    'x = (11 - 4 / 11) / 3.\n\n'
                    'x = (121 / 11 - 4 / 11) / 3.\n\n'
                    'x = 117 / 11 / 3.\n\n'
                    'x = 117 / 33.\n\n'
                    'x = 13 / 3.\n\n'
                    'Final Answer: The solution to the system of equations is x = 13 / 3 and y = -2 / 11.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x + 3y = 14\n2x - 5y = -1.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (5y - 1) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '4((5y - 1) / 2) + 3y = 14.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(20y - 4) / 2 + 3y = 14.\n\n'
                    '20y - 4 + 6y = 28.\n\n'
                    '26y = 32.\n\n'
                    'y = 32 / 26.\n\n'
                    'y = 16 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (5(16 / 13) - 1) / 2.\n\n'
                    'x = (80 / 13 - 1) / 2.\n\n'
                    'x = (80 / 13 - 13 / 13) / 2.\n\n'
                    'x = 67 / 13 / 2.\n\n'
                    'x = 67 / 26.\n\n'
                    'Final Answer: The solution to the system of equations is x = 67 / 26 and y = 16 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 4y = 20\n2x - 3y = 8.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 2 for x:\n\n'
                    'x = (3y + 8) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 1:\n\n'
                    '3((3y + 8) / 2) + 4y = 20.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(9y + 24) / 2 + 4y = 20.\n\n'
                    '9y + 24 + 8y = 40.\n\n'
                    '17y + 24 = 40.\n\n'
                    '17y = 16.\n\n'
                    'y = 16 / 17.\n\n'
                    'Step 4: Substitute the value of y into Equation 2 to find x:\n\n'
                    'x = (3(16 / 17) + 8) / 2.\n\n'
                    'x = (48 / 17 + 8) / 2.\n\n'
                    'x = (48 / 17 + 136 / 17) / 2.\n\n'
                    'x = 184 / 17 / 2.\n\n'
                    'x = 184 / 34.\n\n'
                    'x = 92 / 17.\n\n'
                    'Final Answer: The solution to the system of equations is x = 92 / 17 and y = 16 / 17.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n2x + 3y = 11\n3x - 2y = 4.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (11 - 3y) / 2.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '3((11 - 3y) / 2) - 2y = 4.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(33 - 9y) / 2 - 2y = 4.\n\n'
                    '33 - 9y - 4y = 8.\n\n'
                    '33 - 13y = 8.\n\n'
                    '-13y = 8 - 33.\n\n'
                    '-13y = -25.\n\n'
                    'y = -25 / -13.\n\n'
                    'y = 25 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (11 - 3(25 / 13)) / 2.\n\n'
                    'x = (11 - 75 / 13) / 2.\n\n'
                    'x = (143 / 13 - 75 / 13) / 2.\n\n'
                    'x = 68 / 13 / 2.\n\n'
                    'x = 68 / 26.\n\n'
                    'x = 34 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 34 / 13 and y = 25 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n4x - 3y = 10\n2x + 5y = 13.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (10 + 3y) / 4.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '2((10 + 3y) / 4) + 5y = 13.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(20 + 6y) / 4 + 5y = 13.\n\n'
                    '20 + 6y + 20y = 52.\n\n'
                    '26y = 32.\n\n'
                    'y = 32 / 26.\n\n'
                    'y = 16 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (10 + 3(16 / 13)) / 4.\n\n'
                    'x = (10 + 48 / 13) / 4.\n\n'
                    'x = (130 / 13 + 48 / 13) / 4.\n\n'
                    'x = 178 / 13 / 4.\n\n'
                    'x = 178 / 52.\n\n'
                    'x = 89 / 26.\n\n'
                    'Final Answer: The solution to the system of equations is x = 89 / 26 and y = 16 / 13.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Solve the system of equations:\n3x + 4y = 15\n5x - 2y = 11.',
                solution: 'Solution:\n\n'
                    'Step 1: Solve Equation 1 for x:\n\n'
                    'x = (15 - 4y) / 3.\n\n'
                    'Step 2: Substitute the expression for x into Equation 2:\n\n'
                    '5((15 - 4y) / 3) - 2y = 11.\n\n'
                    'Step 3: Simplify and solve for y:\n\n'
                    '(75 - 20y) / 3 - 2y = 11.\n\n'
                    '75 - 20y - 6y = 33.\n\n'
                    '75 - 26y = 33.\n\n'
                    '-26y = 33 - 75.\n\n'
                    '-26y = -42.\n\n'
                    'y = -42 / -26.\n\n'
                    'y = 21 / 13.\n\n'
                    'Step 4: Substitute the value of y into Equation 1 to find x:\n\n'
                    'x = (15 - 4(21 / 13)) / 3.\n\n'
                    'x = (15 - 84 / 13) / 3.\n\n'
                    'x = (195 / 13 - 84 / 13) / 3.\n\n'
                    'x = 111 / 13 / 3.\n\n'
                    'x = 111 / 39.\n\n'
                    'x = 37 / 13.\n\n'
                    'Final Answer: The solution to the system of equations is x = 37 / 13 and y = 21 / 13.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
