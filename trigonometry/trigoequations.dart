import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class TrigoEquations extends StatelessWidget {
  final Color chosenColor;
  TrigoEquations ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trigometric Equations'),
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
                'Trigometric Equations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Trigonometric equations are mathematical equations involving trigonometric functions such as sine, cosine, tangent, cotangent, secant, and cosecant. These equations typically involve finding values of angles that satisfy certain conditions or constraints.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Trigonometric equations can be categorized into various types, including:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. Linear Trigonometric Equations: These equations involve trigonometric functions of a single angle and can be solved by applying algebraic techniques.\n\n2. Quadratic Trigonometric Equations: Equations where the trigonometric function is squared or raised to a power. They often require factoring or other methods to solve.\n\n3. Trigonometric Equations with Identities: Equations where trigonometric identities are used to simplify or transform the equation into a more manageable form.\n\n4. Inverse Trigonometric Equations: Equations where the inverse trigonometric functions, such as arcsine, arccosine, and arctangent, are involved. These equations require finding the values of angles given the trigonometric function values.\n\n5. Parametric Trigonometric Equations: Equations where the variables are expressed in terms of a parameter using trigonometric functions.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Solve the equation sin(x) = 1/2 for 0∘ ≤ x ≤ 360∘.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Identify the angle whose sine is 1/2.\n\nWe know that sin(30∘) = 1/2,, so one solution is x =30∘.\n\nStep 2: Determine additional solutions by considering the periodic nature of sine function.\n\nThe sine function repearts its values every 360∘. Therefore, additional solutions can be found by adding multiples of 360∘ to the initial solution.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nx = 30∘ + 360∘ x n, where n is an integer.\n\nStep 3: List down all solutions within the specified interval.\n\nx=30∘\n\nx=30∘ + 360∘ x 1 =390∘ (We add 360∘ once)\n\nSince 390∘ > 360∘, we don`t need to add 360∘ again.\n\nStep 4: Finalize the solutions within the given interval.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nWithin 0∘≤x ≤ 360∘, the solutions are x =30∘ and x = 390∘.\n\nSo, the solutions to the equation sin(x) =1/2 within the interval 0∘≤x ≤ 360∘ are x =30∘ and x = 390∘',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nSolve the equation: sin(x) = 0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle whose sine is 0.5:\n\n'
                    'sin(x) = 0.5\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°\n\n'
                    'Step 4: Apply the periodicity of sine function to find additional solutions:\n\n'
                    'Since sine function repeats every 360°, additional solutions are found by adding multiples of 360° to the reference angle.\n\n'
                    'x = 30° + 360° * n, where n is an integer.\n\n'
                    'Step 5: List down all solutions within the specified interval:\n\n'
                    'x = 30°, 210°\n\n'
                    'Step 6: Finalize the solutions within the given interval:\n\n'
                    'Within 0° ≤ x ≤ 360°, the solutions are x = 30° and x = 210°.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nSolve the equation: cos(x) = √3/2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle whose cosine is √3/2:\n\n'
                    'cos(x) = √3/2\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(√3/2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°\n\n'
                    'Step 4: Apply the periodicity of cosine function to find additional solutions:\n\n'
                    'Since cosine function repeats every 360°, additional solutions are found by adding multiples of 360° to the reference angle.\n\n'
                    'x = 30° + 360° * n, where n is an integer.\n\n'
                    'Step 5: List down all solutions within the specified interval:\n\n'
                    'x = 30°, 330°\n\n'
                    'Step 6: Finalize the solutions within the given interval:\n\n'
                    'Within 0° ≤ x ≤ 360°, the solutions are x = 30° and x = 330°.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nSolve the equation: tan(x) = 1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle whose tangent is 1:\n\n'
                    'tan(x) = 1\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 45°\n\n'
                    'Step 4: Apply the periodicity of tangent function to find additional solutions:\n\n'
                    'Since tangent function repeats every 180°, additional solutions are found by adding multiples of 180° to the reference angle.\n\n'
                    'x = 45° + 180° * n, where n is an integer.\n\n'
                    'Step 5: List down all solutions within the specified interval:\n\n'
                    'x = 45°, 225°\n\n'
                    'Step 6: Finalize the solutions within the given interval:\n\n'
                    'Within 0° ≤ x ≤ 360°, the solutions are x = 45° and x = 225°.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nSolve the equation: csc(x) = 2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle whose cosecant is 2:\n\n'
                    'csc(x) = 2\n\n'
                    'Step 2: Determine the reference angle using inverse cosecant function:\n\n'
                    'x = arccsc(2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°\n\n'
                    'Step 4: Apply the periodicity of cosecant function to find additional solutions:\n\n'
                    'Since cosecant function repeats every 360°, additional solutions are found by adding multiples of 360° to the reference angle.\n\n'
                    'x = 30° + 360° * n, where n is an integer.\n\n'
                    'Step 5: List down all solutions within the specified interval:\n\n'
                    'x = 30°, 150°\n\n'
                    'Step 6: Finalize the solutions within the given interval:\n\n'
                    'Within 0° ≤ x ≤ 360°, the solutions are x = 30° and x = 150°.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nSolve the equation: sec(x) = -2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle whose secant is -2:\n\n'
                    'sec(x) = -2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nSolve the equation: cos(x) = 0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is 0.5:\n\n'
                    'cos(x) = 0.5\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is positive in the first and fourth quadrants, the solutions within the given interval are x = 60° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nSolve the equation: sin(x) = -0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is -0.866:\n\n'
                    'sin(x) = -0.866\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(-0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = -60°, 240°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is negative in the third and fourth quadrants, the solutions within the given interval are x = 240°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nSolve the equation: tan(x) = 1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is 1:\n\n'
                    'tan(x) = 1\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 45°, 225°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is positive in the first and third quadrants, the solutions within the given interval are x = 45° and x = 225°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nSolve the equation: cot(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is -1:\n\n'
                    'cot(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 135° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nSolve the equation: sec(x) = -1.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -1.5:\n\n'
                    'sec(x) = -1.5\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-1.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nSolve the equation: cos(x) = -0.707 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is -0.707:\n\n'
                    'cos(x) = -0.707\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(-0.707)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 225°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is negative in the second and third quadrants, the solutions within the given interval are x = 135° and x = 225°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nSolve the equation: sin(x) = 0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is 0.5:\n\n'
                    'sin(x) = 0.5\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 150°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is positive in the first and second quadrants, the solutions within the given interval are x = 30° and x = 150°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nSolve the equation: tan(x) = -1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is -1.732:\n\n'
                    'tan(x) = -1.732\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(-1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 150°, 330°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 150° and x = 330°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nSolve the equation: cot(x) = 2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is 2:\n\n'
                    'cot(x) = 2\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 26.565°, 206.565°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is positive in the first and third quadrants, the solutions within the given interval are x = 26.565° and x = 206.565°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nSolve the equation: sec(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -1:\n\n'
                    'sec(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 180°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since secant is negative in the second quadrant, the solution within the given interval is x = 180°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nSolve the equation: cos(x) = -0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is -0.866:\n\n'
                    'cos(x) = -0.866\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(-0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 150°, 210°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is negative in the second and third quadrants, the solutions within the given interval are x = 150° and x = 210°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nSolve the equation: sin(x) = 0.707 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is 0.707:\n\n'
                    'sin(x) = 0.707\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.707)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 45°, 135°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is positive in the first and second quadrants, the solutions within the given interval are x = 45° and x = 135°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nSolve the equation: tan(x) = 0.577 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is 0.577:\n\n'
                    'tan(x) = 0.577\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(0.577)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 150°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is positive in the first and third quadrants, the solutions within the given interval are x = 30° and x = 150°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nSolve the equation: cot(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is -1:\n\n'
                    'cot(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 135° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nSolve the equation: sec(x) = -2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -2:\n\n'
                    'sec(x) = -2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nSolve the equation: cos(x) = -0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is -0.5:\n\n'
                    'cos(x) = -0.5\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(-0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 120°, 240°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is negative in the second and third quadrants, the solutions within the given interval are x = 120° and x = 240°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nSolve the equation: sin(x) = 0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is 0.866:\n\n'
                    'sin(x) = 0.866\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 120°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is positive in the first and second quadrants, the solutions within the given interval are x = 60° and x = 120°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nSolve the equation: tan(x) = -0.577 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is -0.577:\n\n'
                    'tan(x) = -0.577\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(-0.577)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 150°, 330°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 150° and x = 330°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nSolve the equation: cot(x) = 1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is 1.732:\n\n'
                    'cot(x) = 1.732\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 210°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is positive in the first and third quadrants, the solutions within the given interval are x = 30° and x = 210°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nSolve the equation: sec(x) = 2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is 2:\n\n'
                    'sec(x) = 2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since secant is positive in the first and fourth quadrants, the solutions within the given interval are x = 60° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nSolve the equation: cos(x) = 0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is 0.5:\n\n'
                    'cos(x) = 0.5\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is positive in the first and fourth quadrants, the solutions within the given interval are x = 60° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nSolve the equation: sin(x) = -0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is -0.866:\n\n'
                    'sin(x) = -0.866\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(-0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 240°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is negative in the third and fourth quadrants, the solutions within the given interval are x = 240° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nSolve the equation: tan(x) = 1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is 1.732:\n\n'
                    'tan(x) = 1.732\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 240°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is positive in the first and third quadrants, the solutions within the given interval are x = 60° and x = 240°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nSolve the equation: cot(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is -1:\n\n'
                    'cot(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 135° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nSolve the equation: sec(x) = -2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -2:\n\n'
                    'sec(x) = -2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nSolve the equation: cos(x) = -0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is -0.5:\n\n'
                    'cos(x) = -0.5\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(-0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 120°, 240°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is negative in the second and third quadrants, the solutions within the given interval are x = 120° and x = 240°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nSolve the equation: sin(x) = 0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is 0.866:\n\n'
                    'sin(x) = 0.866\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 120°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is positive in the first and second quadrants, the solutions within the given interval are x = 60° and x = 120°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nSolve the equation: tan(x) = -0.577 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is -0.577:\n\n'
                    'tan(x) = -0.577\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(-0.577)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 150°, 330°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 150° and x = 330°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nSolve the equation: cot(x) = 1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is 1.732:\n\n'
                    'cot(x) = 1.732\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 210°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is positive in the first and third quadrants, the solutions within the given interval are x = 30° and x = 210°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nSolve the equation: sec(x) = 2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is 2:\n\n'
                    'sec(x) = 2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since secant is positive in the first and fourth quadrants, the solutions within the given interval are x = 60° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nSolve the equation: cos(x) = 0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is 0.5:\n\n'
                    'cos(x) = 0.5\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is positive in the first and fourth quadrants, the solutions within the given interval are x = 60° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nSolve the equation: sin(x) = -0.866 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is -0.866:\n\n'
                    'sin(x) = -0.866\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(-0.866)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 240°, 300°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is negative in the third and fourth quadrants, the solutions within the given interval are x = 240° and x = 300°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nSolve the equation: tan(x) = 1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is 1.732:\n\n'
                    'tan(x) = 1.732\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 60°, 240°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is positive in the first and third quadrants, the solutions within the given interval are x = 60° and x = 240°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nSolve the equation: cot(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is -1:\n\n'
                    'cot(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 135° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nSolve the equation: sec(x) = -2 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -2:\n\n'
                    'sec(x) = -2\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-2)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nSolve the equation: cos(x) = -0.707 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is -0.707:\n\n'
                    'cos(x) = -0.707\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(-0.707)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 225°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is negative in the second and third quadrants, the solutions within the given interval are x = 135° and x = 225°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nSolve the equation: sin(x) = -0.5 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is -0.5:\n\n'
                    'sin(x) = -0.5\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(-0.5)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 210°, 330°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is negative in the third and fourth quadrants, the solutions within the given interval are x = 210° and x = 330°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nSolve the equation: tan(x) = -1 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is -1:\n\n'
                    'tan(x) = -1\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(-1)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 135°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 135° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nSolve the equation: cot(x) = 0.577 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is 0.577:\n\n'
                    'cot(x) = 0.577\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(0.577)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 210°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is positive in the first and third quadrants, the solutions within the given interval are x = 30° and x = 210°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nSolve the equation: sec(x) = -1.414 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is -1.414:\n\n'
                    'sec(x) = -1.414\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(-1.414)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nSolve the equation: cos(x) = 0.707 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cosine is 0.707:\n\n'
                    'cos(x) = 0.707\n\n'
                    'Step 2: Determine the reference angle using inverse cosine function:\n\n'
                    'x = arccos(0.707)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 45°, 315°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cosine is positive in the first and fourth quadrants, the solutions within the given interval are x = 45° and x = 315°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nSolve the equation: sin(x) = 0.707 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose sine is 0.707:\n\n'
                    'sin(x) = 0.707\n\n'
                    'Step 2: Determine the reference angle using inverse sine function:\n\n'
                    'x = arcsin(0.707)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 45°, 135°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since sine is positive in the first and second quadrants, the solutions within the given interval are x = 45° and x = 135°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nSolve the equation: tan(x) = 0.577 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose tangent is 0.577:\n\n'
                    'tan(x) = 0.577\n\n'
                    'Step 2: Determine the reference angle using inverse tangent function:\n\n'
                    'x = arctan(0.577)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 30°, 210°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since tangent is positive in the first and third quadrants, the solutions within the given interval are x = 30° and x = 210°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nSolve the equation: cot(x) = -1.732 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose cotangent is -1.732:\n\n'
                    'cot(x) = -1.732\n\n'
                    'Step 2: Determine the reference angle using inverse cotangent function:\n\n'
                    'x = arccot(-1.732)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'x = 150°, 330°\n\n'
                    'Step 4: Generalize the solution within the given interval:\n\n'
                    'Since cotangent is negative in the second and fourth quadrants, the solutions within the given interval are x = 150° and x = 330°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nSolve the equation: sec(x) = 1.414 for 0° ≤ x ≤ 360°',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angles whose secant is 1.414:\n\n'
                    'sec(x) = 1.414\n\n'
                    'Step 2: Determine the reference angle using inverse secant function:\n\n'
                    'x = arcsec(1.414)\n\n'
                    'Step 3: Calculate the reference angle:\n\n'
                    'Reference angle is not in the range of values for arcsecant function (-90° < x < 90°), so there is no solution within the given interval.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
