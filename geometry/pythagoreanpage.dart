import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Pythagorean extends StatelessWidget {
  final Color chosenColor;
  Pythagorean ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pythagorean Theorem'),
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
                'Pythagorean Theorem',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'The Pythagorean Theorem is a fundamental principle in geometry that describes the relationship between the sides of a right triangle. It states that in a right triangle, the square of the length of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the lengths of the other two sides.\n\n\nMathematically, the Pythagorean Theorem can be expressed as:\n\nc^2 = a^2 + b^2\n\nWhere:\n\nc is the length of the hypotenuse.\n\na and b are the lengths of the other two sides (legs) of the right triangle.\n\nThis theorem is named after the ancient Greek mathematician Pythagoras, who is credited with its discovery, although evidence suggests that it was known to the Babylonians even earlier.\n\n\nThe Pythagorean Theorem has numerous applications in geometry, trigonometry, and various fields of science and engineering. It is used to solve problems involving right triangles, such as finding missing side lengths or determining whether a triangle is a right triangle.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 3 units and the other leg measures 4 units. Find the length of the hypotenuse.\n\n'
                    'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 3 units\n'
                    '- Length of the other leg (b) = 4 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 3^2 + 4^2\n'
                    'c^2 = 9 + 16\n'
                    'c^2 = 25\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √25\n'
                    'c = 5\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 5 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 6 units and the other leg measures 8 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 6 units\n'
                    '- Length of the other leg (b) = 8 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 6^2 + 8^2\n'
                    'c^2 = 36 + 64\n'
                    'c^2 = 100\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √100\n'
                    'c = 10\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 10 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 9 units and the hypotenuse measures 15 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 9 units\n'
                    '- Length of the hypotenuse (c) = 15 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '9^2 + b^2 = 15^2\n'
                    '81 + b^2 = 225\n'
                    'b^2 = 225 - 81\n'
                    'b^2 = 144\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √144\n'
                    'b = 12\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 12 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 7 units and the other leg measures 24 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 7 units\n'
                    '- Length of the other leg (b) = 24 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 7^2 + 24^2\n'
                    'c^2 = 49 + 576\n'
                    'c^2 = 625\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √625\n'
                    'c = 25\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 25 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 10 units and the hypotenuse measures 26 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 10 units\n'
                    '- Length of the hypotenuse (c) = 26 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '10^2 + b^2 = 26^2\n'
                    '100 + b^2 = 676\n'
                    'b^2 = 676 - 100\n'
                    'b^2 = 576\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √576\n'
                    'b = 24\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 24 units.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 15 units and the other leg measures 20 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 15 units\n'
                    '- Length of the other leg (b) = 20 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 15^2 + 20^2\n'
                    'c^2 = 225 + 400\n'
                    'c^2 = 625\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √625\n'
                    'c = 25\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 25 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 5 units and the other leg measures 12 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 5 units\n'
                    '- Length of the other leg (b) = 12 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 5^2 + 12^2\n'
                    'c^2 = 25 + 144\n'
                    'c^2 = 169\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √169\n'
                    'c = 13\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 13 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 8 units and the hypotenuse measures 17 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 8 units\n'
                    '- Length of the hypotenuse (c) = 17 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '8^2 + b^2 = 17^2\n'
                    '64 + b^2 = 289\n'
                    'b^2 = 289 - 64\n'
                    'b^2 = 225\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √225\n'
                    'b = 15\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 15 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 10 units and the other leg measures 24 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 10 units\n'
                    '- Length of the other leg (b) = 24 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 10^2 + 24^2\n'
                    'c^2 = 100 + 576\n'
                    'c^2 = 676\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √676\n'
                    'c = 26\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 26 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 13 units and the hypotenuse measures 15 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 13 units\n'
                    '- Length of the hypotenuse (c) = 15 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '13^2 + b^2 = 15^2\n'
                    '169 + b^2 = 225\n'
                    'b^2 = 225 - 169\n'
                    'b^2 = 56\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √56\n'
                    'b ≈ 7.48\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 7.48 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 18 units and the other leg measures 24 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 18 units\n'
                    '- Length of the other leg (b) = 24 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 18^2 + 24^2\n'
                    'c^2 = 324 + 576\n'
                    'c^2 = 900\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √900\n'
                    'c = 30\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 30 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 9 units and the hypotenuse measures 41 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 9 units\n'
                    '- Length of the hypotenuse (c) = 41 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '9^2 + b^2 = 41^2\n'
                    '81 + b^2 = 1681\n'
                    'b^2 = 1681 - 81\n'
                    'b^2 = 1600\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √1600\n'
                    'b = 40\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 40 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 7 units and the other leg measures 24 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 7 units\n'
                    '- Length of the other leg (b) = 24 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 7^2 + 24^2\n'
                    'c^2 = 49 + 576\n'
                    'c^2 = 625\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √625\n'
                    'c = 25\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 25 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 15 units and the other leg measures 36 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 15 units\n'
                    '- Length of the other leg (b) = 36 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 15^2 + 36^2\n'
                    'c^2 = 225 + 1296\n'
                    'c^2 = 1521\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √1521\n'
                    'c = 39\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 39 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 20 units and the other leg measures 21 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 20 units\n'
                    '- Length of the other leg (b) = 21 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 20^2 + 21^2\n'
                    'c^2 = 400 + 441\n'
                    'c^2 = 841\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √841\n'
                    'c = 29\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 29 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 17 units and the hypotenuse measures 25 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 17 units\n'
                    '- Length of the hypotenuse (c) = 25 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '17^2 + b^2 = 25^2\n'
                    '289 + b^2 = 625\n'
                    'b^2 = 625 - 289\n'
                    'b^2 = 336\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √336\n'
                    'b ≈ 18.33\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 18.33 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 16 units and the hypotenuse measures 40 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 16 units\n'
                    '- Length of the hypotenuse (c) = 40 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '16^2 + b^2 = 40^2\n'
                    '256 + b^2 = 1600\n'
                    'b^2 = 1600 - 256\n'
                    'b^2 = 1344\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √1344\n'
                    'b ≈ 36.65\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 36.65 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 30 units and the hypotenuse measures 50 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 30 units\n'
                    '- Length of the hypotenuse (c) = 50 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '30^2 + b^2 = 50^2\n'
                    '900 + b^2 = 2500\n'
                    'b^2 = 2500 - 900\n'
                    'b^2 = 1600\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √1600\n'
                    'b = 40\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 40 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 13 units and the other leg measures 84 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 13 units\n'
                    '- Length of the other leg (b) = 84 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 13^2 + 84^2\n'
                    'c^2 = 169 + 7056\n'
                    'c^2 = 7225\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √7225\n'
                    'c = 85\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 85 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 63 units and the hypotenuse measures 117 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 63 units\n'
                    '- Length of the hypotenuse (c) = 117 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '63^2 + b^2 = 117^2\n'
                    '3969 + b^2 = 13689\n'
                    'b^2 = 13689 - 3969\n'
                    'b^2 = 9720\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √9720\n'
                    'b ≈ 98.59\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 98.59 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 36 units and the other leg measures 77 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 36 units\n'
                    '- Length of the other leg (b) = 77 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 36^2 + 77^2\n'
                    'c^2 = 1296 + 5929\n'
                    'c^2 = 7225\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √7225\n'
                    'c = 85\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 85 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 45 units and the hypotenuse measures 53 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 45 units\n'
                    '- Length of the hypotenuse (c) = 53 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '45^2 + b^2 = 53^2\n'
                    '2025 + b^2 = 2809\n'
                    'b^2 = 2809 - 2025\n'
                    'b^2 = 784\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √784\n'
                    'b = 28\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 28 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 36 units and the other leg measures 48 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 36 units\n'
                    '- Length of the other leg (b) = 48 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 36^2 + 48^2\n'
                    'c^2 = 1296 + 2304\n'
                    'c^2 = 3600\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √3600\n'
                    'c = 60\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 60 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 63 units and the hypotenuse measures 72 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 63 units\n'
                    '- Length of the hypotenuse (c) = 72 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '63^2 + b^2 = 72^2\n'
                    '3969 + b^2 = 5184\n'
                    'b^2 = 5184 - 3969\n'
                    'b^2 = 1215\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √1215\n'
                    'b ≈ 34.84\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 34.84 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 36 units and the hypotenuse measures 85 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 36 units\n'
                    '- Length of the hypotenuse (c) = 85 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '36^2 + b^2 = 85^2\n'
                    '1296 + b^2 = 7225\n'
                    'b^2 = 7225 - 1296\n'
                    'b^2 = 5929\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √5929\n'
                    'b = 77\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is 77 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 39 units and the other leg measures 80 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 39 units\n'
                    '- Length of the other leg (b) = 80 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 39^2 + 80^2\n'
                    'c^2 = 1521 + 6400\n'
                    'c^2 = 7921\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √7921\n'
                    'c = 89\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is 89 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 56 units and the hypotenuse measures 105 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 56 units\n'
                    '- Length of the hypotenuse (c) = 105 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '56^2 + b^2 = 105^2\n'
                    '3136 + b^2 = 11025\n'
                    'b^2 = 11025 - 3136\n'
                    'b^2 = 7897\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √7897\n'
                    'b ≈ 88.88\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 88.88 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 65 units and the hypotenuse measures 127 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 65 units\n'
                    '- Length of the hypotenuse (c) = 127 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '65^2 + b^2 = 127^2\n'
                    '4225 + b^2 = 16129\n'
                    'b^2 = 16129 - 4225\n'
                    'b^2 = 11904\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √11904\n'
                    'b ≈ 109.24\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 109.24 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 78 units and the other leg measures 160 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 78 units\n'
                    '- Length of the other leg (b) = 160 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 78^2 + 160^2\n'
                    'c^2 = 6084 + 25600\n'
                    'c^2 = 31684\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √31684\n'
                    'c ≈ 177.93\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is approximately 177.93 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 84 units and the hypotenuse measures 185 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 84 units\n'
                    '- Length of the hypotenuse (c) = 185 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '84^2 + b^2 = 185^2\n'
                    '7056 + b^2 = 34225\n'
                    'b^2 = 34225 - 7056\n'
                    'b^2 = 27169\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √27169\n'
                    'b ≈ 164.76\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 164.76 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 99 units and the other leg measures 120 units. Find the length of the hypotenuse.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 99 units\n'
                    '- Length of the other leg (b) = 120 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'c^2 = a^2 + b^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    'c^2 = 99^2 + 120^2\n'
                    'c^2 = 9801 + 14400\n'
                    'c^2 = 24201\n\n'
                    'Step 4: Take the square root of both sides to find c:\n'
                    'c = √24201\n'
                    'c ≈ 155.57\n\n'
                    'Conclusion:\n\n'
                    'The length of the hypotenuse (c) is approximately 155.57 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 120 units and the hypotenuse measures 169 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 120 units\n'
                    '- Length of the hypotenuse (c) = 169 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '120^2 + b^2 = 169^2\n'
                    '14400 + b^2 = 28561\n'
                    'b^2 = 28561 - 14400\n'
                    'b^2 = 14161\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √14161\n'
                    'b ≈ 119.03\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 119.03 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 143 units and the hypotenuse measures 240 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 143 units\n'
                    '- Length of the hypotenuse (c) = 240 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '143^2 + b^2 = 240^2\n'
                    '20449 + b^2 = 57600\n'
                    'b^2 = 57600 - 20449\n'
                    'b^2 = 37151\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √37151\n'
                    'b ≈ 192.76\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 192.76 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 156 units and the hypotenuse measures 253 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 156 units\n'
                    '- Length of the hypotenuse (c) = 253 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '156^2 + b^2 = 253^2\n'
                    '24336 + b^2 = 64009\n'
                    'b^2 = 64009 - 24336\n'
                    'b^2 = 39673\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √39673\n'
                    'b ≈ 199.18\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 199.18 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 195 units and the hypotenuse measures 293 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 195 units\n'
                    '- Length of the hypotenuse (c) = 293 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '195^2 + b^2 = 293^2\n'
                    '38025 + b^2 = 85849\n'
                    'b^2 = 85849 - 38025\n'
                    'b^2 = 47824\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √47824\n'
                    'b ≈ 218.70\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 218.70 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 231 units and the hypotenuse measures 340 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 231 units\n'
                    '- Length of the hypotenuse (c) = 340 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '231^2 + b^2 = 340^2\n'
                    '53481 + b^2 = 115600\n'
                    'b^2 = 115600 - 53481\n'
                    'b^2 = 62119\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √62119\n'
                    'b ≈ 249.24\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 249.24 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 260 units and the hypotenuse measures 377 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 260 units\n'
                    '- Length of the hypotenuse (c) = 377 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '260^2 + b^2 = 377^2\n'
                    '67600 + b^2 = 142129\n'
                    'b^2 = 142129 - 67600\n'
                    'b^2 = 74529\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √74529\n'
                    'b ≈ 273.20\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 273.20 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 273 units and the hypotenuse measures 416 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 273 units\n'
                    '- Length of the hypotenuse (c) = 416 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '273^2 + b^2 = 416^2\n'
                    '74529 + b^2 = 173056\n'
                    'b^2 = 173056 - 74529\n'
                    'b^2 = 98427\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √98427\n'
                    'b ≈ 313.74\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 313.74 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 308 units and the hypotenuse measures 435 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 308 units\n'
                    '- Length of the hypotenuse (c) = 435 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '308^2 + b^2 = 435^2\n'
                    '94864 + b^2 = 189225\n'
                    'b^2 = 189225 - 94864\n'
                    'b^2 = 94361\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √94361\n'
                    'b ≈ 307.18\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 307.18 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 351 units and the hypotenuse measures 568 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 351 units\n'
                    '- Length of the hypotenuse (c) = 568 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '351^2 + b^2 = 568^2\n'
                    '123201 + b^2 = 322624\n'
                    'b^2 = 322624 - 123201\n'
                    'b^2 = 199423\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √199423\n'
                    'b ≈ 446.55\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 446.55 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 364 units and the hypotenuse measures 615 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 364 units\n'
                    '- Length of the hypotenuse (c) = 615 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '364^2 + b^2 = 615^2\n'
                    '132496 + b^2 = 378225\n'
                    'b^2 = 378225 - 132496\n'
                    'b^2 = 245729\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √245729\n'
                    'b ≈ 495.70\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 495.70 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 385 units and the hypotenuse measures 528 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 385 units\n'
                    '- Length of the hypotenuse (c) = 528 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '385^2 + b^2 = 528^2\n'
                    '148225 + b^2 = 278784\n'
                    'b^2 = 278784 - 148225\n'
                    'b^2 = 130559\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √130559\n'
                    'b ≈ 361.34\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 361.34 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 416 units and the hypotenuse measures 657 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 416 units\n'
                    '- Length of the hypotenuse (c) = 657 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '416^2 + b^2 = 657^2\n'
                    '173056 + b^2 = 432249\n'
                    'b^2 = 432249 - 173056\n'
                    'b^2 = 259193\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √259193\n'
                    'b ≈ 509.08\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 509.08 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 455 units and the hypotenuse measures 792 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 455 units\n'
                    '- Length of the hypotenuse (c) = 792 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '455^2 + b^2 = 792^2\n'
                    '207025 + b^2 = 627264\n'
                    'b^2 = 627264 - 207025\n'
                    'b^2 = 420239\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √420239\n'
                    'b ≈ 648.03\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 648.03 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 480 units and the hypotenuse measures 817 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 480 units\n'
                    '- Length of the hypotenuse (c) = 817 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '480^2 + b^2 = 817^2\n'
                    '230400 + b^2 = 667489\n'
                    'b^2 = 667489 - 230400\n'
                    'b^2 = 437089\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √437089\n'
                    'b ≈ 660.95\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 660.95 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 504 units and the hypotenuse measures 865 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 504 units\n'
                    '- Length of the hypotenuse (c) = 865 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '504^2 + b^2 = 865^2\n'
                    '254016 + b^2 = 748225\n'
                    'b^2 = 748225 - 254016\n'
                    'b^2 = 494209\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √494209\n'
                    'b ≈ 703.15\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 703.15 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 525 units and the hypotenuse measures 848 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 525 units\n'
                    '- Length of the hypotenuse (c) = 848 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '525^2 + b^2 = 848^2\n'
                    '275625 + b^2 = 718624\n'
                    'b^2 = 718624 - 275625\n'
                    'b^2 = 442999\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √442999\n'
                    'b ≈ 665.50\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 665.50 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 550 units and the hypotenuse measures 885 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 550 units\n'
                    '- Length of the hypotenuse (c) = 885 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '550^2 + b^2 = 885^2\n'
                    '302500 + b^2 = 783225\n'
                    'b^2 = 783225 - 302500\n'
                    'b^2 = 480725\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √480725\n'
                    'b ≈ 693.35\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 693.35 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 575 units and the hypotenuse measures 912 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 575 units\n'
                    '- Length of the hypotenuse (c) = 912 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '575^2 + b^2 = 912^2\n'
                    '330625 + b^2 = 832464\n'
                    'b^2 = 832464 - 330625\n'
                    'b^2 = 501839\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √501839\n'
                    'b ≈ 708.27\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 708.27 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 600 units and the hypotenuse measures 937 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 600 units\n'
                    '- Length of the hypotenuse (c) = 937 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '600^2 + b^2 = 937^2\n'
                    '360000 + b^2 = 878769\n'
                    'b^2 = 878769 - 360000\n'
                    'b^2 = 518769\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √518769\n'
                    'b ≈ 720.13\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 720.13 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50: Pythagorean Theorem\n\n'
                    'In a right triangle, one leg measures 625 units and the hypotenuse measures 960 units. Find the length of the other leg.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one leg (a) = 625 units\n'
                    '- Length of the hypotenuse (c) = 960 units\n\n'
                    'Step 2: Apply the Pythagorean Theorem:\n'
                    'a^2 + b^2 = c^2\n\n'
                    'Step 3: Substitute the given values into the equation:\n'
                    '625^2 + b^2 = 960^2\n'
                    '390625 + b^2 = 921600\n'
                    'b^2 = 921600 - 390625\n'
                    'b^2 = 530975\n\n'
                    'Step 4: Take the square root of both sides to find b:\n'
                    'b = √530975\n'
                    'b ≈ 728.67\n\n'
                    'Conclusion:\n\n'
                    'The length of the other leg (b) is approximately 728.67 units.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

