import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class TrigoFunction extends StatelessWidget {
  final Color chosenColor;
  TrigoFunction ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trigometric Function'),
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
                'Trigometric Function',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Trigonometric functions are mathematical functions that relate the angles of a right triangle to the lengths of its sides. These functions are fundamental in trigonometry, a branch of mathematics concerned with the relationships between angles and the lengths of sides in triangles.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'The six basic trigonometric functions are:\n\n1. Sine (sin): Defined as the ratio of the length of the side opposite the angle to the length of the hypotenuse in a right triangle.\n\nsin(θ) = opposite/hypotenuse',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Cosine (cos): Defined as the ratio of the length of the adjacent side to the length of the hypotenuse in a right triangle.\n\ncos(θ) = adjacent/hypotenuse\n\n3. Tangent (tan): Defined as the ratio of the length of the side opposite the angle to the length of the adjacent side in a right triangle.\n\ntan(θ) = opposite/adjacent',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Cosecant (csc): The reciprocal of sine.\n\ncsc(θ) = 1/sin(θ)\n\n5. Secant (sec): The reciprocal of cosine.\n\nsec(θ) = 1/cos(θ)\n\n6. Cotangent (cot): The reciprocal of tangent.\n\ncot(θ) = 1/tan(θ)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Find the values of sin(30°), cos(30°), and tan(30°).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Given angle: θ = 30°\n\nStep 2:Identify the right triangle: We`ll construct a right triangle with one angle of 30°.\n\nStep 3:Label the sides: Let`s label the sides of the triangle as follows:\n\nThe side opposite the angle (30°) will be the "opposite" side.\n\nThe side adjacent to the angle will be the "adjacent" side.\n\nThe longest side (the one opposite the right angle) will be the "hypotenuse" side.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Determine the lengths of the sides: We need to determine the lengths of the sides of the triangle. Since this is a special triangle (a 30-60-90 triangle), we can use trigonometric ratios. For a 30-60-90 triangle:\n\nThe side opposite the 30° angle is half the length of the hypotenuse.\n\nThe side opposite the 60° angle is √3 times the length of the side opposite the 30° angle.\n\nLet`s assume the hypotenuse is of length 2 (which is arbitrary, but it simplifies calculations). So, the lengths of the sides are:\n\nOpposite side (opposite 30°) = 1\n\nAdjacent side = √3 (since it`s opposite the 60° angle)\n\nHypotenuse = 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 5: Calculate trigonometric functions:\n\nSine (sin): sin(30°) = Opposite / Hypotenuse = 1 / 2\n\nCosine (cos): cos(30°) = Adjacent / Hypotenuse = √3 / 2\n\nTangent (tan): tan(30°) = Opposite / Adjacent = (1 / √3) = √3 / 3\n\n So, the values are:\n\n\nsin(30°) = 1/2\n\ncos(30°) = √3 / 2\n\ntan(30°) = √3 / 3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nFind the value of sin(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(45°) = opposite/hypotenuse.\n\n'
                    'Step 3: Determine the lengths of the sides:\n\n'
                    'Let\'s construct a right triangle with angles of 45°, 45°, and 90°. '
                    'Assuming both legs are of length 1 unit, we get:\n\n'
                    'sin(45°) = 1/√2 = √2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nFind the value of cos(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(60°) = adjacent/hypotenuse.\n\n'
                    'Step 3: Determine the lengths of the sides:\n\n'
                    'Let\'s construct a right triangle with angles of 60°, 30°, and 90°. '
                    'Assuming the hypotenuse is of length 2 units, and the side opposite the 60° angle is 1 unit, '
                    'we get:\n\n'
                    'cos(60°) = 1/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nFind the value of tan(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(30°) = opposite/adjacent.\n\n'
                    'Step 3: Determine the lengths of the sides:\n\n'
                    'Let\'s construct a right triangle with angles of 30°, 60°, and 90°. '
                    'Assuming the side opposite the 30° angle is 1 unit and the side opposite the 60° angle is √3 units, '
                    'we get:\n\n'
                    'tan(30°) = 1/√3 = √3/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nFind the value of sec(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(30°) = 1/cos(30°).\n\n'
                    'Step 3: Determine the value of cos(30°):\n\n'
                    'cos(30°) = 1/2.\n\n'
                    'Step 4: Calculate sec(30°):\n\n'
                    'sec(30°) = 1/cos(30°) = 1/(1/2) = 2.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nFind the value of cot(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(45°) = 1/tan(45°).\n\n'
                    'Step 3: Determine the value of tan(45°):\n\n'
                    'tan(45°) = 1.\n\n'
                    'Step 4: Calculate cot(45°):\n\n'
                    'cot(45°) = 1/tan(45°) = 1/1 = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nFind the value of sin(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(60°) = √3/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nFind the value of cos(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(30°) = √3/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nFind the value of tan(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(45°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nFind the value of cot(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(30°) = √3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nFind the value of sec(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(60°) = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nFind the value of csc(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(30°) = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nFind the value of sin(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(45°) = 1/√2 = √2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nFind the value of cos(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(60°) = 1/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nFind the value of tan(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(30°) = 1/√3 = √3/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nFind the value of cot(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(60°) = √3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nFind the value of sec(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(45°) = √2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nFind the value of csc(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(60°) = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nFind the value of sin(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(30°) = 1/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nFind the value of cos(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(45°) = √2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nFind the value of tan(60°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 60°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(60°) = √3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nFind the value of cot(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(45°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nFind the value of sec(30°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 30°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(30°) = 2/√3 = 2√3/3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nFind the value of csc(45°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 45°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(45°) = √2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nFind the value of sin(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(135°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nFind the value of cos(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(135°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nFind the value of tan(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(135°) = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nFind the value of cot(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(135°) = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nFind the value of sec(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(135°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nFind the value of csc(135°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 135°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(135°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nFind the value of sin(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(225°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nFind the value of cos(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(225°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nFind the value of tan(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(225°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nFind the value of cot(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(225°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nFind the value of sec(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(225°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nFind the value of csc(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(225°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nFind the value of sin(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(315°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nFind the value of cos(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(315°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nFind the value of tan(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(315°) = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nFind the value of cot(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(315°) = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nFind the value of sec(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(315°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nFind the value of csc(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(315°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nFind the value of sin(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(225°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nFind the value of cos(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(225°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nFind the value of tan(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(225°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nFind the value of cot(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cotangent function:\n\n'
                    'cot(225°) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nFind the value of sec(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the secant function:\n\n'
                    'sec(225°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nFind the value of csc(225°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 225°.\n\n'
                    'Step 2: Use the cosecant function:\n\n'
                    'csc(225°) = -√2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nFind the value of sin(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the sine function:\n\n'
                    'sin(315°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nFind the value of cos(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the cosine function:\n\n'
                    'cos(315°) = -√2/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nFind the value of tan(315°).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the angle:\n\n'
                    'θ = 315°.\n\n'
                    'Step 2: Use the tangent function:\n\n'
                    'tan(315°) = -1.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
