import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Volume extends StatelessWidget {
  final Color chosenColor;
  Volume ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume and Surface Area'),
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
                'Volume and Surface Area',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Geometry Volume and Surface area are two essential measurements used to quantify the spatial characteristics of three-dimensional objects.\n\n1. Volume: \n\nThe volume of a three-dimensional object represents the amount of space enclosed by the object.\n\nIt measures the capacity or the amount of material that the object can hold.\n\nVolume is expressed in cubic units such as cubic meters, cubic centimeters, or cubic inches.\n\nFor example, the volume of a cube is calculated as V = s^3, where is the length of one side of the cube.\n\n2. Surface Area:\n\nThe surface area of a three-dimensional object represents the total area of all its surfaces.\n\nIt measures the amount of material needed to cover the entire outer surface of the object.\n\nSurface area is expressed in square units such as square meters, square centimeters, or square inches.\n\nFor example, the surface area of a cube is calculated as S A = 6s^2, where is the length of one side of the cube.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 4 units, width = 3 units, '
                    'and height = 5 units, calculate its volume and surface area.\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 4 units\n'
                    '- Width (w) = 3 units\n'
                    '- Height (h) = 5 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 4 * 3 * 5\n'
                    '- Volume = 60 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(4 * 3) + 2(4 * 5) + 2(3 * 5)\n'
                    '- Surface Area = 2(12) + 2(20) + 2(15)\n'
                    '- Surface Area = 24 + 40 + 30\n'
                    '- Surface Area = 94 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 60 cubic units.\n'
                    '- The surface area of the rectangular prism is 94 square units.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Volume and Surface Area of a Cube\n\n'
                    'Given a cube with side length = 5 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given value:\n'
                    '- Side length (s) = 5 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = side length^3\n'
                    '- Substitute the value: V = 5^3\n'
                    '- Volume = 125 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 6 * side length^2\n'
                    '- Substitute the value: SA = 6 * 5^2\n'
                    '- Surface Area = 6 * 25\n'
                    '- Surface Area = 150 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cube is 125 cubic units.\n'
                    '- The surface area of the cube is 150 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 3 units and height = 8 units, '
                    'calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 3 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 3^2 * 8\n'
                    '- Volume = 72π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(h + r)\n'
                    '- Substitute the values: SA = 2π * 3(8 + 3)\n'
                    '- Surface Area = 2π * 3(11)\n'
                    '- Surface Area = 66π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 72π cubic units.\n'
                    '- The surface area of the cylinder is 66π square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 6 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given value:\n'
                    '- Radius (r) = 6 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the value: V = (4/3)π * 6^3\n'
                    '- Volume = 288π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the value: SA = 4π * 6^2\n'
                    '- Surface Area = 4π * 36\n'
                    '- Surface Area = 144π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 288π cubic units.\n'
                    '- The surface area of the sphere is 144π square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 10 units, width = 4 units, '
                    'and height = 7 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 10 units\n'
                    '- Width (w) = 4 units\n'
                    '- Height (h) = 7 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 10 * 4 * 7\n'
                    '- Volume = 280 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(10 * 4) + 2(10 * 7) + 2(4 * 7)\n'
                    '- Surface Area = 2(40) + 2(70) + 2(28)\n'
                    '- Surface Area = 80 + 140 + 56\n'
                    '- Surface Area = 276 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 280 cubic units.\n'
                    '- The surface area of the rectangular prism is 276 square units.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 5 units and height = 12 units, '
                    'calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 5 units\n'
                    '- Height (h) = 12 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 5^2 * 12\n'
                    '- Volume = 100π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 5(5 + √(12^2 + 5^2))\n'
                    '- Surface Area = π * 5(5 + √(144 + 25))\n'
                    '- Surface Area = π * 5(5 + √169)\n'
                    '- Surface Area = π * 5(5 + 13)\n'
                    '- Surface Area = π * 5 * 18\n'
                    '- Surface Area = 90π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 100π cubic units.\n'
                    '- The surface area of the cone is 90π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 6: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 3 units and height = 8 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 3 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 3^2 * 8\n'
                    '- Volume = 72π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 3(3 + 8)\n'
                    '- Surface Area = 2π * 3(11)\n'
                    '- Surface Area = 66π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 72π cubic units.\n'
                    '- The surface area of the cylinder is 66π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 7: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 4 units and height = 10 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 4 units\n'
                    '- Height (h) = 10 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 4^2 * 10\n'
                    '- Volume = 160π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 4(4 + √(10^2 + 4^2))\n'
                    '- Surface Area = π * 4(4 + √(100 + 16))\n'
                    '- Surface Area = π * 4(4 + √116)\n'
                    '- Surface Area = π * 4(4 + 2√29)\n'
                    '- Surface Area = π * 4 * (4 + 2√29)\n'
                    '- Surface Area ≈ 192.6 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is approximately 160π/3 cubic units.\n'
                    '- The surface area of the cone is approximately 192.6 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 8: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 6 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 6 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 6^3\n'
                    '- Volume = 288π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 6^2\n'
                    '- Surface Area = 4π * 36\n'
                    '- Surface Area = 144π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 288π cubic units.\n'
                    '- The surface area of the sphere is 144π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 9: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 5 units, width = 4 units, and height = 7 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 5 units\n'
                    '- Width (w) = 4 units\n'
                    '- Height (h) = 7 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 5 * 4 * 7\n'
                    '- Volume = 140 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(5*4) + 2(5*7) + 2(4*7)\n'
                    '- Surface Area = 2(20) + 2(35) + 2(28)\n'
                    '- Surface Area = 40 + 70 + 56\n'
                    '- Surface Area = 166 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 140 cubic units.\n'
                    '- The surface area of the rectangular prism is 166 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 10: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 8 units and height = 15 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 8 units\n'
                    '- Height (h) = 15 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 8^2 * 15\n'
                    '- Volume = 320π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 8(8 + √(15^2 + 8^2))\n'
                    '- Surface Area = π * 8(8 + √(225 + 64))\n'
                    '- Surface Area = π * 8(8 + √289)\n'
                    '- Surface Area = π * 8(8 + 17)\n'
                    '- Surface Area = π * 8 * 25\n'
                    '- Surface Area = 200π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 320π cubic units.\n'
                    '- The surface area of the cone is 200π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 11: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 6 units and height = 10 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 6 units\n'
                    '- Height (h) = 10 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 6^2 * 10\n'
                    '- Volume = 360π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 6(6 + 10)\n'
                    '- Surface Area = 2π * 6(16)\n'
                    '- Surface Area = 192π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 360π cubic units.\n'
                    '- The surface area of the cylinder is 192π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 12: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 10 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 10 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 10^3\n'
                    '- Volume = 4000π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 10^2\n'
                    '- Surface Area = 4π * 100\n'
                    '- Surface Area = 400π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 4000π/3 cubic units.\n'
                    '- The surface area of the sphere is 400π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 13: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 8 units, width = 6 units, and height = 12 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 8 units\n'
                    '- Width (w) = 6 units\n'
                    '- Height (h) = 12 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 8 * 6 * 12\n'
                    '- Volume = 576 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(8*6) + 2(8*12) + 2(6*12)\n'
                    '- Surface Area = 2(48) + 2(96) + 2(72)\n'
                    '- Surface Area = 96 + 192 + 144\n'
                    '- Surface Area = 432 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 576 cubic units.\n'
                    '- The surface area of the rectangular prism is 432 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 14: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 12 units and height = 20 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 12 units\n'
                    '- Height (h) = 20 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 12^2 * 20\n'
                    '- Volume = 960π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 12(12 + √(20^2 + 12^2))\n'
                    '- Surface Area = π * 12(12 + √(400 + 144))\n'
                    '- Surface Area = π * 12(12 + √544)\n'
                    '- Surface Area = π * 12(12 + 4√34)\n'
                    '- Surface Area = π * 12 * (12 + 4√34)\n'
                    '- Surface Area ≈ 880.9π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 960π cubic units.\n'
                    '- The surface area of the cone is approximately 880.9π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 15: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 5 units and height = 14 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 5 units\n'
                    '- Height (h) = 14 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 5^2 * 14\n'
                    '- Volume = 350π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 5(5 + 14)\n'
                    '- Surface Area = 2π * 5(19)\n'
                    '- Surface Area = 190π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 350π cubic units.\n'
                    '- The surface area of the cylinder is 190π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 16: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 8 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 8 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 8^3\n'
                    '- Volume = 1024π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 8^2\n'
                    '- Surface Area = 4π * 64\n'
                    '- Surface Area = 256π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 1024π/3 cubic units.\n'
                    '- The surface area of the sphere is 256π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 17: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 12 units, width = 7 units, and height = 9 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 12 units\n'
                    '- Width (w) = 7 units\n'
                    '- Height (h) = 9 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 12 * 7 * 9\n'
                    '- Volume = 756 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(12*7) + 2(12*9) + 2(7*9)\n'
                    '- Surface Area = 2(84) + 2(108) + 2(63)\n'
                    '- Surface Area = 168 + 216 + 126\n'
                    '- Surface Area = 510 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 756 cubic units.\n'
                    '- The surface area of the rectangular prism is 510 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 18: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 15 units and height = 24 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 15 units\n'
                    '- Height (h) = 24 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 15^2 * 24\n'
                    '- Volume = 5400π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 15(15 + √(24^2 + 15^2))\n'
                    '- Surface Area = π * 15(15 + √(576 + 225))\n'
                    '- Surface Area = π * 15(15 + √801)\n'
                    '- Surface Area = π * 15 * (15 + √801)\n'
                    '- Surface Area ≈ 2587.95π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 5400π cubic units.\n'
                    '- The surface area of the cone is approximately 2587.95π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 19: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 10 units and height = 18 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 10 units\n'
                    '- Height (h) = 18 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 10^2 * 18\n'
                    '- Volume = 1800π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 10(10 + 18)\n'
                    '- Surface Area = 2π * 10(28)\n'
                    '- Surface Area = 560π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 1800π cubic units.\n'
                    '- The surface area of the cylinder is 560π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 20: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 15 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 15 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 15^3\n'
                    '- Volume = 4500π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 15^2\n'
                    '- Surface Area = 4π * 225\n'
                    '- Surface Area = 900π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 4500π cubic units.\n'
                    '- The surface area of the sphere is 900π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 21: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 15 units, width = 9 units, and height = 12 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 15 units\n'
                    '- Width (w) = 9 units\n'
                    '- Height (h) = 12 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 15 * 9 * 12\n'
                    '- Volume = 1620 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(15*9) + 2(15*12) + 2(9*12)\n'
                    '- Surface Area = 2(135) + 2(180) + 2(108)\n'
                    '- Surface Area = 270 + 360 + 216\n'
                    '- Surface Area = 846 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 1620 cubic units.\n'
                    '- The surface area of the rectangular prism is 846 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 22: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 6 units and height = 8 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 6 units\n'
                    '- Height (h) = 8 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 6^2 * 8\n'
                    '- Volume = 96π/3 cubic units\n'
                    '- Volume = 32π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 6(6 + √(8^2 + 6^2))\n'
                    '- Surface Area = π * 6(6 + √(64 + 36))\n'
                    '- Surface Area = π * 6(6 + √100)\n'
                    '- Surface Area = π * 6(6 + 10)\n'
                    '- Surface Area = π * 6 * 16\n'
                    '- Surface Area = 96π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 32π cubic units.\n'
                    '- The surface area of the cone is 96π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 23: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 8 units and height = 15 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 8 units\n'
                    '- Height (h) = 15 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 8^2 * 15\n'
                    '- Volume = 960π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 8(8 + 15)\n'
                    '- Surface Area = 2π * 8(23)\n'
                    '- Surface Area = 368π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 960π cubic units.\n'
                    '- The surface area of the cylinder is 368π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 24: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 12 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 12 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 12^3\n'
                    '- Volume = 6912π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 12^2\n'
                    '- Surface Area = 4π * 144\n'
                    '- Surface Area = 576π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 6912π/3 cubic units.\n'
                    '- The surface area of the sphere is 576π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 25: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 10 units, width = 6 units, and height = 14 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 10 units\n'
                    '- Width (w) = 6 units\n'
                    '- Height (h) = 14 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 10 * 6 * 14\n'
                    '- Volume = 840 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(10*6) + 2(10*14) + 2(6*14)\n'
                    '- Surface Area = 2(60) + 2(140) + 2(84)\n'
                    '- Surface Area = 120 + 280 + 168\n'
                    '- Surface Area = 568 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 840 cubic units.\n'
                    '- The surface area of the rectangular prism is 568 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 26: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 10 units and height = 24 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 10 units\n'
                    '- Height (h) = 24 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 10^2 * 24\n'
                    '- Volume = 800π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 10(10 + √(24^2 + 10^2))\n'
                    '- Surface Area = π * 10(10 + √(576 + 100))\n'
                    '- Surface Area = π * 10(10 + √676)\n'
                    '- Surface Area = π * 10(10 + 26)\n'
                    '- Surface Area = π * 10 * 36\n'
                    '- Surface Area = 360π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 800π/3 cubic units.\n'
                    '- The surface area of the cone is 360π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 27: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 6 units and height = 16 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 6 units\n'
                    '- Height (h) = 16 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 6^2 * 16\n'
                    '- Volume = 576π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 6(6 + 16)\n'
                    '- Surface Area = 2π * 6(22)\n'
                    '- Surface Area = 264π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 576π cubic units.\n'
                    '- The surface area of the cylinder is 264π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 28: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 18 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 18 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 18^3\n'
                    '- Volume = 11664π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 18^2\n'
                    '- Surface Area = 4π * 324\n'
                    '- Surface Area = 1296π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 11664π/3 cubic units.\n'
                    '- The surface area of the sphere is 1296π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 29: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 16 units, width = 10 units, and height = 20 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 16 units\n'
                    '- Width (w) = 10 units\n'
                    '- Height (h) = 20 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 16 * 10 * 20\n'
                    '- Volume = 3200 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(16*10) + 2(16*20) + 2(10*20)\n'
                    '- Surface Area = 2(160) + 2(320) + 2(200)\n'
                    '- Surface Area = 320 + 640 + 400\n'
                    '- Surface Area = 1360 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 3200 cubic units.\n'
                    '- The surface area of the rectangular prism is 1360 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 30: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 20 units and height = 30 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 20 units\n'
                    '- Height (h) = 30 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 20^2 * 30\n'
                    '- Volume = 4000π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 20(20 + √(30^2 + 20^2))\n'
                    '- Surface Area = π * 20(20 + √(900 + 400))\n'
                    '- Surface Area = π * 20(20 + √1300)\n'
                    '- Surface Area = π * 20(20 + 10√13)\n'
                    '- Surface Area = π * 20 * (20 + 10√13)\n'
                    '- Surface Area ≈ 2010.19π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 4000π/3 cubic units.\n'
                    '- The surface area of the cone is approximately 2010.19π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 31: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 12 units and height = 25 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 12 units\n'
                    '- Height (h) = 25 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 12^2 * 25\n'
                    '- Volume = 3600π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 12(12 + 25)\n'
                    '- Surface Area = 2π * 12(37)\n'
                    '- Surface Area = 888π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 3600π cubic units.\n'
                    '- The surface area of the cylinder is 888π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 32: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 22 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 22 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 22^3\n'
                    '- Volume = 10648π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 22^2\n'
                    '- Surface Area = 4π * 484\n'
                    '- Surface Area = 1936π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 10648π/3 cubic units.\n'
                    '- The surface area of the sphere is 1936π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 33: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 22 units, width = 14 units, and height = 18 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 22 units\n'
                    '- Width (w) = 14 units\n'
                    '- Height (h) = 18 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 22 * 14 * 18\n'
                    '- Volume = 5544 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(22*14) + 2(22*18) + 2(14*18)\n'
                    '- Surface Area = 2(308) + 2(396) + 2(252)\n'
                    '- Surface Area = 616 + 792 + 504\n'
                    '- Surface Area = 1912 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 5544 cubic units.\n'
                    '- The surface area of the rectangular prism is 1912 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 34: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 15 units and height = 36 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 15 units\n'
                    '- Height (h) = 36 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 15^2 * 36\n'
                    '- Volume = 2700π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 15(15 + √(36^2 + 15^2))\n'
                    '- Surface Area = π * 15(15 + √(1296 + 225))\n'
                    '- Surface Area = π * 15(15 + √1521)\n'
                    '- Surface Area = π * 15(15 + 39)\n'
                    '- Surface Area = π * 15 * 54\n'
                    '- Surface Area = 810π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 2700π cubic units.\n'
                    '- The surface area of the cone is 810π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 35: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 18 units and height = 30 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 18 units\n'
                    '- Height (h) = 30 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 18^2 * 30\n'
                    '- Volume = 9720π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 18(18 + 30)\n'
                    '- Surface Area = 2π * 18(48)\n'
                    '- Surface Area = 1728π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 9720π cubic units.\n'
                    '- The surface area of the cylinder is 1728π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 36: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 24 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 24 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 24^3\n'
                    '- Volume = 18432π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 24^2\n'
                    '- Surface Area = 4π * 576\n'
                    '- Surface Area = 2304π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 18432π/3 cubic units.\n'
                    '- The surface area of the sphere is 2304π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 37: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 20 units, width = 12 units, and height = 16 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 20 units\n'
                    '- Width (w) = 12 units\n'
                    '- Height (h) = 16 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 20 * 12 * 16\n'
                    '- Volume = 3840 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(20*12) + 2(20*16) + 2(12*16)\n'
                    '- Surface Area = 2(240) + 2(320) + 2(192)\n'
                    '- Surface Area = 480 + 640 + 384\n'
                    '- Surface Area = 1504 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 3840 cubic units.\n'
                    '- The surface area of the rectangular prism is 1504 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 38: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 28 units and height = 45 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 28 units\n'
                    '- Height (h) = 45 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 28^2 * 45\n'
                    '- Volume = 35280π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 28(28 + √(45^2 + 28^2))\n'
                    '- Surface Area = π * 28(28 + √(2025 + 784))\n'
                    '- Surface Area = π * 28(28 + √2809)\n'
                    '- Surface Area = π * 28(28 + 53)\n'
                    '- Surface Area = π * 28 * 81\n'
                    '- Surface Area = 2268π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 35280π/3 cubic units.\n'
                    '- The surface area of the cone is 2268π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 39: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 22 units and height = 36 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 22 units\n'
                    '- Height (h) = 36 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 22^2 * 36\n'
                    '- Volume = 17424π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 22(22 + 36)\n'
                    '- Surface Area = 2π * 22(58)\n'
                    '- Surface Area = 2552π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 17424π cubic units.\n'
                    '- The surface area of the cylinder is 2552π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 40: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 30 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 30 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 30^3\n'
                    '- Volume = 36000π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 30^2\n'
                    '- Surface Area = 4π * 900\n'
                    '- Surface Area = 3600π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 36000π/3 cubic units.\n'
                    '- The surface area of the sphere is 3600π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 41: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 24 units, width = 16 units, and height = 20 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 24 units\n'
                    '- Width (w) = 16 units\n'
                    '- Height (h) = 20 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 24 * 16 * 20\n'
                    '- Volume = 7680 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(24*16) + 2(24*20) + 2(16*20)\n'
                    '- Surface Area = 2(384) + 2(480) + 2(320)\n'
                    '- Surface Area = 768 + 960 + 640\n'
                    '- Surface Area = 2368 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 7680 cubic units.\n'
                    '- The surface area of the rectangular prism is 2368 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 42: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 18 units and height = 40 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 18 units\n'
                    '- Height (h) = 40 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 18^2 * 40\n'
                    '- Volume = 12096π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 18(18 + √(40^2 + 18^2))\n'
                    '- Surface Area = π * 18(18 + √(1600 + 324))\n'
                    '- Surface Area = π * 18(18 + √1924)\n'
                    '- Surface Area = π * 18(18 + 44)\n'
                    '- Surface Area = π * 18 * 62\n'
                    '- Surface Area = 1116π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 12096π/3 cubic units.\n'
                    '- The surface area of the cone is 1116π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 43: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 20 units and height = 42 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 20 units\n'
                    '- Height (h) = 42 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 20^2 * 42\n'
                    '- Volume = 33600π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 20(20 + 42)\n'
                    '- Surface Area = 2π * 20(62)\n'
                    '- Surface Area = 2480π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 33600π cubic units.\n'
                    '- The surface area of the cylinder is 2480π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 44: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 36 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 36 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 36^3\n'
                    '- Volume = 13824π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 36^2\n'
                    '- Surface Area = 4π * 1296\n'
                    '- Surface Area = 5184π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 13824π/3 cubic units.\n'
                    '- The surface area of the sphere is 5184π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 45: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 28 units, width = 18 units, and height = 24 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 28 units\n'
                    '- Width (w) = 18 units\n'
                    '- Height (h) = 24 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 28 * 18 * 24\n'
                    '- Volume = 12096 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(28*18) + 2(28*24) + 2(18*24)\n'
                    '- Surface Area = 2(504) + 2(672) + 2(432)\n'
                    '- Surface Area = 1008 + 1344 + 864\n'
                    '- Surface Area = 3216 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 12096 cubic units.\n'
                    '- The surface area of the rectangular prism is 3216 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 46: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 15 units and height = 36 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 15 units\n'
                    '- Height (h) = 36 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 15^2 * 36\n'
                    '- Volume = 2700π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 15(15 + √(36^2 + 15^2))\n'
                    '- Surface Area = π * 15(15 + √(1296 + 225))\n'
                    '- Surface Area = π * 15(15 + √1521)\n'
                    '- Surface Area = π * 15(15 + 39)\n'
                    '- Surface Area = π * 15 * 54\n'
                    '- Surface Area = 810π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 2700π/3 cubic units.\n'
                    '- The surface area of the cone is 810π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 47: Volume and Surface Area of a Cylinder\n\n'
                    'Given a cylinder with radius = 18 units and height = 30 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 18 units\n'
                    '- Height (h) = 30 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = π * radius^2 * height\n'
                    '- Substitute the values: V = π * 18^2 * 30\n'
                    '- Volume = 9720π cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2πr(r + h)\n'
                    '- Substitute the values: SA = 2π * 18(18 + 30)\n'
                    '- Surface Area = 2π * 18(48)\n'
                    '- Surface Area = 1728π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cylinder is 9720π cubic units.\n'
                    '- The surface area of the cylinder is 1728π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 48: Volume and Surface Area of a Sphere\n\n'
                    'Given a sphere with radius = 24 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 24 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (4/3)π * radius^3\n'
                    '- Substitute the values: V = (4/3)π * 24^3\n'
                    '- Volume = 18432π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 4π * radius^2\n'
                    '- Substitute the values: SA = 4π * 24^2\n'
                    '- Surface Area = 4π * 576\n'
                    '- Surface Area = 2304π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the sphere is 18432π/3 cubic units.\n'
                    '- The surface area of the sphere is 2304π square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 49: Volume and Surface Area of a Rectangular Prism\n\n'
                    'Given a rectangular prism with length = 22 units, width = 14 units, and height = 18 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Length (l) = 22 units\n'
                    '- Width (w) = 14 units\n'
                    '- Height (h) = 18 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = length * width * height\n'
                    '- Substitute the values: V = 22 * 14 * 18\n'
                    '- Volume = 5544 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = 2lw + 2lh + 2wh\n'
                    '- Substitute the values: SA = 2(22*14) + 2(22*18) + 2(14*18)\n'
                    '- Surface Area = 2(308) + 2(396) + 2(252)\n'
                    '- Surface Area = 616 + 792 + 504\n'
                    '- Surface Area = 1912 square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the rectangular prism is 5544 cubic units.\n'
                    '- The surface area of the rectangular prism is 1912 square units.',
              ),
              SizedBox(
                height: 20,
              ),
              ProblemSolvingWidget(
                problem: 'Problem 50: Volume and Surface Area of a Cone\n\n'
                    'Given a cone with radius = 12 units and height = 25 units, calculate its volume and surface area.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values:\n'
                    '- Radius (r) = 12 units\n'
                    '- Height (h) = 25 units\n\n'
                    'Step 2: Calculate Volume:\n'
                    '- Volume = (1/3)π * radius^2 * height\n'
                    '- Substitute the values: V = (1/3)π * 12^2 * 25\n'
                    '- Volume = 1200π/3 cubic units\n\n'
                    'Step 3: Calculate Surface Area:\n'
                    '- Surface Area = πr(r + √(h^2 + r^2))\n'
                    '- Substitute the values: SA = π * 12(12 + √(25^2 + 12^2))\n'
                    '- Surface Area = π * 12(12 + √(625 + 144))\n'
                    '- Surface Area = π * 12(12 + √769)\n'
                    '- Surface Area = π * 12(12 + 27.73)\n'
                    '- Surface Area = π * 12 * 39.73\n'
                    '- Surface Area ≈ 1504.12π square units\n\n'
                    'Conclusion:\n'
                    '- The volume of the cone is 1200π/3 cubic units.\n'
                    '- The surface area of the cone is approximately 1504.12π square units.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

