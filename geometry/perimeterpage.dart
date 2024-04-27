import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Perimeter extends StatelessWidget {
  final Color chosenColor;
  Perimeter ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perimeter and Area'),
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
                'Perimeter and Area',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Geometry Perimeter and Area are two fundamental concepts used to quantify the size and shape of geometric figures.\n\n1. Perimeter: The perimeter of a geometric figure is the total length of the boundary or the outer edge of the figure.\n\nIt is the sum of the lengths of all the sides of the figure.\n\nPerimeter is typically measured in linear units such as inches, centimeters, or meters.\n\nFor example, in a rectangle, the perimeter is calculated by adding the lengths of all four sides: P = 2(l + w), where l is the length and w is the width.\n\n2. Area: The area of a geometric figure is the measure of the space enclosed by the boundary of the figure.\n\nIt represents the amount of surface covered by the figure.\n\nArea is measured in square units such as square inches, square centimeters, or square meters.\n\nThe formulas for calculating the area vary depending on the shape of the figure. For example:\n\nThe area of a rectangle is calculated as A = l * w, where l is the length and w is the width.\n\nThe area of a circle is calculated as A = π * r^2, where π (pi) is a constant approximately equal to 3.14159, and r is the radius of the circle.\n\nThe area of a triangle is calculated using different formulas based on the type of triangle, such as A = (base * height) / 2 for a right triangle.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Perimeter and Area of a Rectangle\n'
                    'Given a rectangle with length = 8 units and width = 5 units.\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 8 units\n'
                    '- Width (w) = 5 units\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * (length + width)\n'
                    '- Substitute the values: P = 2 * (8 + 5)\n'
                    '- Perimeter = 2 * 13 = 26 units\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = length * width\n'
                    '- Substitute the values: A = 8 * 5\n'
                    '- Area = 40 square units\n'
                    'Conclusion:\n'
                    '- The perimeter of the rectangle is 26 units.\n'
                    '- The area of the rectangle is 40 square units.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Perimeter and Area of a Rectangle\n\n'
                    'Given a rectangle with length = 8 units and width = 5 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 8 units\n'
                    '- Width (w) = 5 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * (length + width)\n'
                    '- Substitute the values: P = 2 * (8 + 5)\n'
                    '- Perimeter = 2 * 13 = 26 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = length * width\n'
                    '- Substitute the values: A = 8 * 5\n'
                    '- Area = 40 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the rectangle is 26 units.\n'
                    '- The area of the rectangle is 40 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Perimeter and Area of a Square\n\n'
                    'Given a square with side length = 6 units, calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the value: P = 4 * 6\n'
                    '- Perimeter = 24 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length * side length\n'
                    '- Substitute the value: A = 6 * 6\n'
                    '- Area = 36 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the square is 24 units.\n'
                    '- The area of the square is 36 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Perimeter and Area of a Circle\n\n'
                    'Given a circle with radius = 5 units, calculate its circumference and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 5 units\n\n'
                    'Step 2: Calculate Circumference:\n'
                    '- Circumference = 2 * π * radius\n'
                    '- Substitute the value: C = 2 * π * 5\n'
                    '- Circumference ≈ 31.42 units (rounded to two decimal places)\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = π * radius^2\n'
                    '- Substitute the value: A = π * 5^2\n'
                    '- Area ≈ 78.54 square units (rounded to two decimal places)\n\n'
                    'Conclusion:\n'
                    '- The circumference of the circle is approximately 31.42 units.\n'
                    '- The area of the circle is approximately 78.54 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Perimeter and Area of a Triangle\n\n'
                    'Given a triangle with side lengths of 6 units, 8 units, and 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given side lengths:\n'
                    '- Side 1 = 6 units\n'
                    '- Side 2 = 8 units\n'
                    '- Side 3 = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = sum of all side lengths\n'
                    '- Perimeter = 6 + 8 + 10 = 24 units\n\n'
                    'Step 3: Calculate Area using Heron\'s Formula:\n'
                    '- Semi-perimeter (s) = Perimeter / 2 = 24 / 2 = 12 units\n'
                    '- Area = √(s * (s - side1) * (s - side2) * (s - side3))\n'
                    '- Area = √(12 * (12 - 6) * (12 - 8) * (12 - 10))\n'
                    '- Area ≈ 24 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the triangle is 24 units.\n'
                    '- The area of the triangle is approximately 24 square units.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Perimeter and Area of a Parallelogram\n\n'
                    'Given a parallelogram with base length = 10 units and height = 6 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base length (b) = 10 units\n'
                    '- Height (h) = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Since opposite sides of a parallelogram are equal, '
                    'the perimeter is twice the sum of the base length and height.\n'
                    '- Perimeter = 2 * (base length + height)\n'
                    '- Perimeter = 2 * (10 + 6) = 32 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = base length * height\n'
                    '- Substitute the values: A = 10 * 6\n'
                    '- Area = 60 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the parallelogram is 32 units.\n'
                    '- The area of the parallelogram is 60 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 6: Perimeter and Area of a Trapezoid\n\n'
                    'Given a trapezoid with parallel sides lengths 6 units and 10 units, '
                    'height = 8 units, and non-parallel sides lengths 7 units and 9 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Parallel side lengths (a and b) = 6 units and 10 units\n'
                    '- Non-parallel side lengths (c and d) = 7 units and 9 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = sum of all side lengths\n'
                    '- Perimeter = 6 + 10 + 7 + 9 = 32 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = ((a + b) / 2) * height\n'
                    '- Substitute the values: A = ((6 + 10) / 2) * 8 = 64 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the trapezoid is 32 units.\n'
                    '- The area of the trapezoid is 64 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 7: Perimeter and Area of a Rhombus\n\n'
                    'Given a rhombus with side length = 12 units and one diagonal length = 16 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 12 units\n'
                    '- One diagonal length (d) = 16 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the values: P = 4 * 12 = 48 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (diagonal 1 * diagonal 2) / 2\n'
                    '- Substitute the values: A = (12 * 16) / 2 = 96 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the rhombus is 48 units.\n'
                    '- The area of the rhombus is 96 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 8: Perimeter and Area of an Equilateral Triangle\n\n'
                    'Given an equilateral triangle with side length = 15 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 15 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 3 * side length\n'
                    '- Substitute the values: P = 3 * 15 = 45 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (sqrt(3) / 4) * side length^2\n'
                    '- Substitute the values: A = (sqrt(3) / 4) * 15^2 = (sqrt(3) / 4) * 225 = (15 * sqrt(3)) / 4 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the equilateral triangle is 45 units.\n'
                    '- The area of the equilateral triangle is (15 * sqrt(3)) / 4 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 9: Perimeter and Area of a Regular Pentagon\n\n'
                    'Given a regular pentagon with side length = 7 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 7 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 5 * side length\n'
                    '- Substitute the values: P = 5 * 7 = 35 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/4) * sqrt(5 * (5 + 2 * sqrt(5))) * side length^2\n'
                    '- Substitute the values: A = (1/4) * sqrt(5 * (5 + 2 * sqrt(5))) * 7^2\n'
                    '- Area ≈ 84.303 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular pentagon is 35 units.\n'
                    '- The area of the regular pentagon is approximately 84.303 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 10: Perimeter and Area of an Isosceles Triangle\n\n'
                    'Given an isosceles triangle with base length = 12 units '
                    'and each congruent side length = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base length (b) = 12 units\n'
                    '- Congruent side length (s) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = base length + 2 * congruent side length\n'
                    '- Substitute the values: P = 12 + 2 * 10 = 32 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * base length * height\n'
                    '- To find height, use Pythagoras theorem: height = sqrt(s^2 - (b/2)^2)\n'
                    '- Substitute the values: height = sqrt(10^2 - (12/2)^2) = sqrt(100 - 36) = sqrt(64) = 8\n'
                    '- Area = (1/2) * 12 * 8 = 48 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the isosceles triangle is 32 units.\n'
                    '- The area of the isosceles triangle is 48 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 11: Perimeter and Area of a Regular Hexagon\n\n'
                    'Given a regular hexagon with side length = 9 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 9 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 6 * side length\n'
                    '- Substitute the values: P = 6 * 9 = 54 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (3 * sqrt(3) / 2) * side length^2\n'
                    '- Substitute the values: A = (3 * sqrt(3) / 2) * 9^2\n'
                    '- Area = (3 * sqrt(3) / 2) * 81\n'
                    '- Area = 81 * sqrt(3) / 2 ≈ 111.246 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular hexagon is 54 units.\n'
                    '- The area of the regular hexagon is approximately 111.246 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 12: Perimeter and Area of a Regular Octagon\n\n'
                    'Given a regular octagon with side length = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 8 * side length\n'
                    '- Substitute the values: P = 8 * 10 = 80 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = 2 * (1 + sqrt(2)) * side length^2\n'
                    '- Substitute the values: A = 2 * (1 + sqrt(2)) * 10^2\n'
                    '- Area = 2 * (1 + sqrt(2)) * 100\n'
                    '- Area ≈ 404.145 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular octagon is 80 units.\n'
                    '- The area of the regular octagon is approximately 404.145 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 13: Perimeter and Area of a Scalene Triangle\n\n'
                    'Given a scalene triangle with side lengths 7 units, 10 units, and 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side lengths: a = 7 units, b = 10 units, c = 12 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = sum of all side lengths\n'
                    '- Perimeter = 7 + 10 + 12 = 29 units\n\n'
                    'Step 3: Calculate Area using Heron\'s formula:\n'
                    '- Semi-perimeter (s) = Perimeter / 2\n'
                    '- s = 29 / 2 = 14.5 units\n'
                    '- Area = sqrt(s * (s - a) * (s - b) * (s - c))\n'
                    '- Area = sqrt(14.5 * (14.5 - 7) * (14.5 - 10) * (14.5 - 12))\n'
                    '- Area ≈ 34.09 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the scalene triangle is 29 units.\n'
                    '- The area of the scalene triangle is approximately 34.09 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 14: Perimeter and Area of a Kite\n\n'
                    'Given a kite with diagonals lengths 10 units and 16 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Diagonal lengths: d1 = 10 units, d2 = 16 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- As the kite has two pairs of equal-length sides, we consider the sum of all four side lengths.\n'
                    '- Perimeter = 2 * (side length 1 + side length 2)\n'
                    '- Perimeter = 2 * (10 + 16) = 52 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * product of diagonals\n'
                    '- Area = (1/2) * 10 * 16 = 80 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the kite is 52 units.\n'
                    '- The area of the kite is 80 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 15: Perimeter and Area of a Sector\n\n'
                    'Given a sector of a circle with radius = 9 units and central angle = 60 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 9 units\n'
                    '- Central angle (θ) = 60 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = arc length + 2 * radius\n'
                    '- Arc length = (central angle in radians) * radius\n'
                    '- Arc length = (60 * π / 180) * 9 = (π/3) * 9 = 3π units\n'
                    '- Perimeter = 3π + 2 * 9 = 3π + 18 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (θ/360) * π * radius^2\n'
                    '- Area = (60/360) * π * 9^2 = (1/6) * 81π = 13.5π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the sector is (3π + 18) units.\n'
                    '- The area of the sector is approximately 13.5π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 16: Perimeter and Area of an Ellipse\n\n'
                    'Given an ellipse with semi-major axis length = 8 units and semi-minor axis length = 5 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Semi-major axis length (a) = 8 units\n'
                    '- Semi-minor axis length (b) = 5 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- There is no exact formula to calculate the perimeter of an ellipse. '
                    'An approximation can be given by using Ramanujan\'s first approximation.\n'
                    '- Perimeter ≈ π * (3(a + b) - sqrt((3a + b)(a + 3b)))\n'
                    '- Substitute the values: P ≈ π * (3(8 + 5) - sqrt((3*8 + 5)(8 + 3*5))))\n'
                    '- Perimeter ≈ π * (39 - sqrt(91)) units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = π * semi-major axis * semi-minor axis\n'
                    '- Substitute the values: A = π * 8 * 5 = 40π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the ellipse is approximately (39π - sqrt(91)π) units.\n'
                    '- The area of the ellipse is 40π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 17: Perimeter and Area of a Regular Decagon\n\n'
                    'Given a regular decagon with side length = 6 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 10 * side length\n'
                    '- Substitute the values: P = 10 * 6 = 60 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (5/2) * side length^2 * cot(π/10)\n'
                    '- Substitute the values: A = (5/2) * 6^2 * cot(π/10)\n'
                    '- Area ≈ 185.76 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular decagon is 60 units.\n'
                    '- The area of the regular decagon is approximately 185.76 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 18: Perimeter and Area of a Elliptical Arc\n\n'
                    'Given an elliptical arc with semi-major axis length = 10 units, semi-minor axis length = 7 units, '
                    'and central angle = 45 degrees, calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Semi-major axis length (a) = 10 units\n'
                    '- Semi-minor axis length (b) = 7 units\n'
                    '- Central angle (θ) = 45 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- There is no exact formula to calculate the perimeter of an elliptical arc. '
                    'An approximation can be given by using the formula for the circumference of an ellipse.\n'
                    '- Perimeter ≈ π * (3(a + b) - sqrt((3a + b)(a + 3b))) * (θ / 360)\n'
                    '- Substitute the values: P ≈ π * (3(10 + 7) - sqrt((3*10 + 7)(10 + 3*7)))) * (45 / 360)\n'
                    '- Perimeter ≈ π * (51 - sqrt(97)) * (1/8) units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- There is no exact formula to calculate the area of an elliptical arc. '
                    'An approximation can be given by using the formula for the area of a sector of an ellipse.\n'
                    '- Area ≈ (1/2) * (semi-major axis) * (semi-minor axis) * (θ / 360)\n'
                    '- Substitute the values: A ≈ (1/2) * 10 * 7 * (45 / 360)\n'
                    '- Area ≈ 8.75 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the elliptical arc is approximately π * (51 - sqrt(97)) * (1/8) units.\n'
                    '- The area of the elliptical arc is approximately 8.75 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 19: Perimeter and Area of a Regular Heptagon\n\n'
                    'Given a regular heptagon with side length = 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 12 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 7 * side length\n'
                    '- Substitute the values: P = 7 * 12 = 84 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (7/4) * side length^2 * cot(π/7)\n'
                    '- Substitute the values: A = (7/4) * 12^2 * cot(π/7)\n'
                    '- Area ≈ 278.40 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular heptagon is 84 units.\n'
                    '- The area of the regular heptagon is approximately 278.40 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 20: Perimeter and Area of a Circle Sector\n\n'
                    'Given a sector of a circle with radius = 15 units and central angle = 120 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 15 units\n'
                    '- Central angle (θ) = 120 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = arc length + 2 * radius\n'
                    '- Arc length = (central angle in radians) * radius\n'
                    '- Arc length = (120 * π / 180) * 15 = (2/3) * 15π = 10π units\n'
                    '- Perimeter = 10π + 2 * 15 = 10π + 30 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (θ/360) * π * radius^2\n'
                    '- Area = (120/360) * π * 15^2 = (1/3) * π * 225 = 75π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the sector is (10π + 30) units.\n'
                    '- The area of the sector is 75π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 21: Perimeter and Area of a Trapezoid\n\n'
                    'Given a trapezoid with bases lengths 8 units and 14 units, '
                    'height = 10 units, and one of the non-parallel sides = 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base lengths: b1 = 8 units, b2 = 14 units\n'
                    '- Height (h) = 10 units\n'
                    '- One non-parallel side length (a) = 12 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = sum of all side lengths\n'
                    '- Perimeter = base1 + base2 + 2 * (non-parallel side)\n'
                    '- Perimeter = 8 + 14 + 2 * 12 = 46 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * (sum of bases) * height\n'
                    '- Area = (1/2) * (8 + 14) * 10 = 110 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the trapezoid is 46 units.\n'
                    '- The area of the trapezoid is 110 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 22: Perimeter and Area of an Annulus\n\n'
                    'Given an annulus with outer radius = 12 units, inner radius = 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Outer radius (R) = 12 units\n'
                    '- Inner radius (r) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * π * (outer radius + inner radius)\n'
                    '- Perimeter = 2 * π * (12 + 8) = 40π units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = π * (R^2 - r^2)\n'
                    '- Area = π * ((12^2) - (8^2))\n'
                    '- Area = π * (144 - 64)\n'
                    '- Area = π * 80 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the annulus is 40π units.\n'
                    '- The area of the annulus is 80π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 23: Perimeter and Area of a Rhombus\n\n'
                    'Given a rhombus with side length = 15 units and one of the acute angles = 60 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 15 units\n'
                    '- One of the acute angles (θ) = 60 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the values: P = 4 * 15 = 60 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (side length)^2 * sin(θ)\n'
                    '- Substitute the values: A = 15^2 * sin(60°) = 225 * (√3/2) = 112.5 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the rhombus is 60 units.\n'
                    '- The area of the rhombus is approximately 112.5 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 24: Perimeter and Area of a Quadrant\n\n'
                    'Given a quadrant of a circle with radius = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 1/2 * (circumference of the circle)\n'
                    '- Perimeter = 1/2 * (2 * π * radius)\n'
                    '- Perimeter = π * radius = π * 10 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = 1/4 * (area of the circle)\n'
                    '- Area = 1/4 * (π * radius^2)\n'
                    '- Area = 1/4 * (π * 10^2)\n'
                    '- Area = 1/4 * (100π) = 25π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the quadrant is π * 10 units.\n'
                    '- The area of the quadrant is 25π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 25: Perimeter and Area of a Regular Hexagon\n\n'
                    'Given a regular hexagon with side length = 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 6 * side length\n'
                    '- Substitute the values: P = 6 * 8 = 48 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (3√3 / 2) * side length^2\n'
                    '- Substitute the values: A = (3√3 / 2) * 8^2\n'
                    '- Area = 96√3 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular hexagon is 48 units.\n'
                    '- The area of the regular hexagon is 96√3 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 26: Perimeter and Area of a Pentagon\n\n'
                    'Given a regular pentagon with side length = 9 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 9 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 5 * side length\n'
                    '- Substitute the values: P = 5 * 9 = 45 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/4) * √(5 * (5 + 2√5)) * side length^2\n'
                    '- Substitute the values: A = (1/4) * √(5 * (5 + 2√5)) * 9^2\n'
                    '- Area ≈ 140.57 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular pentagon is 45 units.\n'
                    '- The area of the regular pentagon is approximately 140.57 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 27: Perimeter and Area of a Elliptical Sector\n\n'
                    'Given an elliptical sector with semi-major axis length = 7 units, semi-minor axis length = 5 units, '
                    'and central angle = 90 degrees, calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Semi-major axis length (a) = 7 units\n'
                    '- Semi-minor axis length (b) = 5 units\n'
                    '- Central angle (θ) = 90 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- There is no exact formula to calculate the perimeter of an elliptical sector. '
                    'An approximation can be given by using the formula for the circumference of an ellipse.\n'
                    '- Perimeter ≈ π * (3(a + b) - sqrt((3a + b)(a + 3b))) * (θ / 360)\n'
                    '- Substitute the values: P ≈ π * (3(7 + 5) - sqrt((3*7 + 5)(7 + 3*5)))) * (90 / 360)\n'
                    '- Perimeter ≈ π * (36 - sqrt(164)) * (1/4) units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- There is no exact formula to calculate the area of an elliptical sector. '
                    'An approximation can be given by using the formula for the area of a sector of an ellipse.\n'
                    '- Area ≈ (1/2) * (semi-major axis) * (semi-minor axis) * (θ / 360)\n'
                    '- Substitute the values: A ≈ (1/2) * 7 * 5 * (90 / 360)\n'
                    '- Area ≈ 8.75 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the elliptical sector is approximately π * (36 - sqrt(164)) * (1/4) units.\n'
                    '- The area of the elliptical sector is approximately 8.75 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 28: Perimeter and Area of a Regular Octagon\n\n'
                    'Given a regular octagon with side length = 11 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 11 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 8 * side length\n'
                    '- Substitute the values: P = 8 * 11 = 88 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (2 + 2√2) * side length^2\n'
                    '- Substitute the values: A = (2 + 2√2) * 11^2\n'
                    '- Area ≈ 341.02 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular octagon is 88 units.\n'
                    '- The area of the regular octagon is approximately 341.02 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 29: Perimeter and Area of a Square\n\n'
                    'Given a square with side length = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the values: P = 4 * 10 = 40 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length^2\n'
                    '- Substitute the values: A = 10^2 = 100 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the square is 40 units.\n'
                    '- The area of the square is 100 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 30: Perimeter and Area of a Rectangle\n\n'
                    'Given a rectangle with length = 12 units and width = 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 12 units\n'
                    '- Width (w) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * (length + width)\n'
                    '- Substitute the values: P = 2 * (12 + 8) = 2 * 20 = 40 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = length * width\n'
                    '- Substitute the values: A = 12 * 8 = 96 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the rectangle is 40 units.\n'
                    '- The area of the rectangle is 96 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 31: Perimeter and Area of a Triangle\n\n'
                    'Given a triangle with side lengths 5 units, 7 units, and 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side lengths: a = 5 units, b = 7 units, c = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = sum of all side lengths\n'
                    '- Perimeter = a + b + c\n'
                    '- Perimeter = 5 + 7 + 8 = 20 units\n\n'
                    'Step 3: Calculate Area (Using Heron\'s formula):\n'
                    '- Semi-perimeter (s) = (a + b + c) / 2\n'
                    '- s = (5 + 7 + 8) / 2 = 10 units\n'
                    '- Area = √(s * (s - a) * (s - b) * (s - c))\n'
                    '- Area = √(10 * (10 - 5) * (10 - 7) * (10 - 8))\n'
                    '- Area = √(10 * 5 * 3 * 2)\n'
                    '- Area = √(300) = 10√3 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the triangle is 20 units.\n'
                    '- The area of the triangle is 10√3 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 32: Perimeter and Area of an Isosceles Triangle\n\n'
                    'Given an isosceles triangle with base length = 12 units and side length = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base length (b) = 12 units\n'
                    '- Side length (s) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * side length + base length\n'
                    '- Perimeter = 2 * 10 + 12 = 32 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * base length * height\n'
                    '- Since the triangle is isosceles, the height can be calculated using Pythagoras theorem:\n'
                    '- Height^2 = side length^2 - (1/4) * base length^2\n'
                    '- Height^2 = 10^2 - (1/4) * 12^2 = 100 - 36 = 64\n'
                    '- Height = √64 = 8 units\n'
                    '- Area = (1/2) * 12 * 8 = 48 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the isosceles triangle is 32 units.\n'
                    '- The area of the isosceles triangle is 48 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 33: Perimeter and Area of a Regular Tetragon (Square)\n\n'
                    'Given a regular tetragon (square) with side length = 6 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the values: P = 4 * 6 = 24 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length^2\n'
                    '- Substitute the values: A = 6^2 = 36 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular tetragon (square) is 24 units.\n'
                    '- The area of the regular tetragon (square) is 36 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 34: Perimeter and Area of a Regular Tetragon (Rectangle)\n\n'
                    'Given a regular tetragon (rectangle) with length = 8 units and width = 4 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 8 units\n'
                    '- Width (w) = 4 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 2 * (length + width)\n'
                    '- Substitute the values: P = 2 * (8 + 4) = 2 * 12 = 24 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = length * width\n'
                    '- Substitute the values: A = 8 * 4 = 32 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular tetragon (rectangle) is 24 units.\n'
                    '- The area of the regular tetragon (rectangle) is 32 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 35: Perimeter and Area of a Regular Tetragon (Rhombus)\n\n'
                    'Given a regular tetragon (rhombus) with side length = 10 units and one of the acute angles = 60 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 10 units\n'
                    '- One of the acute angles (θ) = 60 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length\n'
                    '- Substitute the values: P = 4 * 10 = 40 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length^2 * sin(θ)\n'
                    '- Substitute the values: A = 10^2 * sin(60°) = 100 * (√3/2) = 50√3 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular tetragon (rhombus) is 40 units.\n'
                    '- The area of the regular tetragon (rhombus) is 50√3 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 36: Perimeter and Area of a Regular Tetragon (Kite)\n\n'
                    'Given a regular tetragon (kite) with diagonals lengths 12 units and 16 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one diagonal (d1) = 12 units\n'
                    '- Length of the other diagonal (d2) = 16 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Since a regular kite has equal adjacent sides, its perimeter can be calculated as 2 * (sum of diagonals).\n'
                    '- Perimeter = 2 * (d1 + d2)\n'
                    '- Substitute the values: P = 2 * (12 + 16) = 2 * 28 = 56 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * (product of diagonals)\n'
                    '- Substitute the values: A = (1/2) * (12 * 16) = 6 * 16 = 96 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the regular tetragon (kite) is 56 units.\n'
                    '- The area of the regular tetragon (kite) is 96 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 37: Perimeter and Area of a Circle\n\n'
                    'Given a circle with radius = 5 units, '
                    'calculate its circumference and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 5 units\n\n'
                    'Step 2: Calculate Circumference (Perimeter):\n'
                    '- Circumference = 2 * π * radius\n'
                    '- Substitute the values: C = 2 * π * 5 = 10π units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = π * radius^2\n'
                    '- Substitute the values: A = π * 5^2 = 25π square units\n\n'
                    'Conclusion:\n'
                    '- The circumference of the circle is 10π units.\n'
                    '- The area of the circle is 25π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 38: Perimeter and Area of a Semi-Circle\n\n'
                    'Given a semi-circle with diameter = 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Diameter (d) = 12 units\n'
                    '- Radius (r) = d / 2 = 12 / 2 = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Circumference of the full circle (since a semi-circle is half of a circle)\n'
                    '- Circumference = 2 * π * radius\n'
                    '- Substitute the values: P = 2 * π * 6 = 12π units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * π * radius^2\n'
                    '- Substitute the values: A = (1/2) * π * 6^2 = 18π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the semi-circle is 12π units.\n'
                    '- The area of the semi-circle is 18π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 39: Perimeter and Area of an Annulus\n\n'
                    'Given an annulus (ring) with outer radius = 10 units and inner radius = 6 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Outer radius (R) = 10 units\n'
                    '- Inner radius (r) = 6 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Circumference of the outer circle - Circumference of the inner circle\n'
                    '- Circumference of the outer circle = 2 * π * R\n'
                    '- Circumference of the inner circle = 2 * π * r\n'
                    '- Perimeter = 2 * π * R - 2 * π * r\n'
                    '- Substitute the values: P = 2 * π * 10 - 2 * π * 6 = 20π - 12π = 8π units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = π * (R^2 - r^2)\n'
                    '- Substitute the values: A = π * ((10^2) - (6^2)) = π * (100 - 36) = 64π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the annulus is 8π units.\n'
                    '- The area of the annulus is 64π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 40: Perimeter and Area of a Sector\n\n'
                    'Given a sector of a circle with radius = 8 units and central angle = 45 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 8 units\n'
                    '- Central angle (θ) = 45 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Arc length + 2 * radius (since the sector forms a circular segment)\n'
                    '- Arc length = (θ / 360) * Circumference of the circle\n'
                    '- Circumference of the circle = 2 * π * radius\n'
                    '- Substitute the values: Arc length = (45 / 360) * (2 * π * 8) = (1/8) * 16π = 2π units\n'
                    '- Perimeter = 2π + 2 * 8 = 2π + 16 = (2π + 16) units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (θ / 360) * π * radius^2\n'
                    '- Substitute the values: A = (45 / 360) * π * (8^2) = (1/8) * 64π = 8π square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the sector is (2π + 16) units.\n'
                    '- The area of the sector is 8π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 41: Perimeter and Area of a Regular Polygon (Equilateral Triangle)\n\n'
                    'Given an equilateral triangle with side length = 9 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 9 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 3 * side length (since all sides of an equilateral triangle are equal)\n'
                    '- Substitute the values: P = 3 * 9 = 27 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (sqrt(3)/4) * side length^2\n'
                    '- Substitute the values: A = (sqrt(3)/4) * 9^2 = (sqrt(3)/4) * 81 = 81 * (sqrt(3)/4) square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the equilateral triangle is 27 units.\n'
                    '- The area of the equilateral triangle is 81 * (sqrt(3)/4) square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 42: Perimeter and Area of a Regular Polygon (Square)\n\n'
                    'Given a regular polygon (square) with side length = 7 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 7 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length (since all sides of a square are equal)\n'
                    '- Substitute the values: P = 4 * 7 = 28 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length^2\n'
                    '- Substitute the values: A = 7^2 = 49 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the square is 28 units.\n'
                    '- The area of the square is 49 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 43: Perimeter and Area of a Regular Polygon (Hexagon)\n\n'
                    'Given a regular polygon (hexagon) with side length = 10 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 10 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 6 * side length (since all sides of a hexagon are equal)\n'
                    '- Substitute the values: P = 6 * 10 = 60 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (3 * sqrt(3)/2) * side length^2\n'
                    '- Substitute the values: A = (3 * sqrt(3)/2) * 10^2 = (3 * sqrt(3)/2) * 100 = 150 * sqrt(3) square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the hexagon is 60 units.\n'
                    '- The area of the hexagon is 150 * sqrt(3) square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 44: Perimeter and Area of a Regular Polygon (Octagon)\n\n'
                    'Given a regular polygon (octagon) with side length = 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 8 * side length (since all sides of an octagon are equal)\n'
                    '- Substitute the values: P = 8 * 8 = 64 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = 2 * (1 + sqrt(2)) * side length^2\n'
                    '- Substitute the values: A = 2 * (1 + sqrt(2)) * 8^2 = 2 * (1 + sqrt(2)) * 64 = 128 * (1 + sqrt(2)) square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the octagon is 64 units.\n'
                    '- The area of the octagon is 128 * (1 + sqrt(2)) square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 45: Perimeter and Area of a Regular Polygon (Pentagon)\n\n'
                    'Given a regular polygon (pentagon) with side length = 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 12 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 5 * side length (since all sides of a pentagon are equal)\n'
                    '- Substitute the values: P = 5 * 12 = 60 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/4) * sqrt(5 * (5 + 2 * sqrt(5))) * side length^2\n'
                    '- Substitute the values: A = (1/4) * sqrt(5 * (5 + 2 * sqrt(5))) * 12^2\n'
                    '- Calculating the value of the expression yields the area in square units.\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the pentagon is 60 units.\n'
                    '- The area of the pentagon is determined using the given formula.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 46: Perimeter and Area of a Trapezoid\n\n'
                    'Given a trapezoid with parallel sides lengths 10 units and 14 units, '
                    'height = 8 units, and distance between the parallel sides = 12 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one parallel side (a) = 10 units\n'
                    '- Length of the other parallel side (b) = 14 units\n'
                    '- Height (h) = 8 units\n'
                    '- Distance between parallel sides (c) = 12 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Sum of all sides\n'
                    '- Substitute the values: P = a + b + 2 * c = 10 + 14 + 2 * 12 = 10 + 14 + 24 = 48 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * (sum of parallel sides) * height\n'
                    '- Substitute the values: A = (1/2) * (a + b) * h = (1/2) * (10 + 14) * 8 = (1/2) * 24 * 8 = 96 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the trapezoid is 48 units.\n'
                    '- The area of the trapezoid is 96 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 47: Perimeter and Area of a Rhombus\n\n'
                    'Given a rhombus with side length = 9 units and acute angle = 60 degrees, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 9 units\n'
                    '- Acute angle (θ) = 60 degrees\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = 4 * side length (since all sides of a rhombus are equal)\n'
                    '- Substitute the values: P = 4 * 9 = 36 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = side length^2 * sin(θ)\n'
                    '- Substitute the values: A = 9^2 * sin(60°) = 81 * (√3/2) = 81 * √3 / 2 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the rhombus is 36 units.\n'
                    '- The area of the rhombus is 81 * √3 / 2 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 48: Perimeter and Area of a Trapezium\n\n'
                    'Given a trapezium with parallel sides lengths 6 units and 10 units, '
                    'height = 5 units, and distance between the parallel sides = 8 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length of one parallel side (a) = 6 units\n'
                    '- Length of the other parallel side (b) = 10 units\n'
                    '- Height (h) = 5 units\n'
                    '- Distance between parallel sides (c) = 8 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Sum of all sides\n'
                    '- Substitute the values: P = a + b + 2 * c = 6 + 10 + 2 * 8 = 6 + 10 + 16 = 32 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (1/2) * (sum of parallel sides) * height\n'
                    '- Substitute the values: A = (1/2) * (a + b) * h = (1/2) * (6 + 10) * 5 = (1/2) * 16 * 5 = 40 square units\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the trapezium is 32 units.\n'
                    '- The area of the trapezium is 40 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 49: Perimeter and Area of a Regular Polygon (Heptagon)\n\n'
                    'Given a regular polygon (heptagon) with side length = 15 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 15 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Number of sides * side length (since all sides of a regular polygon are equal)\n'
                    '- For a heptagon (7 sides), substitute the values: P = 7 * 15 = 105 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (7/4) * s^2 * cot(π/7)\n'
                    '- Substitute the values: A = (7/4) * 15^2 * cot(π/7)\n'
                    '- Calculating the value of the expression yields the area in square units.\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the heptagon is 105 units.\n'
                    '- The area of the heptagon is determined using the given formula.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 50: Perimeter and Area of a Regular Polygon (Decagon)\n\n'
                    'Given a regular polygon (decagon) with side length = 20 units, '
                    'calculate its perimeter and area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Side length (s) = 20 units\n\n'
                    'Step 2: Calculate Perimeter:\n'
                    '- Perimeter = Number of sides * side length (since all sides of a regular polygon are equal)\n'
                    '- For a decagon (10 sides), substitute the values: P = 10 * 20 = 200 units\n\n'
                    'Step 3: Calculate Area:\n'
                    '- Area = (5/2) * s^2 * cot(π/10)\n'
                    '- Substitute the values: A = (5/2) * 20^2 * cot(π/10)\n'
                    '- Calculating the value of the expression yields the area in square units.\n\n'
                    'Conclusion:\n'
                    '- The perimeter of the decagon is 200 units.\n'
                    '- The area of the decagon is determined using the given formula.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
