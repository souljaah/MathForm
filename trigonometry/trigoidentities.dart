import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class TrigoIdentities extends StatelessWidget {
  final Color chosenColor;
  TrigoIdentities ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trigometric Identities'),
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
                'Trigometric Identities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Trigonometric identities are equations involving trigonometric functions that are true for all values of the variables within their respective domains. These identities are fundamental in trigonometry and are used to simplify expressions, solve equations, and prove other mathematical statements.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Some common trigonometric identities include:\n\n1. Pythagorean identities:\n\nsin^2(x)+cos^2(x)=1\n\n1+tan^2(x) = sec^2(x)\n\n1+cot^2(x) = csc^2(x)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Reciprocal identities:\n\ncsc(x) = 1/sin(x)\n\nsec(x) = 1/cos(x)\n\ncot(x) = 1/tan(x)\n\n3. Quotient identities:\n\ntan(x) = sin(x)/cos(x)\n\ncot(x) = cos(x)/sin(x)\n\n4. Co-function identities:\n\nsin(π/2 -x) = cos(x)\n\n cos(π/2 -x) = sin(x)\n\ntan(π/2 -x) = cot(x)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '5. Even-odd identities:\n\nsin(-x) = -sin(x)\n\ncost(-x) = cos(x)\n\ntan(-x)= -tan(x)\n\n6. Angle sum and difference identities:\n\nsin(x±y) = sin(x) cos(y) ± cos(x) sin(y)\n\ncos(x±y) = cos(x) cos (y) ∓ sin (x) sin (y)\n\ntan(x±y)= tan(x)±tan(y)/1∓tan(x)tan(y)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Given that sin(x) = 3/5, find the value of cos(x).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: We know that sin^2(x) + cos^2(x) = 1 from the Phythagorean Identity.\n\nStep 2: Substitute sin(x) = 3/5 into the identity:\n\n (3/5)^2 + cos^2(x) =1\n\nStep 3: Simplify:\n\n9/25+cos^2(x)=1\n\nStep 4: Subtract 9/25 from both sides to isolate cos^2(x):\n\ncos^2(x) =1 -9/25\n\nStep 5: Perform the subtraction:\n\ncos^2(x) =25/25- 9/25=16/25',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 6: Take the square root of both sides to solve for cos(x), considering both positive and negative solutions since cosine can be positive or negative depending on the quadrant:\n\ncos(x) = ±√16/25\n\nStep 7: Simplify the square root: cos(x) = ±4/5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSo, the possible values for cos(x) are 4/5 or -4/5, depending on which quadrant x lies in.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nProve the identity: sin(-x) = -sin(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Use the definition of sine for negative angles:\n\n'
                    'sin(-x) = -sin(x)\n\n'
                    'Step 2: Apply the symmetry of the unit circle:\n\n'
                    'A negative angle has the same reference angle as its positive counterpart but in the opposite direction.\n\n'
                    'Thus, the sine values will have opposite signs.\n\n'
                    'Hence, we\'ve proved the identity: sin(-x) = -sin(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nProve the identity: cos(-x) = cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Use the definition of cosine for negative angles:\n\n'
                    'cos(-x) = cos(x)\n\n'
                    'Step 2: Apply the symmetry of the unit circle:\n\n'
                    'A negative angle has the same reference angle as its positive counterpart but in the opposite direction.\n\n'
                    'Thus, the cosine values will be the same.\n\n'
                    'Hence, we\'ve proved the identity: cos(-x) = cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nProve the identity: tan(-x) = -tan(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Use the definition of tangent for negative angles:\n\n'
                    'tan(-x) = -tan(x)\n\n'
                    'Step 2: Apply the symmetry of the unit circle:\n\n'
                    'A negative angle has the same reference angle as its positive counterpart but in the opposite direction.\n\n'
                    'Thus, the tangent values will have opposite signs.\n\n'
                    'Hence, we\'ve proved the identity: tan(-x) = -tan(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nProve the identity: csc(-x) = -csc(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Use the reciprocal relationship between sine and cosecant:\n\n'
                    'csc(x) = 1/sin(x)\n\n'
                    'Step 2: Apply the identity proved in Problem 1:\n\n'
                    'csc(-x) = 1/sin(-x) = 1/(-sin(x)) = -1/sin(x) = -csc(x)\n\n'
                    'Hence, we\'ve proved the identity: csc(-x) = -csc(x).',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nProve the identity: sec(-x) = sec(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Use the reciprocal relationship between cosine and secant:\n\n'
                    'sec(x) = 1/cos(x)\n\n'
                    'Step 2: Apply the identity proved in Problem 2:\n\n'
                    'sec(-x) = 1/cos(-x) = 1/cos(x) = sec(x)\n\n'
                    'Hence, we\'ve proved the identity: sec(-x) = sec(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nProve the identity: (1 - sin(x)) / cos(x) = cos(x) / (1 + sin(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    '(1 - sin(x)) / cos(x)\n\n'
                    'Step 2: Use the reciprocal identity for cosine:\n\n'
                    '= (1 - sin(x)) * sec(x)\n\n'
                    'Step 3: Multiply the numerator and denominator by (1 + sin(x)):\n\n'
                    '= (1 - sin(x)) * sec(x) * (1 + sin(x)) / (1 + sin(x))\n\n'
                    'Step 4: Apply the Pythagorean identity to the numerator:\n\n'
                    '= [(1 - sin(x)) * (1 + sin(x))] / (1 + sin(x))\n\n'
                    'Step 5: Simplify the numerator:\n\n'
                    '= (1 - sin²(x)) / (1 + sin(x))\n\n'
                    'Step 6: Apply the Pythagorean identity again:\n\n'
                    '= cos²(x) / (1 + sin(x))\n\n'
                    'Step 7: Use the reciprocal identity for cosine:\n\n'
                    '= cos(x) / (1 + sin(x))\n\n'
                    'Step 8: Hence, we have proved the identity: (1 - sin(x)) / cos(x) = cos(x) / (1 + sin(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nProve the identity: (sin(x) + cos(x))² = 1 + 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    '(sin(x) + cos(x))²\n\n'
                    'Step 2: Expand the expression:\n\n'
                    '= sin²(x) + 2sin(x)cos(x) + cos²(x)\n\n'
                    'Step 3: Apply the Pythagorean identity:\n\n'
                    '= 1 + 2sin(x)cos(x)\n\n'
                    'Step 4: Hence, we have proved the identity: (sin(x) + cos(x))² = 1 + 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nProve the identity: (1 + tan(x)) / (1 - tan(x)) = (1 + sin(x)) / (1 - sin(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    '(1 + tan(x)) / (1 - tan(x))\n\n'
                    'Step 2: Use the tangent identity:\n\n'
                    '= (1 + sin(x) / cos(x)) / (1 - sin(x) / cos(x))\n\n'
                    'Step 3: Multiply the numerator and denominator by cos(x):\n\n'
                    '= (cos(x) + sin(x)) / (cos(x) - sin(x))\n\n'
                    'Step 4: Apply the Pythagorean identity:\n\n'
                    '= (1 + sin(x)) / (1 - sin(x))\n\n'
                    'Step 5: Hence, we have proved the identity: (1 + tan(x)) / (1 - tan(x)) = (1 + sin(x)) / (1 - sin(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nProve the identity: tan(x) * cot(x) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(x) * cot(x)\n\n'
                    'Step 2: Use the tangent and cotangent identities:\n\n'
                    '= (sin(x) / cos(x)) * (cos(x) / sin(x))\n\n'
                    'Step 3: Simplify the expression:\n\n'
                    '= sin(x) / sin(x) * cos(x) / cos(x)\n\n'
                    '= 1.\n\n'
                    'Step 4: Hence, we have proved the identity: tan(x) * cot(x) = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nProve the identity: sin(θ/2) = ±√((1 - cos(θ))/2).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(θ/2)\n\n'
                    'Step 2: Use the half-angle identity for sine:\n\n'
                    '= ±√((1 - cos(θ))/2).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(θ/2) = ±√((1 - cos(θ))/2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nProve the identity: cos(θ/2) = ±√((1 + cos(θ))/2).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(θ/2)\n\n'
                    'Step 2: Use the half-angle identity for cosine:\n\n'
                    '= ±√((1 + cos(θ))/2).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(θ/2) = ±√((1 + cos(θ))/2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nProve the identity: tan(θ/2) = ±√((1 - cos(θ)) / (1 + cos(θ))).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(θ/2)\n\n'
                    'Step 2: Use the half-angle identity for tangent:\n\n'
                    '= ±√((1 - cos(θ)) / (1 + cos(θ))).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(θ/2) = ±√((1 - cos(θ)) / (1 + cos(θ))).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nProve the identity: sin²(x) - cos²(x) = sin(2x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin²(x) - cos²(x)\n\n'
                    'Step 2: Use the Pythagorean identity:\n\n'
                    '= (1 - cos(2x)) / 2.\n\n'
                    'Step 3: Hence, we have proved the identity: sin²(x) - cos²(x) = sin(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nProve the identity: cos²(x) - sin²(x) = -cos(2x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos²(x) - sin²(x)\n\n'
                    'Step 2: Use the Pythagorean identity:\n\n'
                    '= (cos(2x) - 1) / 2.\n\n'
                    'Step 3: Hence, we have proved the identity: cos²(x) - sin²(x) = -cos(2x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nProve the identity: sin(3x) = 3sin(x) - 4sin³(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(3x)\n\n'
                    'Step 2: Use the angle addition formula for sine:\n\n'
                    '= sin(2x + x)\n'
                    '= sin(2x)cos(x) + cos(2x)sin(x)\n\n'
                    'Step 3: Use the double-angle identities:\n\n'
                    '= (2sin(x)cos(x))(cos(x)) + (1 - 2sin²(x))(sin(x))\n\n'
                    'Step 4: Expand and simplify:\n\n'
                    '= 2sin(x)cos²(x) + sin(x) - 2sin³(x)\n'
                    '= 2sin(x)(1 - sin²(x)) + sin(x) - 2sin³(x)\n'
                    '= 2sin(x) - 2sin³(x) + sin(x) - 2sin³(x)\n'
                    '= 3sin(x) - 4sin³(x).\n\n'
                    'Step 5: Hence, we have proved the identity: sin(3x) = 3sin(x) - 4sin³(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nProve the identity: cos(3x) = 4cos³(x) - 3cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(3x)\n\n'
                    'Step 2: Use the angle addition formula for cosine:\n\n'
                    '= cos(2x + x)\n'
                    '= cos(2x)cos(x) - sin(2x)sin(x)\n\n'
                    'Step 3: Use the double-angle identities:\n\n'
                    '= (2cos²(x) - 1)cos(x) - 2sin(x)cos(x)\n\n'
                    'Step 4: Expand and simplify:\n\n'
                    '= 2cos³(x) - cos(x) - 2sin(x)cos(x)\n'
                    '= 2cos³(x) - cos(x) - sin(2x)\n'
                    '= 2cos³(x) - cos(x) - 2sin(x)cos(x)\n'
                    '= 3cos(x) - 4cos³(x).\n\n'
                    'Step 5: Hence, we have proved the identity: cos(3x) = 4cos³(x) - 3cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nProve the identity: sin(x) + cos(x) = √2sin(x + π/4).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(x) + cos(x)\n\n'
                    'Step 2: Use the sum-to-product identities:\n\n'
                    '= 2sin((x + π/4)/2)cos((x - π/4)/2)\n\n'
                    'Step 3: Simplify:\n\n'
                    '= √2sin(x + π/4).\n\n'
                    'Step 4: Hence, we have proved the identity: sin(x) + cos(x) = √2sin(x + π/4).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nProve the identity: sin(x) - cos(x) = √2sin(x - π/4).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(x) - cos(x)\n\n'
                    'Step 2: Use the difference-to-product identities:\n\n'
                    '= -2sin((x - π/4)/2)sin((x + π/4)/2)\n\n'
                    'Step 3: Simplify:\n\n'
                    '= -√2sin(x - π/4).\n\n'
                    'Step 4: Hence, we have proved the identity: sin(x) - cos(x) = √2sin(x - π/4).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nProve the identity: cos(x) - sin(x) = √2cos(x + π/4).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(x) - sin(x)\n\n'
                    'Step 2: Use the difference-to-product identities:\n\n'
                    '= 2sin((x + π/4)/2)cos((x - π/4)/2)\n\n'
                    'Step 3: Simplify:\n\n'
                    '= √2cos(x + π/4).\n\n'
                    'Step 4: Hence, we have proved the identity: cos(x) - sin(x) = √2cos(x + π/4).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nProve the identity: cos(x) + sin(x) = √2sin(x + π/4).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(x) + sin(x)\n\n'
                    'Step 2: Use the sum-to-product identities:\n\n'
                    '= 2sin((x + π/4)/2)cos((x - π/4)/2)\n\n'
                    'Step 3: Simplify:\n\n'
                    '= √2sin(x + π/4).\n\n'
                    'Step 4: Hence, we have proved the identity: cos(x) + sin(x) = √2sin(x + π/4).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nProve the identity: cos(2x) = 1 - 2sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x)\n\n'
                    'Step 3: Apply the Pythagorean identity:\n\n'
                    '= 1 - sin²(x) - sin²(x)\n\n'
                    'Step 4: Simplify:\n\n'
                    '= 1 - 2sin²(x).\n\n'
                    'Step 5: Hence, we have proved the identity: cos(2x) = 1 - 2sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nProve the identity: cos(2x) = 2cos²(x) - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x)\n\n'
                    'Step 3: Apply the Pythagorean identity:\n\n'
                    '= cos²(x) - (1 - cos²(x))\n\n'
                    'Step 4: Simplify:\n\n'
                    '= 2cos²(x) - 1.\n\n'
                    'Step 5: Hence, we have proved the identity: cos(2x) = 2cos²(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nProve the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(2x)\n\n'
                    'Step 2: Use the double-angle identity for tangent:\n\n'
                    '= (2tan(x)) / (1 - tan²(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nProve the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cot(2x)\n\n'
                    'Step 2: Use the double-angle identity for cotangent:\n\n'
                    '= (cot²(x) - 1) / (2cot(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nProve the identity: sin(2x) = 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(2x)\n\n'
                    'Step 2: Use the double-angle identity for sine:\n\n'
                    '= 2sin(x)cos(x).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(2x) = 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nProve the identity: cos(2x) = cos²(x) - sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = cos²(x) - sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nProve the identity: cos(2x) = 1 - 2sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 1 - 2sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 1 - 2sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nProve the identity: cos(2x) = 2cos²(x) - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 2cos²(x) - 1.\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 2cos²(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nProve the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(2x)\n\n'
                    'Step 2: Use the double-angle identity for tangent:\n\n'
                    '= (2tan(x)) / (1 - tan²(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nProve the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cot(2x)\n\n'
                    'Step 2: Use the double-angle identity for cotangent:\n\n'
                    '= (cot²(x) - 1) / (2cot(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nProve the identity: sin(2x) = 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(2x)\n\n'
                    'Step 2: Use the double-angle identity for sine:\n\n'
                    '= 2sin(x)cos(x).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(2x) = 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nProve the identity: cos(2x) = cos²(x) - sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = cos²(x) - sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nProve the identity: cos(2x) = 1 - 2sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 1 - 2sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 1 - 2sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nProve the identity: cos(2x) = 2cos²(x) - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 2cos²(x) - 1.\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 2cos²(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nProve the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(2x)\n\n'
                    'Step 2: Use the double-angle identity for tangent:\n\n'
                    '= (2tan(x)) / (1 - tan²(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nProve the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cot(2x)\n\n'
                    'Step 2: Use the double-angle identity for cotangent:\n\n'
                    '= (cot²(x) - 1) / (2cot(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nProve the identity: sin(2x) = 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(2x)\n\n'
                    'Step 2: Use the double-angle identity for sine:\n\n'
                    '= 2sin(x)cos(x).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(2x) = 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nProve the identity: cos(2x) = cos²(x) - sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = cos²(x) - sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nProve the identity: cos(2x) = 1 - 2sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 1 - 2sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 1 - 2sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nProve the identity: cos(2x) = 2cos²(x) - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 2cos²(x) - 1.\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 2cos²(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nProve the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(2x)\n\n'
                    'Step 2: Use the double-angle identity for tangent:\n\n'
                    '= (2tan(x)) / (1 - tan²(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nProve the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cot(2x)\n\n'
                    'Step 2: Use the double-angle identity for cotangent:\n\n'
                    '= (cot²(x) - 1) / (2cot(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nProve the identity: sin(2x) = 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(2x)\n\n'
                    'Step 2: Use the double-angle identity for sine:\n\n'
                    '= 2sin(x)cos(x).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(2x) = 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nProve the identity: cos(2x) = cos²(x) - sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = cos²(x) - sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nProve the identity: cos(2x) = 1 - 2sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 1 - 2sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 1 - 2sin²(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nProve the identity: cos(2x) = 2cos²(x) - 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= 2cos²(x) - 1.\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = 2cos²(x) - 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nProve the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'tan(2x)\n\n'
                    'Step 2: Use the double-angle identity for tangent:\n\n'
                    '= (2tan(x)) / (1 - tan²(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: tan(2x) = (2tan(x)) / (1 - tan²(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nProve the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cot(2x)\n\n'
                    'Step 2: Use the double-angle identity for cotangent:\n\n'
                    '= (cot²(x) - 1) / (2cot(x)).\n\n'
                    'Step 3: Hence, we have proved the identity: cot(2x) = (cot²(x) - 1) / (2cot(x)).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nProve the identity: sin(2x) = 2sin(x)cos(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'sin(2x)\n\n'
                    'Step 2: Use the double-angle identity for sine:\n\n'
                    '= 2sin(x)cos(x).\n\n'
                    'Step 3: Hence, we have proved the identity: sin(2x) = 2sin(x)cos(x).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nProve the identity: cos(2x) = cos²(x) - sin²(x).',
                solution: 'Solution:\n\n'
                    'Step 1: Start with the left side of the equation:\n\n'
                    'cos(2x)\n\n'
                    'Step 2: Use the double-angle identity for cosine:\n\n'
                    '= cos²(x) - sin²(x).\n\n'
                    'Step 3: Hence, we have proved the identity: cos(2x) = cos²(x) - sin²(x).',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
