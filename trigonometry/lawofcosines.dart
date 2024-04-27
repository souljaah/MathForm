import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';


class LawofCosines extends StatelessWidget {
  final Color chosenColor;
  LawofCosines ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Law of Cosines'),
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
                'Law of Cosines',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'The Law of Cosines is a fundamental theorem in trigonometry that relates the lengths of the sides of a triangle to the cosine of one of its angles. It is used to solve triangles when either:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Two sides and the included angle are known.\n\n2. Three sides are known.\n\nMathematically, the Law of Cosines can be expressed as follows:\n\nIf a, b and c are the lengths of the sides of triangle, and A, B and C are the measures of the angles opposite to those sides, respectively, then:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. When two sides and the included angle are known:\n\nc^2 = a^2 + b^2 -2abcos(C)\n\n2. When three sides are known: cos(C) = a^2+b^2-c^2/2ab',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This law generalizes the Pythagorean theorem, which is a special case of the Law of Cosines when the angle C is a right angle (90 degrees).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: In triangle ABC, side a measures 5 units, side b measures 7 units, and angle C measures 60∘. Find the length of side c.\n\nSolution:\n\nStep 1: Identify the given values and what needs to be found.\n\nGiven:\n\nSide a = 5 units\n\nSide b = 7 units\n\nAngle C = 60∘',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nTo find:\n\nLength of side c\n\nStep 2: Apply the Law of Cosines.\n\nUsing the formula c^2 = a^2+b^2 -2abcos(C), we can plug in the given values:\n\nc^2 = 5^2 + 7^2 -2(5)(7) cos(60∘)\n\nStep 3: Calculate the cosine of 60∘.\n\nSince cos(60∘) = 1/2, we substitute it into the equation:\n\nc^2 = 5^2+7^2-2(5)(7)(1/2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Simplify and solve for c^2.\n\nc^2=25 + 49 -35 = 39\n\nStep 5: Take the square root to find the length of side c.\n\nc = √39\n\nStep 6: Finalize the solution.\n\nTherefore, the length of side c is √39units.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nIn triangle ABC, side a measures 8 units, side b measures 10 units, and angle C measures 45°. Find the length of side c.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side a = 8 units\n'
                    '- Side b = 10 units\n'
                    '- Angle C = 45°\n\n'
                    'To find:\n'
                    '- Length of side c\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula c^2 = a^2 + b^2 - 2ab * cos(C), we can plug in the given values:\n\n'
                    'c^2 = 8^2 + 10^2 - 2 * 8 * 10 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'c^2 = 64 + 100 - 2 * 8 * 10 * (sqrt(2)/2)\n'
                    'c^2 = 164 - 80 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for c:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'c = sqrt(164 - 80 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side c is approximately sqrt(164 - 80 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nIn triangle XYZ, side x measures 12 units, side y measures 15 units, and angle Z measures 30°. Find the length of side z.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side x = 12 units\n'
                    '- Side y = 15 units\n'
                    '- Angle Z = 30°\n\n'
                    'To find:\n'
                    '- Length of side z\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula z^2 = x^2 + y^2 - 2xy * cos(Z), we can plug in the given values:\n\n'
                    'z^2 = 12^2 + 15^2 - 2 * 12 * 15 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'z^2 = 144 + 225 - 2 * 12 * 15 * (sqrt(3)/2)\n'
                    'z^2 = 369 - 180 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for z:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'z = sqrt(369 - 180 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side z is approximately sqrt(369 - 180 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nIn triangle PQR, side p measures 5 units, side q measures 13 units, and angle R measures 60°. Find the length of side r.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side p = 5 units\n'
                    '- Side q = 13 units\n'
                    '- Angle R = 60°\n\n'
                    'To find:\n'
                    '- Length of side r\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula r^2 = p^2 + q^2 - 2pq * cos(R), we can plug in the given values:\n\n'
                    'r^2 = 5^2 + 13^2 - 2 * 5 * 13 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'r^2 = 25 + 169 - 2 * 5 * 13 * (1/2)\n'
                    'r^2 = 194 - 130\n'
                    'r^2 = 64\n\n'
                    'Step 4: Simplify and solve for r:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'r = sqrt(64)\n'
                    'r = 8\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side r is 8 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nIn triangle MNO, side m measures 7 units, side n measures 9 units, and angle O measures 120°. Find the length of side o.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side m = 7 units\n'
                    '- Side n = 9 units\n'
                    '- Angle O = 120°\n\n'
                    'To find:\n'
                    '- Length of side o\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula o^2 = m^2 + n^2 - 2mn * cos(O), we can plug in the given values:\n\n'
                    'o^2 = 7^2 + 9^2 - 2 * 7 * 9 * cos(120°)\n\n'
                    'Step 3: Calculate the cosine of 120°:\n\n'
                    'Since cos(120°) = -1/2, we substitute it into the equation:\n\n'
                    'o^2 = 49 + 81 - 2 * 7 * 9 * (-1/2)\n'
                    'o^2 = 130 + 63\n'
                    'o^2 = 193\n\n'
                    'Step 4: Simplify and solve for o:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'o = sqrt(193)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side o is approximately sqrt(193) units.\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nIn triangle XYZ, side x measures 6 units, side z measures 10 units, and angle Y measures 135°. Find the length of side y.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side x = 6 units\n'
                    '- Side z = 10 units\n'
                    '- Angle Y = 135°\n\n'
                    'To find:\n'
                    '- Length of side y\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula y^2 = x^2 + z^2 - 2xz * cos(Y), we can plug in the given values:\n\n'
                    'y^2 = 6^2 + 10^2 - 2 * 6 * 10 * cos(135°)\n\n'
                    'Step 3: Calculate the cosine of 135°:\n\n'
                    'Since cos(135°) = -sqrt(2)/2, we substitute it into the equation:\n\n'
                    'y^2 = 36 + 100 - 2 * 6 * 10 * (-sqrt(2)/2)\n'
                    'y^2 = 136 + 60 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for y:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'y = sqrt(136 + 60 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side y is approximately sqrt(136 + 60 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nIn triangle ABC, side a measures 8 units, side b measures 11 units, and angle C measures 45°. Find the length of side c.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side a = 8 units\n'
                    '- Side b = 11 units\n'
                    '- Angle C = 45°\n\n'
                    'To find:\n'
                    '- Length of side c\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula c^2 = a^2 + b^2 - 2ab * cos(C), we can plug in the given values:\n\n'
                    'c^2 = 8^2 + 11^2 - 2 * 8 * 11 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'c^2 = 64 + 121 - 2 * 8 * 11 * (sqrt(2)/2)\n'
                    'c^2 = 185 - 88 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for c:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'c = sqrt(185 - 88 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side c is approximately sqrt(185 - 88 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nIn triangle DEF, side d measures 5 units, side e measures 7 units, and angle F measures 60°. Find the length of side f.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side d = 5 units\n'
                    '- Side e = 7 units\n'
                    '- Angle F = 60°\n\n'
                    'To find:\n'
                    '- Length of side f\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula f^2 = d^2 + e^2 - 2de * cos(F), we can plug in the given values:\n\n'
                    'f^2 = 5^2 + 7^2 - 2 * 5 * 7 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'f^2 = 25 + 49 - 2 * 5 * 7 * (1/2)\n'
                    'f^2 = 74 - 35\n'
                    'f^2 = 39\n\n'
                    'Step 4: Simplify and solve for f:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'f = sqrt(39)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side f is sqrt(39) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nIn triangle GHI, side g measures 12 units, side h measures 9 units, and angle I measures 30°. Find the length of side i.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side g = 12 units\n'
                    '- Side h = 9 units\n'
                    '- Angle I = 30°\n\n'
                    'To find:\n'
                    '- Length of side i\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula i^2 = g^2 + h^2 - 2gh * cos(I), we can plug in the given values:\n\n'
                    'i^2 = 12^2 + 9^2 - 2 * 12 * 9 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'i^2 = 144 + 81 - 2 * 12 * 9 * (sqrt(3)/2)\n'
                    'i^2 = 225 - 108 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for i:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'i = sqrt(225 - 108 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side i is approximately sqrt(225 - 108 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nIn triangle JKL, side j measures 15 units, side k measures 20 units, and angle L measures 90°. Find the length of side l.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side j = 15 units\n'
                    '- Side k = 20 units\n'
                    '- Angle L = 90°\n\n'
                    'To find:\n'
                    '- Length of side l\n\n'
                    'Step 2: Apply the Pythagorean theorem:\n\n'
                    'Since angle L is a right angle, side l (the hypotenuse) can be found using the Pythagorean theorem:\n\n'
                    'l^2 = j^2 + k^2\n'
                    'l^2 = 15^2 + 20^2\n'
                    'l^2 = 225 + 400\n'
                    'l^2 = 625\n\n'
                    'Step 3: Simplify and solve for l:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'l = sqrt(625)\n'
                    'l = 25\n\n'
                    'Step 4: Finalize the solution:\n\n'
                    'Therefore, the length of side l is 25 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nIn triangle MNO, side m measures 9 units, side n measures 12 units, and angle O measures 120°. Find the length of side o.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side m = 9 units\n'
                    '- Side n = 12 units\n'
                    '- Angle O = 120°\n\n'
                    'To find:\n'
                    '- Length of side o\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula o^2 = m^2 + n^2 - 2mn * cos(O), we can plug in the given values:\n\n'
                    'o^2 = 9^2 + 12^2 - 2 * 9 * 12 * cos(120°)\n\n'
                    'Step 3: Calculate the cosine of 120°:\n\n'
                    'Since cos(120°) = -1/2, we substitute it into the equation:\n\n'
                    'o^2 = 81 + 144 - 2 * 9 * 12 * (-1/2)\n'
                    'o^2 = 225 + 108\n'
                    'o^2 = 333\n\n'
                    'Step 4: Simplify and solve for o:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'o = sqrt(333)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side o is approximately sqrt(333) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nIn triangle PQR, side p measures 10 units, side q measures 15 units, and angle R measures 135°. Find the length of side r.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side p = 10 units\n'
                    '- Side q = 15 units\n'
                    '- Angle R = 135°\n\n'
                    'To find:\n'
                    '- Length of side r\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula r^2 = p^2 + q^2 - 2pq * cos(R), we can plug in the given values:\n\n'
                    'r^2 = 10^2 + 15^2 - 2 * 10 * 15 * cos(135°)\n\n'
                    'Step 3: Calculate the cosine of 135°:\n\n'
                    'Since cos(135°) = -sqrt(2)/2, we substitute it into the equation:\n\n'
                    'r^2 = 100 + 225 - 2 * 10 * 15 * (-sqrt(2)/2)\n'
                    'r^2 = 325 + 300 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for r:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'r = sqrt(325 + 300 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side r is approximately sqrt(325 + 300 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nIn triangle STU, side s measures 7 units, side t measures 24 units, and angle U measures 60°. Find the length of side u.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side s = 7 units\n'
                    '- Side t = 24 units\n'
                    '- Angle U = 60°\n\n'
                    'To find:\n'
                    '- Length of side u\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula u^2 = s^2 + t^2 - 2st * cos(U), we can plug in the given values:\n\n'
                    'u^2 = 7^2 + 24^2 - 2 * 7 * 24 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'u^2 = 49 + 576 - 2 * 7 * 24 * (1/2)\n'
                    'u^2 = 625 - 168\n'
                    'u^2 = 457\n\n'
                    'Step 4: Simplify and solve for u:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'u = sqrt(457)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side u is approximately sqrt(457) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nIn triangle VWX, side v measures 10 units, side w measures 17 units, and angle X measures 30°. Find the length of side x.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side v = 10 units\n'
                    '- Side w = 17 units\n'
                    '- Angle X = 30°\n\n'
                    'To find:\n'
                    '- Length of side x\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula x^2 = v^2 + w^2 - 2vw * cos(X), we can plug in the given values:\n\n'
                    'x^2 = 10^2 + 17^2 - 2 * 10 * 17 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'x^2 = 100 + 289 - 2 * 10 * 17 * (sqrt(3)/2)\n'
                    'x^2 = 389 - 170 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for x:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'x = sqrt(389 - 170 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side x is approximately sqrt(389 - 170 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nIn triangle YZA, side y measures 8 units, side z measures 15 units, and angle A measures 45°. Find the length of side a.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side y = 8 units\n'
                    '- Side z = 15 units\n'
                    '- Angle A = 45°\n\n'
                    'To find:\n'
                    '- Length of side a\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula a^2 = y^2 + z^2 - 2yz * cos(A), we can plug in the given values:\n\n'
                    'a^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'a^2 = 64 + 225 - 2 * 8 * 15 * (sqrt(2)/2)\n'
                    'a^2 = 289 - 120 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for a:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'a = sqrt(289 - 120 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side a is approximately sqrt(289 - 120 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nIn triangle BCD, side b measures 7 units, side c measures 24 units, and angle D measures 60°. Find the length of side d.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side b = 7 units\n'
                    '- Side c = 24 units\n'
                    '- Angle D = 60°\n\n'
                    'To find:\n'
                    '- Length of side d\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula d^2 = b^2 + c^2 - 2bc * cos(D), we can plug in the given values:\n\n'
                    'd^2 = 7^2 + 24^2 - 2 * 7 * 24 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'd^2 = 49 + 576 - 2 * 7 * 24 * (1/2)\n'
                    'd^2 = 625 - 168\n'
                    'd^2 = 457\n\n'
                    'Step 4: Simplify and solve for d:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'd = sqrt(457)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side d is approximately sqrt(457) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nIn triangle EFG, side e measures 10 units, side f measures 17 units, and angle G measures 30°. Find the length of side g.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side e = 10 units\n'
                    '- Side f = 17 units\n'
                    '- Angle G = 30°\n\n'
                    'To find:\n'
                    '- Length of side g\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula g^2 = e^2 + f^2 - 2ef * cos(G), we can plug in the given values:\n\n'
                    'g^2 = 10^2 + 17^2 - 2 * 10 * 17 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'g^2 = 100 + 289 - 2 * 10 * 17 * (sqrt(3)/2)\n'
                    'g^2 = 389 - 170 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for g:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'g = sqrt(389 - 170 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side g is approximately sqrt(389 - 170 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nIn triangle HIJ, side h measures 8 units, side i measures 15 units, and angle J measures 120°. Find the length of side j.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side h = 8 units\n'
                    '- Side i = 15 units\n'
                    '- Angle J = 120°\n\n'
                    'To find:\n'
                    '- Length of side j\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula j^2 = h^2 + i^2 - 2hi * cos(J), we can plug in the given values:\n\n'
                    'j^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(120°)\n\n'
                    'Step 3: Calculate the cosine of 120°:\n\n'
                    'Since cos(120°) = -1/2, we substitute it into the equation:\n\n'
                    'j^2 = 64 + 225 - 2 * 8 * 15 * (-1/2)\n'
                    'j^2 = 289 + 120\n'
                    'j^2 = 409\n\n'
                    'Step 4: Simplify and solve for j:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'j = sqrt(409)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side j is approximately sqrt(409) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nIn triangle KLM, side k measures 9 units, side l measures 12 units, and angle M measures 45°. Find the length of side m.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side k = 9 units\n'
                    '- Side l = 12 units\n'
                    '- Angle M = 45°\n\n'
                    'To find:\n'
                    '- Length of side m\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula m^2 = k^2 + l^2 - 2kl * cos(M), we can plug in the given values:\n\n'
                    'm^2 = 9^2 + 12^2 - 2 * 9 * 12 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'm^2 = 81 + 144 - 2 * 9 * 12 * (sqrt(2)/2)\n'
                    'm^2 = 225 - 108\n'
                    'm^2 = 117\n\n'
                    'Step 4: Simplify and solve for m:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'm = sqrt(117)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side m is approximately sqrt(117) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nIn triangle NOP, side n measures 10 units, side o measures 17 units, and angle P measures 60°. Find the length of side p.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side n = 10 units\n'
                    '- Side o = 17 units\n'
                    '- Angle P = 60°\n\n'
                    'To find:\n'
                    '- Length of side p\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula p^2 = n^2 + o^2 - 2no * cos(P), we can plug in the given values:\n\n'
                    'p^2 = 10^2 + 17^2 - 2 * 10 * 17 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'p^2 = 100 + 289 - 2 * 10 * 17 * (1/2)\n'
                    'p^2 = 389 - 170\n'
                    'p^2 = 219\n\n'
                    'Step 4: Simplify and solve for p:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'p = sqrt(219)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side p is approximately sqrt(219) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nIn triangle QRS, side q measures 8 units, side r measures 15 units, and angle S measures 120°. Find the length of side s.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side q = 8 units\n'
                    '- Side r = 15 units\n'
                    '- Angle S = 120°\n\n'
                    'To find:\n'
                    '- Length of side s\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula s^2 = q^2 + r^2 - 2qr * cos(S), we can plug in the given values:\n\n'
                    's^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(120°)\n\n'
                    'Step 3: Calculate the cosine of 120°:\n\n'
                    'Since cos(120°) = -1/2, we substitute it into the equation:\n\n'
                    's^2 = 64 + 225 - 2 * 8 * 15 * (-1/2)\n'
                    's^2 = 289 + 120\n'
                    's^2 = 409\n\n'
                    'Step 4: Simplify and solve for s:\n\n'
                    'Taking the square root of both sides:\n\n'
                    's = sqrt(409)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side s is approximately sqrt(409) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nIn triangle TUV, side t measures 7 units, side u measures 24 units, and angle V measures 30°. Find the length of side v.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side t = 7 units\n'
                    '- Side u = 24 units\n'
                    '- Angle V = 30°\n\n'
                    'To find:\n'
                    '- Length of side v\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula v^2 = t^2 + u^2 - 2tu * cos(V), we can plug in the given values:\n\n'
                    'v^2 = 7^2 + 24^2 - 2 * 7 * 24 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'v^2 = 49 + 576 - 2 * 7 * 24 * (sqrt(3)/2)\n'
                    'v^2 = 625 - 168 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for v:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'v = sqrt(625 - 168 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side v is approximately sqrt(625 - 168 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nIn triangle WXY, side w measures 5 units, side x measures 12 units, and angle Y measures 45°. Find the length of side y.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side w = 5 units\n'
                    '- Side x = 12 units\n'
                    '- Angle Y = 45°\n\n'
                    'To find:\n'
                    '- Length of side y\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula y^2 = w^2 + x^2 - 2wx * cos(Y), we can plug in the given values:\n\n'
                    'y^2 = 5^2 + 12^2 - 2 * 5 * 12 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'y^2 = 25 + 144 - 2 * 5 * 12 * (sqrt(2)/2)\n'
                    'y^2 = 169 - 60 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for y:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'y = sqrt(169 - 60 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side y is approximately sqrt(169 - 60 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nIn triangle XYZ, side x measures 8 units, side y measures 17 units, and angle Z measures 60°. Find the length of side z.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side x = 8 units\n'
                    '- Side y = 17 units\n'
                    '- Angle Z = 60°\n\n'
                    'To find:\n'
                    '- Length of side z\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula z^2 = x^2 + y^2 - 2xy * cos(Z), we can plug in the given values:\n\n'
                    'z^2 = 8^2 + 17^2 - 2 * 8 * 17 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'z^2 = 64 + 289 - 2 * 8 * 17 * (1/2)\n'
                    'z^2 = 353 - 136\n'
                    'z^2 = 217\n\n'
                    'Step 4: Simplify and solve for z:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'z = sqrt(217)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side z is approximately sqrt(217) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nIn triangle ABC, side a measures 9 units, side b measures 12 units, and angle C measures 30°. Find the length of side c.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side a = 9 units\n'
                    '- Side b = 12 units\n'
                    '- Angle C = 30°\n\n'
                    'To find:\n'
                    '- Length of side c\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula c^2 = a^2 + b^2 - 2ab * cos(C), we can plug in the given values:\n\n'
                    'c^2 = 9^2 + 12^2 - 2 * 9 * 12 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'c^2 = 81 + 144 - 2 * 9 * 12 * (sqrt(3)/2)\n'
                    'c^2 = 225 - 108 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for c:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'c = sqrt(225 - 108 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side c is approximately sqrt(225 - 108 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nIn triangle DEF, side d measures 10 units, side e measures 15 units, and angle F measures 45°. Find the length of side f.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side d = 10 units\n'
                    '- Side e = 15 units\n'
                    '- Angle F = 45°\n\n'
                    'To find:\n'
                    '- Length of side f\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula f^2 = d^2 + e^2 - 2de * cos(F), we can plug in the given values:\n\n'
                    'f^2 = 10^2 + 15^2 - 2 * 10 * 15 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'f^2 = 100 + 225 - 2 * 10 * 15 * (sqrt(2)/2)\n'
                    'f^2 = 325 - 150 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for f:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'f = sqrt(325 - 150 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side f is approximately sqrt(325 - 150 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nIn triangle GHI, side g measures 7 units, side h measures 24 units, and angle I measures 60°. Find the length of side i.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side g = 7 units\n'
                    '- Side h = 24 units\n'
                    '- Angle I = 60°\n\n'
                    'To find:\n'
                    '- Length of side i\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula i^2 = g^2 + h^2 - 2gh * cos(I), we can plug in the given values:\n\n'
                    'i^2 = 7^2 + 24^2 - 2 * 7 * 24 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'i^2 = 49 + 576 - 2 * 7 * 24 * (1/2)\n'
                    'i^2 = 625 - 168\n'
                    'i^2 = 457\n\n'
                    'Step 4: Simplify and solve for i:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'i = sqrt(457)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side i is approximately sqrt(457) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nIn triangle JKL, side j measures 8 units, side k measures 15 units, and angle L measures 45°. Find the length of side l.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side j = 8 units\n'
                    '- Side k = 15 units\n'
                    '- Angle L = 45°\n\n'
                    'To find:\n'
                    '- Length of side l\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula l^2 = j^2 + k^2 - 2jk * cos(L), we can plug in the given values:\n\n'
                    'l^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'l^2 = 64 + 225 - 2 * 8 * 15 * (sqrt(2)/2)\n'
                    'l^2 = 289 - 120\n'
                    'l^2 = 169\n\n'
                    'Step 4: Simplify and solve for l:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'l = sqrt(169)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side l is approximately sqrt(169) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nIn triangle MNO, side m measures 6 units, side n measures 13 units, and angle O measures 60°. Find the length of side o.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side m = 6 units\n'
                    '- Side n = 13 units\n'
                    '- Angle O = 60°\n\n'
                    'To find:\n'
                    '- Length of side o\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula o^2 = m^2 + n^2 - 2mn * cos(O), we can plug in the given values:\n\n'
                    'o^2 = 6^2 + 13^2 - 2 * 6 * 13 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'o^2 = 36 + 169 - 2 * 6 * 13 * (1/2)\n'
                    'o^2 = 205 - 78\n'
                    'o^2 = 127\n\n'
                    'Step 4: Simplify and solve for o:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'o = sqrt(127)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side o is approximately sqrt(127) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nIn triangle PQR, side p measures 7 units, side q measures 10 units, and angle R measures 45°. Find the length of side r.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side p = 7 units\n'
                    '- Side q = 10 units\n'
                    '- Angle R = 45°\n\n'
                    'To find:\n'
                    '- Length of side r\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula r^2 = p^2 + q^2 - 2pq * cos(R), we can plug in the given values:\n\n'
                    'r^2 = 7^2 + 10^2 - 2 * 7 * 10 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'r^2 = 49 + 100 - 2 * 7 * 10 * (sqrt(2)/2)\n'
                    'r^2 = 149 - 70 * sqrt(2)\n\n'
                    'Step 4: Simplify and solve for r:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'r = sqrt(149 - 70 * sqrt(2))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side r is approximately sqrt(149 - 70 * sqrt(2)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nIn triangle STU, side s measures 9 units, side t measures 12 units, and angle U measures 30°. Find the length of side u.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side s = 9 units\n'
                    '- Side t = 12 units\n'
                    '- Angle U = 30°\n\n'
                    'To find:\n'
                    '- Length of side u\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula u^2 = s^2 + t^2 - 2st * cos(U), we can plug in the given values:\n\n'
                    'u^2 = 9^2 + 12^2 - 2 * 9 * 12 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'u^2 = 81 + 144 - 2 * 9 * 12 * (sqrt(3)/2)\n'
                    'u^2 = 225 - 108 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for u:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'u = sqrt(225 - 108 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side u is approximately sqrt(225 - 108 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nIn triangle VWX, side v measures 10 units, side w measures 24 units, and angle X measures 60°. Find the length of side x.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side v = 10 units\n'
                    '- Side w = 24 units\n'
                    '- Angle X = 60°\n\n'
                    'To find:\n'
                    '- Length of side x\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula x^2 = v^2 + w^2 - 2vw * cos(X), we can plug in the given values:\n\n'
                    'x^2 = 10^2 + 24^2 - 2 * 10 * 24 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'x^2 = 100 + 576 - 2 * 10 * 24 * (1/2)\n'
                    'x^2 = 676 - 240\n'
                    'x^2 = 436\n\n'
                    'Step 4: Simplify and solve for x:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'x = sqrt(436)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side x is approximately sqrt(436) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nIn triangle YZA, side y measures 8 units, side z measures 15 units, and angle A measures 45°. Find the length of side a.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side y = 8 units\n'
                    '- Side z = 15 units\n'
                    '- Angle A = 45°\n\n'
                    'To find:\n'
                    '- Length of side a\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula a^2 = y^2 + z^2 - 2yz * cos(A), we can plug in the given values:\n\n'
                    'a^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'a^2 = 64 + 225 - 2 * 8 * 15 * (sqrt(2)/2)\n'
                    'a^2 = 289 - 120\n'
                    'a^2 = 169\n\n'
                    'Step 4: Simplify and solve for a:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'a = sqrt(169)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side a is approximately sqrt(169) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nIn triangle BCD, side b measures 7 units, side c measures 10 units, and angle D measures 30°. Find the length of side d.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side b = 7 units\n'
                    '- Side c = 10 units\n'
                    '- Angle D = 30°\n\n'
                    'To find:\n'
                    '- Length of side d\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula d^2 = b^2 + c^2 - 2bc * cos(D), we can plug in the given values:\n\n'
                    'd^2 = 7^2 + 10^2 - 2 * 7 * 10 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'd^2 = 49 + 100 - 2 * 7 * 10 * (sqrt(3)/2)\n'
                    'd^2 = 149 - 70 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for d:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'd = sqrt(149 - 70 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side d is approximately sqrt(149 - 70 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nIn triangle EFG, side e measures 6 units, side f measures 8 units, and angle G measures 45°. Find the length of side g.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side e = 6 units\n'
                    '- Side f = 8 units\n'
                    '- Angle G = 45°\n\n'
                    'To find:\n'
                    '- Length of side g\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula g^2 = e^2 + f^2 - 2ef * cos(G), we can plug in the given values:\n\n'
                    'g^2 = 6^2 + 8^2 - 2 * 6 * 8 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'g^2 = 36 + 64 - 2 * 6 * 8 * (sqrt(2)/2)\n'
                    'g^2 = 100 - 48\n'
                    'g^2 = 52\n\n'
                    'Step 4: Simplify and solve for g:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'g = sqrt(52)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side g is approximately sqrt(52) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nIn triangle HIJ, side h measures 10 units, side i measures 13 units, and angle J measures 60°. Find the length of side j.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side h = 10 units\n'
                    '- Side i = 13 units\n'
                    '- Angle J = 60°\n\n'
                    'To find:\n'
                    '- Length of side j\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula j^2 = h^2 + i^2 - 2hi * cos(J), we can plug in the given values:\n\n'
                    'j^2 = 10^2 + 13^2 - 2 * 10 * 13 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'j^2 = 100 + 169 - 2 * 10 * 13 * (1/2)\n'
                    'j^2 = 269 - 130\n'
                    'j^2 = 139\n\n'
                    'Step 4: Simplify and solve for j:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'j = sqrt(139)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side j is approximately sqrt(139) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nIn triangle KLM, side k measures 5 units, side l measures 12 units, and angle M measures 45°. Find the length of side m.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side k = 5 units\n'
                    '- Side l = 12 units\n'
                    '- Angle M = 45°\n\n'
                    'To find:\n'
                    '- Length of side m\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula m^2 = k^2 + l^2 - 2kl * cos(M), we can plug in the given values:\n\n'
                    'm^2 = 5^2 + 12^2 - 2 * 5 * 12 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'm^2 = 25 + 144 - 2 * 5 * 12 * (sqrt(2)/2)\n'
                    'm^2 = 169 - 120\n'
                    'm^2 = 49\n\n'
                    'Step 4: Simplify and solve for m:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'm = sqrt(49)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side m is 7 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nIn triangle NOP, side n measures 8 units, side o measures 15 units, and angle P measures 30°. Find the length of side p.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side n = 8 units\n'
                    '- Side o = 15 units\n'
                    '- Angle P = 30°\n\n'
                    'To find:\n'
                    '- Length of side p\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula p^2 = n^2 + o^2 - 2no * cos(P), we can plug in the given values:\n\n'
                    'p^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'p^2 = 64 + 225 - 2 * 8 * 15 * (sqrt(3)/2)\n'
                    'p^2 = 289 - 120\n'
                    'p^2 = 169\n\n'
                    'Step 4: Simplify and solve for p:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'p = sqrt(169)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side p is approximately sqrt(169) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nIn triangle QRS, side q measures 9 units, side r measures 12 units, and angle S measures 60°. Find the length of side s.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side q = 9 units\n'
                    '- Side r = 12 units\n'
                    '- Angle S = 60°\n\n'
                    'To find:\n'
                    '- Length of side s\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula s^2 = q^2 + r^2 - 2qr * cos(S), we can plug in the given values:\n\n'
                    's^2 = 9^2 + 12^2 - 2 * 9 * 12 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    's^2 = 81 + 144 - 2 * 9 * 12 * (1/2)\n'
                    's^2 = 225 - 108\n'
                    's^2 = 117\n\n'
                    'Step 4: Simplify and solve for s:\n\n'
                    'Taking the square root of both sides:\n\n'
                    's = sqrt(117)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side s is approximately sqrt(117) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nIn triangle TUV, side t measures 7 units, side u measures 24 units, and angle V measures 45°. Find the length of side v.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side t = 7 units\n'
                    '- Side u = 24 units\n'
                    '- Angle V = 45°\n\n'
                    'To find:\n'
                    '- Length of side v\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula v^2 = t^2 + u^2 - 2tu * cos(V), we can plug in the given values:\n\n'
                    'v^2 = 7^2 + 24^2 - 2 * 7 * 24 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'v^2 = 49 + 576 - 2 * 7 * 24 * (sqrt(2)/2)\n'
                    'v^2 = 625 - 168\n'
                    'v^2 = 457\n\n'
                    'Step 4: Simplify and solve for v:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'v = sqrt(457)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side v is approximately sqrt(457) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nIn triangle WXY, side w measures 8 units, side x measures 15 units, and angle Y measures 30°. Find the length of side y.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side w = 8 units\n'
                    '- Side x = 15 units\n'
                    '- Angle Y = 30°\n\n'
                    'To find:\n'
                    '- Length of side y\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula y^2 = w^2 + x^2 - 2wx * cos(Y), we can plug in the given values:\n\n'
                    'y^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'y^2 = 64 + 225 - 2 * 8 * 15 * (sqrt(3)/2)\n'
                    'y^2 = 289 - 120\n'
                    'y^2 = 169\n\n'
                    'Step 4: Simplify and solve for y:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'y = sqrt(169)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side y is approximately sqrt(169) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nIn triangle XYZ, side x measures 10 units, side z measures 8 units, and angle Y measures 60°. Find the length of side y.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side x = 10 units\n'
                    '- Side z = 8 units\n'
                    '- Angle Y = 60°\n\n'
                    'To find:\n'
                    '- Length of side y\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula y^2 = x^2 + z^2 - 2xz * cos(Y), we can plug in the given values:\n\n'
                    'y^2 = 10^2 + 8^2 - 2 * 10 * 8 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'y^2 = 100 + 64 - 2 * 10 * 8 * (1/2)\n'
                    'y^2 = 164 - 80\n'
                    'y^2 = 84\n\n'
                    'Step 4: Simplify and solve for y:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'y = sqrt(84)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side y is approximately sqrt(84) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nIn triangle ABC, side a measures 5 units, side b measures 9 units, and angle C measures 45°. Find the length of side c.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side a = 5 units\n'
                    '- Side b = 9 units\n'
                    '- Angle C = 45°\n\n'
                    'To find:\n'
                    '- Length of side c\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula c^2 = a^2 + b^2 - 2ab * cos(C), we can plug in the given values:\n\n'
                    'c^2 = 5^2 + 9^2 - 2 * 5 * 9 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'c^2 = 25 + 81 - 2 * 5 * 9 * (sqrt(2)/2)\n'
                    'c^2 = 106 - 90\n'
                    'c^2 = 16\n\n'
                    'Step 4: Simplify and solve for c:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'c = sqrt(16)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side c is 4 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nIn triangle DEF, side d measures 12 units, side e measures 15 units, and angle F measures 30°. Find the length of side f.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side d = 12 units\n'
                    '- Side e = 15 units\n'
                    '- Angle F = 30°\n\n'
                    'To find:\n'
                    '- Length of side f\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula f^2 = d^2 + e^2 - 2de * cos(F), we can plug in the given values:\n\n'
                    'f^2 = 12^2 + 15^2 - 2 * 12 * 15 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'f^2 = 144 + 225 - 2 * 12 * 15 * (sqrt(3)/2)\n'
                    'f^2 = 369 - 180\n'
                    'f^2 = 189\n\n'
                    'Step 4: Simplify and solve for f:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'f = sqrt(189)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side f is approximately sqrt(189) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nIn triangle GHI, side g measures 10 units, side h measures 8 units, and angle I measures 45°. Find the length of side i.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side g = 10 units\n'
                    '- Side h = 8 units\n'
                    '- Angle I = 45°\n\n'
                    'To find:\n'
                    '- Length of side i\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula i^2 = g^2 + h^2 - 2gh * cos(I), we can plug in the given values:\n\n'
                    'i^2 = 10^2 + 8^2 - 2 * 10 * 8 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'i^2 = 100 + 64 - 2 * 10 * 8 * (sqrt(2)/2)\n'
                    'i^2 = 164 - 80\n'
                    'i^2 = 84\n\n'
                    'Step 4: Simplify and solve for i:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'i = sqrt(84)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side i is approximately sqrt(84) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nIn triangle JKL, side j measures 15 units, side k measures 9 units, and angle L measures 60°. Find the length of side l.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side j = 15 units\n'
                    '- Side k = 9 units\n'
                    '- Angle L = 60°\n\n'
                    'To find:\n'
                    '- Length of side l\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula l^2 = j^2 + k^2 - 2jk * cos(L), we can plug in the given values:\n\n'
                    'l^2 = 15^2 + 9^2 - 2 * 15 * 9 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'l^2 = 225 + 81 - 2 * 15 * 9 * (1/2)\n'
                    'l^2 = 306 - 135\n'
                    'l^2 = 171\n\n'
                    'Step 4: Simplify and solve for l:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'l = sqrt(171)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side l is approximately sqrt(171) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nIn triangle MNO, side m measures 7 units, side n measures 10 units, and angle O measures 30°. Find the length of side o.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side m = 7 units\n'
                    '- Side n = 10 units\n'
                    '- Angle O = 30°\n\n'
                    'To find:\n'
                    '- Length of side o\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula o^2 = m^2 + n^2 - 2mn * cos(O), we can plug in the given values:\n\n'
                    'o^2 = 7^2 + 10^2 - 2 * 7 * 10 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'o^2 = 49 + 100 - 2 * 7 * 10 * (sqrt(3)/2)\n'
                    'o^2 = 149 - 70 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for o:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'o = sqrt(149 - 70 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side o is approximately sqrt(149 - 70 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nIn triangle PQR, side p measures 12 units, side q measures 9 units, and angle R measures 45°. Find the length of side r.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side p = 12 units\n'
                    '- Side q = 9 units\n'
                    '- Angle R = 45°\n\n'
                    'To find:\n'
                    '- Length of side r\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula r^2 = p^2 + q^2 - 2pq * cos(R), we can plug in the given values:\n\n'
                    'r^2 = 12^2 + 9^2 - 2 * 12 * 9 * cos(45°)\n\n'
                    'Step 3: Calculate the cosine of 45°:\n\n'
                    'Since cos(45°) = sqrt(2)/2, we substitute it into the equation:\n\n'
                    'r^2 = 144 + 81 - 2 * 12 * 9 * (sqrt(2)/2)\n'
                    'r^2 = 225 - 108\n'
                    'r^2 = 117\n\n'
                    'Step 4: Simplify and solve for r:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'r = sqrt(117)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side r is approximately sqrt(117) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nIn triangle STU, side s measures 8 units, side t measures 15 units, and angle U measures 60°. Find the length of side u.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side s = 8 units\n'
                    '- Side t = 15 units\n'
                    '- Angle U = 60°\n\n'
                    'To find:\n'
                    '- Length of side u\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula u^2 = s^2 + t^2 - 2st * cos(U), we can plug in the given values:\n\n'
                    'u^2 = 8^2 + 15^2 - 2 * 8 * 15 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'u^2 = 64 + 225 - 2 * 8 * 15 * (1/2)\n'
                    'u^2 = 289 - 120\n'
                    'u^2 = 169\n\n'
                    'Step 4: Simplify and solve for u:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'u = sqrt(169)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side u is approximately sqrt(169) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nIn triangle VWX, side v measures 6 units, side w measures 8 units, and angle X measures 30°. Find the length of side x.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side v = 6 units\n'
                    '- Side w = 8 units\n'
                    '- Angle X = 30°\n\n'
                    'To find:\n'
                    '- Length of side x\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula x^2 = v^2 + w^2 - 2vw * cos(X), we can plug in the given values:\n\n'
                    'x^2 = 6^2 + 8^2 - 2 * 6 * 8 * cos(30°)\n\n'
                    'Step 3: Calculate the cosine of 30°:\n\n'
                    'Since cos(30°) = sqrt(3)/2, we substitute it into the equation:\n\n'
                    'x^2 = 36 + 64 - 2 * 6 * 8 * (sqrt(3)/2)\n'
                    'x^2 = 100 - 48 * sqrt(3)\n\n'
                    'Step 4: Simplify and solve for x:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'x = sqrt(100 - 48 * sqrt(3))\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side x is approximately sqrt(100 - 48 * sqrt(3)) units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nIn triangle YZA, side y measures 10 units, side z measures 12 units, and angle A measures 60°. Find the length of side a.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Side y = 10 units\n'
                    '- Side z = 12 units\n'
                    '- Angle A = 60°\n\n'
                    'To find:\n'
                    '- Length of side a\n\n'
                    'Step 2: Apply the Law of Cosines:\n\n'
                    'Using the formula a^2 = y^2 + z^2 - 2yz * cos(A), we can plug in the given values:\n\n'
                    'a^2 = 10^2 + 12^2 - 2 * 10 * 12 * cos(60°)\n\n'
                    'Step 3: Calculate the cosine of 60°:\n\n'
                    'Since cos(60°) = 1/2, we substitute it into the equation:\n\n'
                    'a^2 = 100 + 144 - 2 * 10 * 12 * (1/2)\n'
                    'a^2 = 244 - 120\n'
                    'a^2 = 124\n\n'
                    'Step 4: Simplify and solve for a:\n\n'
                    'Taking the square root of both sides:\n\n'
                    'a = sqrt(124)\n\n'
                    'Step 5: Finalize the solution:\n\n'
                    'Therefore, the length of side a is approximately sqrt(124) units.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
