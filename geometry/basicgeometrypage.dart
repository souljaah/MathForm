import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class BasicGeometry extends StatelessWidget {
  final Color chosenColor;
  BasicGeometry ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Geometry Shapes (Points, Lines, Angles, Triangles, Quadrilaterals, Circles)'),
        backgroundColor: chosenColor,
      ),
      body: Container(
        color: chosenColor, // Use received color as background color
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Basic Geometry Shapes (Points, Lines, Angles, Triangles, Quadrilaterals, Circles)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Basic geometry shapes are fundamental geometric figures that form the foundation of geometric study. Here`s a brief overview of each:\n\n1. Points: A point is a precise location in space that has no size or dimensions. It is often represented by a dot and named with a capital letter.\n\n2. Lines: A line is a straight path that extends infinitely in both directions. It is defined by two points and contains infinitely many points. Lines can be classified as straight, curved, or segmented.\n\n3. Angles: An angle is formed by two rays with a common endpoint, called the vertex. Angles are measured in degrees or radians. They can be classified based on their measure as acute (less than 90 degrees), right (exactly 90 degrees), obtuse (more than 90 degrees but less than 180 degrees), straight (exactly 180 degrees), and reflex (more than 180 degrees).\n\n4. Triangles: A triangle is a polygon with three sides, three vertices, and three angles. Triangles can be classified by the lengths of their sides (scalene, isosceles, equilateral) or by the measures of their angles (acute, right, obtuse).\n\n5. Quadrilaterals: A quadrilateral is a polygon with four sides, four vertices, and four angles. Quadrilaterals include shapes such as squares, rectangles, parallelograms, rhombuses, trapezoids, and kites. They can be classified based on properties like angles and side lengths.\n\n6. Circles: A circle is a set of all points in a plane that are equidistant from a fixed point called the center. The distance from the center to any point on the circle is the radius, and the distance across the circle passing through the center is the diameter. Circles are defined by their radius or diameter and have properties such as circumference and area.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Example: Triangle Classification\n'
                    'Given a triangle ABC with side lengths:\n'
                    'AB = 5 units, BC = 7 units, and AC = 8 units.\n'
                    'Step 1: Identify the triangle:\n'
                    '- We have a triangle with sides of lengths 5, 7, and 8 units.\n'
                    'Step 2: Determine the type of triangle:\n'
                    '- We will classify the triangle based on its angles.\n'
                    'Step 3: Use the Pythagorean theorem:\n'
                    '- Check if the triangle is a right triangle or not.\n'
                    'Step 4: Calculate the values:\n'
                    '- AB^2 = 5^2 = 25\n'
                    '- BC^2 = 7^2 = 49\n'
                    '- AC^2 = 8^2 = 64\n'
                    'Step 5: Apply the Pythagorean theorem:\n'
                    '- Since 25 + 49 < 64, the triangle is an acute triangle.\n'
                    'Conclusion:\n'
                    '- The given triangle ABC with side lengths 5, 7, and 8 units is an acute triangle.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Area of a Circle\n\n'
                    'Given a circle with radius r = 5 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the radius:\n'
                    '- Radius (r) = 5 units\n\n'
                    'Step 2: Apply the formula for the area of a circle:\n'
                    'Area = π * r^2\n'
                    'Area = π * (5^2) = 25π square units\n\n'
                    'Final Answer: The area of the circle is 25π square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Perimeter of a Rectangle\n\n'
                    'Given a rectangle with length l = 8 units and width w = 6 units, '
                    'find its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the length and width:\n'
                    '- Length (l) = 8 units\n'
                    '- Width (w) = 6 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a rectangle:\n'
                    'Perimeter = 2 * (length + width)\n'
                    'Perimeter = 2 * (8 + 6) = 28 units\n\n'
                    'Final Answer: The perimeter of the rectangle is 28 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Volume of a Cylinder\n\n'
                    'Given a cylinder with radius r = 3 units and height h = 10 units, '
                    'find its volume.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the radius and height:\n'
                    '- Radius (r) = 3 units\n'
                    '- Height (h) = 10 units\n\n'
                    'Step 2: Apply the formula for the volume of a cylinder:\n'
                    'Volume = π * r^2 * h\n'
                    'Volume = π * (3^2) * 10 = 90π cubic units\n\n'
                    'Final Answer: The volume of the cylinder is 90π cubic units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Area of a Triangle\n\n'
                    'Given a triangle with base b = 6 units and height h = 8 units, '
                    'find its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the base and height:\n'
                    '- Base (b) = 6 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Apply the formula for the area of a triangle:\n'
                    'Area = (base * height) / 2\n'
                    'Area = (6 * 8) / 2 = 24 square units\n\n'
                    'Final Answer: The area of the triangle is 24 square units.\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Perimeter of a Circle\n\n'
                    'Given a circle with radius r = 10 units, find its circumference (perimeter).',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the radius:\n'
                    '- Radius (r) = 10 units\n\n'
                    'Step 2: Apply the formula for the circumference of a circle:\n'
                    'Circumference = 2 * π * r\n'
                    'Circumference = 2 * π * 10 = 20π units\n\n'
                    'Final Answer: The circumference (perimeter) of the circle is 20π units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6: Area of a Triangle\n\n'
                    'Given a triangle with base b = 12 units and height h = 8 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base (b) = 12 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Apply the formula for the area of a triangle:\n'
                    'Area = (base * height) / 2\n'
                    'Area = (12 * 8) / 2\n'
                    'Area = 48 square units\n\n'
                    'Final Answer: The area of the triangle is 48 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7: Perimeter of a Quadrilateral\n\n'
                    'Given a quadrilateral with side lengths of 6 units, 8 units, 10 units, and 12 units, '
                    'calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given side lengths:\n'
                    '- Side 1 = 6 units\n'
                    '- Side 2 = 8 units\n'
                    '- Side 3 = 10 units\n'
                    '- Side 4 = 12 units\n\n'
                    'Step 2: Calculate the perimeter:\n'
                    'Perimeter = sum of all side lengths\n'
                    'Perimeter = 6 + 8 + 10 + 12\n'
                    'Perimeter = 36 units\n\n'
                    'Final Answer: The perimeter of the quadrilateral is 36 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8: Circumference of a Circle\n\n'
                    'Given a circle with diameter d = 14 units, find its circumference.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the diameter:\n'
                    '- Diameter (d) = 14 units\n\n'
                    'Step 2: Apply the formula for the circumference of a circle using diameter:\n'
                    'Circumference = π * diameter\n'
                    'Circumference = π * 14\n'
                    'Circumference = 14π units\n\n'
                    'Final Answer: The circumference of the circle is 14π units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9: Properties of a Square\n\n'
                    'Given square ABCD with diagonal length d = 10 units, find its side length.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the diagonal length:\n'
                    '- Diagonal length (d) = 10 units\n\n'
                    'Step 2: Apply the formula for the side length of a square using diagonal:\n'
                    'Side length = √(diagonal^2 / 2)\n'
                    'Side length = √(10^2 / 2)\n'
                    'Side length = √(100 / 2)\n'
                    'Side length = √50\n'
                    'Side length ≈ 7.07 units\n\n'
                    'Final Answer: The side length of the square is approximately 7.07 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10: Properties of a Rhombus\n\n'
                    'Given rhombus PQRS with diagonals PR = 16 units and QS = 12 units, find its side length.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the diagonal lengths:\n'
                    '- Diagonal PR = 16 units\n'
                    '- Diagonal QS = 12 units\n\n'
                    'Step 2: Apply the formula for the side length of a rhombus using diagonals:\n'
                    'Side length = √((1/2) * (PR^2 + QS^2))\n'
                    'Side length = √((1/2) * (16^2 + 12^2))\n'
                    'Side length = √((1/2) * (256 + 144))\n'
                    'Side length = √(200)\n'
                    'Side length ≈ 14.14 units\n\n'
                    'Final Answer: The side length of the rhombus is approximately 14.14 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11: Area of a Trapezoid\n\n'
                    'Given trapezoid ABCD with bases AB = 8 units and CD = 12 units, and height h = 6 units, '
                    'calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base 1 (AB) = 8 units\n'
                    '- Base 2 (CD) = 12 units\n'
                    '- Height (h) = 6 units\n\n'
                    'Step 2: Apply the formula for the area of a trapezoid:\n'
                    'Area = ((base1 + base2) / 2) * height\n'
                    'Area = ((8 + 12) / 2) * 6\n'
                    'Area = (20 / 2) * 6\n'
                    'Area = 10 * 6 = 60 square units\n\n'
                    'Final Answer: The area of the trapezoid is 60 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12: Perimeter of a Regular Pentagon\n\n'
                    'Given a regular pentagon with side length s = 5 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 5 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a regular pentagon:\n'
                    'Perimeter = 5 * Side length\n'
                    'Perimeter = 5 * 5 = 25 units\n\n'
                    'Final Answer: The perimeter of the regular pentagon is 25 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13: Radius of a Circle from its Area\n\n'
                    'Given a circle with area A = 36π square units, find its radius.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the area:\n'
                    '- Area (A) = 36π square units\n\n'
                    'Step 2: Apply the formula for the radius of a circle from its area:\n'
                    'Area = π * radius^2\n'
                    '36π = π * radius^2\n'
                    '36 = radius^2\n'
                    'radius = √36\n'
                    'radius = 6 units\n\n'
                    'Final Answer: The radius of the circle is 6 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14: Diameter of a Circle from its Circumference\n\n'
                    'Given a circle with circumference C = 20π units, find its diameter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the circumference:\n'
                    '- Circumference (C) = 20π units\n\n'
                    'Step 2: Apply the formula for the diameter of a circle from its circumference:\n'
                    'Circumference = π * diameter\n'
                    '20π = π * diameter\n'
                    '20 = diameter\n\n'
                    'Final Answer: The diameter of the circle is 20 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15: Classifying Quadrilaterals\n\n'
                    'Classify each quadrilateral by its properties:\n'
                    'a) ABCD with AB = BC = CD = DA and ∠A = 90°\n'
                    'b) PQRS with PQ = QR = RS = SP and ∠P = ∠Q = ∠R = ∠S = 90°\n',
                solution: 'Solution:\n\n'
                    'a) ABCD: Square\n'
                    'b) PQRS: Rectangle\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16: Volume of a Cube\n\n'
                    'Given a cube with side length s = 4 units, calculate its volume.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 4 units\n\n'
                    'Step 2: Apply the formula for the volume of a cube:\n'
                    'Volume = Side length^3\n'
                    'Volume = 4^3\n'
                    'Volume = 64 cubic units\n\n'
                    'Final Answer: The volume of the cube is 64 cubic units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17: Surface Area of a Cube\n\n'
                    'Given a cube with side length s = 6 units, calculate its surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 6 units\n\n'
                    'Step 2: Apply the formula for the surface area of a cube:\n'
                    'Surface Area = 6 * Side length^2\n'
                    'Surface Area = 6 * 6^2\n'
                    'Surface Area = 6 * 36\n'
                    'Surface Area = 216 square units\n\n'
                    'Final Answer: The surface area of the cube is 216 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18: Classifying Triangles by Sides\n\n'
                    'Classify each triangle by its sides as scalene, isosceles, or equilateral:\n'
                    'a) ∆ABC with AB = 5 cm, BC = 7 cm, AC = 6 cm\n'
                    'b) ∆DEF with DE = 8 in, EF = 8 in, DF = 9 in\n'
                    'c) ∆GHI with GH = 10 m, GI = 10 m, HI = 10 m\n',
                solution: 'Solution:\n\n'
                    'a) ∆ABC: Scalene\n'
                    'b) ∆DEF: Isosceles\n'
                    'c) ∆GHI: Equilateral\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19: Classifying Triangles by Angles\n\n'
                    'Classify each triangle by its angles as acute, obtuse, or right:\n'
                    'a) ∆PQR with ∠P = 60°, ∠Q = 90°, ∠R = 30°\n'
                    'b) ∆STU with ∠S = 120°, ∠T = 30°, ∠U = 30°\n'
                    'c) ∆VWX with ∠V = 45°, ∠W = 45°, ∠X = 90°\n',
                solution: 'Solution:\n\n'
                    'a) ∆PQR: Right\n'
                    'b) ∆STU: Obtuse\n'
                    'c) ∆VWX: Right\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20: Area of a Sector\n\n'
                    'Given a circle with radius r = 8 units and central angle ∠AOB = 45°, calculate the area of the sector.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 8 units\n'
                    '- Central angle (∠AOB) = 45°\n\n'
                    'Step 2: Apply the formula for the area of a sector:\n'
                    'Area = (θ/360°) * π * r^2\n'
                    'Area = (45/360°) * π * 8^2\n'
                    'Area = (1/8) * π * 64\n'
                    'Area = (π/8) * 64\n'
                    'Area = 8π square units\n\n'
                    'Final Answer: The area of the sector is 8π square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21: Classifying Quadrilaterals\n\n'
                    'Classify each quadrilateral by its properties:\n'
                    'a) MNOP with MN = NO = OP = PM and ∠M = ∠N = ∠O = ∠P = 90°\n'
                    'b) XYZW with XY = YZ = ZW = WX and XY || ZW, YZ || WX\n',
                solution: 'Solution:\n\n'
                    'a) MNOP: Square\n'
                    'b) XYZW: Rectangle\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22: Circumference of a Circle\n\n'
                    'Given a circle with circumference C = 36π units, find its radius.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the circumference:\n'
                    '- Circumference (C) = 36π units\n\n'
                    'Step 2: Apply the formula for the radius of a circle from its circumference:\n'
                    'Circumference = 2 * π * radius\n'
                    '36π = 2 * π * radius\n'
                    '18 = radius\n\n'
                    'Final Answer: The radius of the circle is 18 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23: Volume of a Cylinder\n\n'
                    'Given a cylinder with radius r = 5 units and height h = 10 units, calculate its volume.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 5 units\n'
                    '- Height (h) = 10 units\n\n'
                    'Step 2: Apply the formula for the volume of a cylinder:\n'
                    'Volume = π * r^2 * h\n'
                    'Volume = π * 5^2 * 10\n'
                    'Volume = π * 25 * 10\n'
                    'Volume = 250π cubic units\n\n'
                    'Final Answer: The volume of the cylinder is 250π cubic units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24: Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius r = 3 units and height h = 8 units, calculate its surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 3 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Apply the formula for the surface area of a cylinder:\n'
                    'Surface Area = 2πr(r + h)\n'
                    'Surface Area = 2π * 3(3 + 8)\n'
                    'Surface Area = 2π * 3(11)\n'
                    'Surface Area = 66π square units\n\n'
                    'Final Answer: The surface area of the cylinder is 66π square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25: Classifying Triangles by Angles\n\n'
                    'Classify each triangle by its angles as acute, obtuse, or right:\n'
                    'a) ∆UVW with ∠U = 30°, ∠V = 60°, ∠W = 90°\n'
                    'b) ∆XYZ with ∠X = 90°, ∠Y = 45°, ∠Z = 45°\n',
                solution: 'Solution:\n\n'
                    'a) ∆UVW: Right\n'
                    'b) ∆XYZ: Acute\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26: Perimeter of a Regular Hexagon\n\n'
                    'Given a regular hexagon with side length s = 6 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 6 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a regular hexagon:\n'
                    'Perimeter = 6 * Side length\n'
                    'Perimeter = 6 * 6 = 36 units\n\n'
                    'Final Answer: The perimeter of the regular hexagon is 36 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27: Diagonal Length of a Rectangle\n\n'
                    'Given a rectangle with length l = 10 units and width w = 6 units, find its diagonal length.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 10 units\n'
                    '- Width (w) = 6 units\n\n'
                    'Step 2: Apply the Pythagorean theorem to find the diagonal length:\n'
                    'Diagonal length = √(Length^2 + Width^2)\n'
                    'Diagonal length = √(10^2 + 6^2)\n'
                    'Diagonal length = √(100 + 36)\n'
                    'Diagonal length = √136 units\n'
                    'Diagonal length ≈ 11.66 units\n\n'
                    'Final Answer: The diagonal length of the rectangle is approximately 11.66 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28: Properties of a Pentagon\n\n'
                    'Given a regular pentagon, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A regular pentagon has:\n'
                    '- 5 sides\n'
                    '- 5 angles\n'
                    '- 5 diagonals\n'
                    '- Interior angles sum to 540°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29: Properties of a Hexagon\n\n'
                    'Given a regular hexagon, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A regular hexagon has:\n'
                    '- 6 sides\n'
                    '- 6 angles\n'
                    '- 9 diagonals\n'
                    '- Interior angles sum to 720°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30: Properties of a Trapezoid\n\n'
                    'Given a trapezoid with bases b1 = 8 units and b2 = 12 units, and legs l1 = 5 units and l2 = 7 units, '
                    'state the sum of interior angles and classify by sides and angles.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Bases (b1, b2) = 8 units, 12 units\n'
                    '- Legs (l1, l2) = 5 units, 7 units\n\n'
                    'Step 2: State the sum of interior angles and classify the trapezoid:\n'
                    '- Sum of interior angles = 360°\n'
                    '- Trapezoid is not regular\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31: Properties of a Circle\n\n'
                    'Given a circle with radius r = 5 units, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A circle does not have sides, angles, or diagonals. All interior angles are 360°.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32: Perimeter of a Regular Octagon\n\n'
                    'Given a regular octagon with side length s = 7 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 7 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a regular octagon:\n'
                    'Perimeter = 8 * Side length\n'
                    'Perimeter = 8 * 7 = 56 units\n\n'
                    'Final Answer: The perimeter of the regular octagon is 56 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33: Volume of a Sphere\n\n'
                    'Given a sphere with radius r = 4 units, calculate its volume.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 4 units\n\n'
                    'Step 2: Apply the formula for the volume of a sphere:\n'
                    'Volume = (4/3) * π * r^3\n'
                    'Volume = (4/3) * π * 4^3\n'
                    'Volume = (4/3) * π * 64\n'
                    'Volume = (256/3)π cubic units\n\n'
                    'Final Answer: The volume of the sphere is (256/3)π cubic units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34: Surface Area of a Sphere\n\n'
                    'Given a sphere with radius r = 6 units, calculate its surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 6 units\n\n'
                    'Step 2: Apply the formula for the surface area of a sphere:\n'
                    'Surface Area = 4 * π * r^2\n'
                    'Surface Area = 4 * π * 6^2\n'
                    'Surface Area = 4 * π * 36\n'
                    'Surface Area = 144π square units\n\n'
                    'Final Answer: The surface area of the sphere is 144π square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35: Area of a Trapezoid\n\n'
                    'Given a trapezoid with bases b1 = 12 units and b2 = 8 units, and height h = 10 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Bases (b1, b2) = 12 units, 8 units\n'
                    '- Height (h) = 10 units\n\n'
                    'Step 2: Apply the formula for the area of a trapezoid:\n'
                    'Area = (1/2) * (b1 + b2) * height\n'
                    'Area = (1/2) * (12 + 8) * 10\n'
                    'Area = (1/2) * 20 * 10\n'
                    'Area = 100 square units\n\n'
                    'Final Answer: The area of the trapezoid is 100 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36: Properties of a Square\n\n'
                    'Given a square, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A square has:\n'
                    '- 4 sides\n'
                    '- 4 angles\n'
                    '- 2 diagonals\n'
                    '- Interior angles sum to 360°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37: Area of a Regular Pentagon\n\n'
                    'Given a regular pentagon with side length s = 9 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 9 units\n\n'
                    'Step 2: Apply the formula for the area of a regular pentagon:\n'
                    'Area = (1/4) * √(5 * (5 + 2 * √5)) * s^2\n'
                    'Area = (1/4) * √(5 * (5 + 2 * √5)) * 9^2\n'
                    'Area = (1/4) * √(5 * (5 + 2 * √5)) * 81\n'
                    'Area ≈ 110.11 square units\n\n'
                    'Final Answer: The area of the regular pentagon is approximately 110.11 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38: Perimeter of an Equilateral Triangle\n\n'
                    'Given an equilateral triangle with side length s = 12 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 12 units\n\n'
                    'Step 2: Apply the formula for the perimeter of an equilateral triangle:\n'
                    'Perimeter = 3 * Side length\n'
                    'Perimeter = 3 * 12 = 36 units\n\n'
                    'Final Answer: The perimeter of the equilateral triangle is 36 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39: Properties of a Regular Octagon\n\n'
                    'Given a regular octagon, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A regular octagon has:\n'
                    '- 8 sides\n'
                    '- 8 angles\n'
                    '- 20 diagonals\n'
                    '- Interior angles sum to 1080°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40: Area of a Regular Hexagon\n\n'
                    'Given a regular hexagon with side length s = 10 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 10 units\n\n'
                    'Step 2: Apply the formula for the area of a regular hexagon:\n'
                    'Area = (3√3/2) * s^2\n'
                    'Area = (3√3/2) * 10^2\n'
                    'Area = (3√3/2) * 100\n'
                    'Area ≈ 259.81 square units\n\n'
                    'Final Answer: The area of the regular hexagon is approximately 259.81 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41: Properties of a Regular Decagon\n\n'
                    'Given a regular decagon, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A regular decagon has:\n'
                    '- 10 sides\n'
                    '- 10 angles\n'
                    '- 35 diagonals\n'
                    '- Interior angles sum to 1440°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42: Perimeter of an Isosceles Triangle\n\n'
                    'Given an isosceles triangle with base length b = 8 units and side lengths s = 5 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Base length (b) = 8 units\n'
                    '- Side lengths (s) = 5 units\n\n'
                    'Step 2: Apply the formula for the perimeter of an isosceles triangle:\n'
                    'Perimeter = Base length + 2 * Side length\n'
                    'Perimeter = 8 + 2 * 5 = 18 units\n\n'
                    'Final Answer: The perimeter of the isosceles triangle is 18 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43: Area of a Circle\n\n'
                    'Given a circle with radius r = 6 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given radius:\n'
                    '- Radius (r) = 6 units\n\n'
                    'Step 2: Apply the formula for the area of a circle:\n'
                    'Area = π * r^2\n'
                    'Area = π * 6^2\n'
                    'Area = π * 36\n'
                    'Area = 36π square units\n\n'
                    'Final Answer: The area of the circle is 36π square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44: Perimeter of a Regular Pentagon\n\n'
                    'Given a regular pentagon with side length s = 7 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 7 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a regular pentagon:\n'
                    'Perimeter = 5 * Side length\n'
                    'Perimeter = 5 * 7 = 35 units\n\n'
                    'Final Answer: The perimeter of the regular pentagon is 35 units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45: Volume of a Cube\n\n'
                    'Given a cube with side length s = 9 units, calculate its volume.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 9 units\n\n'
                    'Step 2: Apply the formula for the volume of a cube:\n'
                    'Volume = Side length^3\n'
                    'Volume = 9^3\n'
                    'Volume = 729 cubic units\n\n'
                    'Final Answer: The volume of the cube is 729 cubic units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46: Surface Area of a Cube\n\n'
                    'Given a cube with side length s = 4 units, calculate its surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 4 units\n\n'
                    'Step 2: Apply the formula for the surface area of a cube:\n'
                    'Surface Area = 6 * Side length^2\n'
                    'Surface Area = 6 * 4^2\n'
                    'Surface Area = 6 * 16\n'
                    'Surface Area = 96 square units\n\n'
                    'Final Answer: The surface area of the cube is 96 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47: Classifying Quadrilaterals\n\n'
                    'Classify each quadrilateral by its properties:\n'
                    'a) PQRS with PQ = RS = 10 units, PS = QR = 8 units, and ∠P = ∠Q = ∠R = ∠S = 90°\n'
                    'b) ABCD with AB = BC = CD = DA = 6 units, and ∠A = ∠B = ∠C = ∠D = 90°\n',
                solution: 'Solution:\n\n'
                    'a) PQRS: Rectangle\n'
                    'b) ABCD: Square\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48: Properties of a Rhombus\n\n'
                    'Given a rhombus, state the number of sides, angles, diagonals, and interior angles sum.',
                solution: 'Solution:\n\n'
                    'A rhombus has:\n'
                    '- 4 sides\n'
                    '- 4 angles\n'
                    '- 2 diagonals\n'
                    '- Interior angles sum to 360°\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49: Area of a Regular Octagon\n\n'
                    'Given a regular octagon with side length s = 12 units, calculate its area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 12 units\n\n'
                    'Step 2: Apply the formula for the area of a regular octagon:\n'
                    'Area = (2 + 2√2) * s^2\n'
                    'Area = (2 + 2√2) * 12^2\n'
                    'Area = (2 + 2√2) * 144\n'
                    'Area ≈ 619.37 square units\n\n'
                    'Final Answer: The area of the regular octagon is approximately 619.37 square units.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50: Perimeter of a Regular Decagon\n\n'
                    'Given a regular decagon with side length s = 5 units, calculate its perimeter.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the side length:\n'
                    '- Side length (s) = 5 units\n\n'
                    'Step 2: Apply the formula for the perimeter of a regular decagon:\n'
                    'Perimeter = 10 * Side length\n'
                    'Perimeter = 10 * 5 = 50 units\n\n'
                    'Final Answer: The perimeter of the regular decagon is 50 units.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

