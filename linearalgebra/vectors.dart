import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';


class Vectors extends StatelessWidget {
  final Color chosenColor;
  Vectors ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vectors'),
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
                'Vectors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Linear Algebra Vectors vectors are mathematical objects that represent quantities that have both magnitude and direction. Vectors are commonly used to represent physical quantities such as displacement, velocity, force, and more abstract mathematical entities.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'A vector is typically denoted by an arrow or a boldface letter. It can be represented in various forms, including:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '1. Geometrically: As an arrow in space, with its length representing the magnitude of the vector and its direction representing the direction of the vector.\n\n2. Algebraically: As an ordered list of numbers, known as components or coordinates. For example, a vector in two-dimensional space can be represented as v = (v_1, v_2), where v_1 and v_1 are the components of the vector along the x-axis and y-axis, respectively.\n\n3. Symbolically: Using variables and unit vectors. For example, v = v_x i+ v_y j + v_z k, where i, j, and k are the unit vectors along the x, y and z axis.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Vectors can be added together, multiplied by scalars, and subjected to various operations, such as dot product and cross product. They form the foundation of many mathematical concepts and are extensively used in various fields, including physics, engineering, computer graphics, and machine learning.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Let u= (3, -2, 5) and v = (-1, 4, 2) be two vectors. Find the sum u + v and the scalar product 2u -3v.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Find the sum u + v:\n\nTo find the sum of two vectors, we add their corresponding components.\n\nu + v = (3, -2, 5) + (-1, 4, 2)\n\n= (3+(1-), -2+ 4, 5, +2)\n\n= (2, 2, 7)\n\nSo, u + v = (2, 2, 7).',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Find the scalar product 2u - 3v:\n\nTo find the scalar product of a vector with a scalar, we multiply each component of the vector by the scalar.\n\n2u= 2(3, -2, 5)\n\n= (2⋅3, 2) ⋅ (-2), 2 ⋅ 5)\n\n= (6, -4, 10)\n\n3v= 3(-1, 4, 2)\n\n=(3 ⋅ (-1), 3 ⋅ 4, 3 ⋅ 2)\n\n= (-3, 12, 6)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nNow, subtracting 3v from 2u:\n\n2u-3v = (6, -4, 10) - (-3, 12, 6)\n\n= (6-(-3), -4 - 12, 10 -6)\n\n = (9, -16, 4)\n\n\nSo, 2u-3v= (9, -16, 4)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nFind the sum of two vectors u = <3, -2, 5> and v = <-1, 4, 2> and the scalar product of 2u - 3v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the sum of the vectors u and v:\n\n'
                    'To find the sum of two vectors, we add their corresponding components:\n\n'
                    'u + v = <3, -2, 5> + <-1, 4, 2> = <3 - 1, -2 + 4, 5 + 2> = <2, 2, 7>\n\n'
                    'So, the sum of vectors u and v is <2, 2, 7>.\n\n'
                    'Step 2: Find the scalar product of 2u - 3v:\n\n'
                    'To find the scalar product of a vector with a scalar, we multiply each component of the vector by the scalar.\n\n'
                    '2u = 2 * <3, -2, 5> = <6, -4, 10>\n'
                    '3v = 3 * <-1, 4, 2> = <-3, 12, 6>\n\n'
                    'Now, subtracting 3v from 2u:\n\n'
                    '2u - 3v = <6, -4, 10> - <-3, 12, 6> = <6 - (-3), -4 - 12, 10 - 6> = <9, -16, 4>\n\n'
                    'So, the scalar product of 2u - 3v is <9, -16, 4>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nGiven vectors u = <-2, 3> and v = <4, -1>, find the dot product u · v and the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-2)(4) + (3)(-1) = -8 - 3 = -11\n\n'
                    'So, the dot product of u and v is -11.\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((-2)^2 + (3)^2) = sqrt(4 + 9) = sqrt(13)\n'
                    '|v| = sqrt((4)^2 + (-1)^2) = sqrt(16 + 1) = sqrt(17)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -11 / (sqrt(13) * sqrt(17))\n\n'
                    'So, the angle between u and v is cos^(-1)(-11 / (sqrt(13) * sqrt(17))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nGiven vectors u = <2, -5> and v = <-3, 4>, find the cross product u × v and the area of the parallelogram formed by them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v is given by:\n\n'
                    'u × v = |u| * |v| * sin(θ) * n\n\n'
                    'where |u| and |v| are the magnitudes of u and v, θ is the angle between them, and n is the unit normal to the plane containing u and v.\n\n'
                    'First, find the magnitude of the cross product:\n\n'
                    '|u × v| = |u| * |v| * sin(θ)\n\n'
                    '|u| = sqrt((2)^2 + (-5)^2) = sqrt(4 + 25) = sqrt(29)\n'
                    '|v| = sqrt((-3)^2 + (4)^2) = sqrt(9 + 16) = sqrt(25) = 5\n\n'
                    'θ = angle between u and v = sin^(-1)(cross(u · v) / (|u| * |v|))\n'
                    'θ = sin^(-1)((2 * 4 - (-5) * (-3)) / (sqrt(29) * 5))\n\n'
                    'So, the cross product of u and v is |u × v| = sqrt(29) * 5 * sin(θ).\n\n'
                    'Step 2: Find the area of the parallelogram formed by vectors u and v:\n\n'
                    'The area of the parallelogram formed by vectors u and v is equal to the magnitude of their cross product:\n\n'
                    'Area = |u × v| = sqrt(29) * 5 * sin(θ).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nGiven vectors u = <-2, 3, 1> and v = <4, -1, 2>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the projection of vector u onto v:\n\n'
                    'The projection of vector u onto v is given by the formula:\n\n'
                    'proj_v(u) = (u · v) / |v|\n\n'
                    'First, find the dot product of u and v:\n\n'
                    'u · v = (-2)(4) + (3)(-1) + (1)(2) = -8 - 3 + 2 = -9\n\n'
                    'Then, find the magnitude of vector v:\n\n'
                    '|v| = sqrt((4)^2 + (-1)^2 + (2)^2) = sqrt(16 + 1 + 4) = sqrt(21)\n\n'
                    'So, the projection of u onto v is proj_v(u) = -9 / sqrt(21).\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nGiven vectors u = <2, 3> and v = <4, -1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(4) + (3)(-1) = 8 - 3 = 5\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((2)^2 + (3)^2) = sqrt(4 + 9) = sqrt(13)\n'
                    '|v| = sqrt((4)^2 + (-1)^2) = sqrt(16 + 1) = sqrt(17)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = 5 / (sqrt(13) * sqrt(17))\n\n'
                    'So, the angle between u and v is cos^(-1)(5 / (sqrt(13) * sqrt(17))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nGiven vectors u = <1, -2, 3> and v = <4, 5, -6>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(4) + (-2)(5) + (3)(-6) = 4 - 10 - 18 = -24\n\n'
                    'So, the dot product of vectors u and v is -24.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nGiven vectors u = <1, 2> and v = <-3, 4>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 2D is given by:\n\n'
                    'u x v = (u₁ * v₂ - u₂ * v₁)\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (1 * 4 - 2 * -3)\n'
                    '      = (4 + 6)\n'
                    '      = 10\n\n'
                    'So, the cross product of vectors u and v is 10.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nGiven vectors u = <3, -2, 5> and v = <-1, 4, 2>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (3)(-1) + (-2)(4) + (5)(2) = -3 - 8 + 10 = -1\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((3)^2 + (-2)^2 + (5)^2) = sqrt(9 + 4 + 25) = sqrt(38)\n'
                    '|v| = sqrt((-1)^2 + (4)^2 + (2)^2) = sqrt(1 + 16 + 4) = sqrt(21)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -1 / (sqrt(38) * sqrt(21))\n\n'
                    'So, the angle between u and v is cos^(-1)(-1 / (sqrt(38) * sqrt(21))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nGiven vectors u = <1, -3, 2> and v = <-2, 4, 1>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <-2, 4, 1> / sqrt((-2)^2 + 4^2 + 1^2)\n'
                    '   = <-2, 4, 1> / sqrt(4 + 16 + 1)\n'
                    '   = <-2, 4, 1> / sqrt(21)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (1)(-2/sqrt(21)) + (-3)(4/sqrt(21)) + (2)(1/sqrt(21))\n'
                    '       = (-2/sqrt(21)) - (12/sqrt(21)) + (2/sqrt(21))\n'
                    '       = -10/sqrt(21)\n\n'
                    'So, the scalar projection of u onto v is -10/sqrt(21).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (-10/sqrt(21)) * <-2/sqrt(21), 4/sqrt(21), 1/sqrt(21)>\n'
                    '                              = <-20/21, 40/21, 10/21>\n\n'
                    'So, the vector projection of u onto v is <-20/21, 40/21, 10/21>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nGiven vectors u = <1, 2, -1> and v = <3, -1, 4>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(3) + (2)(-1) + (-1)(4) = 3 - 2 - 4 = -3\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (2)^2 + (-1)^2) = sqrt(1 + 4 + 1) = sqrt(6)\n'
                    '|v| = sqrt((3)^2 + (-1)^2 + (4)^2) = sqrt(9 + 1 + 16) = sqrt(26)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -3 / (sqrt(6) * sqrt(26))\n\n'
                    'So, the angle between u and v is cos^(-1)(-3 / (sqrt(6) * sqrt(26))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nGiven vectors u = <-1, 2, 3> and v = <4, 5, 6>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = <-2*6 - 3*5, 3*4 - (-1)*6, (-1)*5 - 2*4>\n'
                    '      = <-12 - 15, 12 + 6, -5 - 8>\n'
                    '      = <-27, 18, -13>\n\n'
                    'So, the cross product of vectors u and v is <-27, 18, -13>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nGiven vectors u = <1, -1, 2> and v = <3, 2, -1>, find the vector projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <3, 2, -1> / sqrt((3)^2 + (2)^2 + (-1)^2)\n'
                    '   = <3, 2, -1> / sqrt(9 + 4 + 1)\n'
                    '   = <3, 2, -1> / sqrt(14)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (1*3 + -1*2 + 2*-1) / sqrt(14)\n'
                    '       = (3 - 2 - 2) / sqrt(14)\n'
                    '       = -1 / sqrt(14)\n\n'
                    'So, the scalar projection of u onto v is -1 / sqrt(14).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (-1 / sqrt(14)) * <3/sqrt(14), 2/sqrt(14), -1/sqrt(14)>\n'
                    '                              = <-3/sqrt(14), -2/sqrt(14), 1/sqrt(14)>\n\n'
                    'So, the vector projection of u onto v is <-3/sqrt(14), -2/sqrt(14), 1/sqrt(14)>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nGiven vectors u = <-2, 3> and v = <4, -1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-2)(4) + (3)(-1) = -8 - 3 = -11\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((-2)^2 + (3)^2) = sqrt(4 + 9) = sqrt(13)\n'
                    '|v| = sqrt((4)^2 + (-1)^2) = sqrt(16 + 1) = sqrt(17)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -11 / (sqrt(13) * sqrt(17))\n\n'
                    'So, the angle between u and v is cos^(-1)(-11 / (sqrt(13) * sqrt(17))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nGiven vectors u = <2, -1, 3> and v = <1, 4, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (-1)(4) + (3)(2) = 2 - 4 + 6 = 4\n\n'
                    'So, the dot product of vectors u and v is 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nGiven vectors u = <-1, 2> and v = <-3, 4>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 2D is given by:\n\n'
                    'u x v = (u₁ * v₂ - u₂ * v₁)\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (-1*4 - 2*-3)\n'
                    '      = (-4 + 6)\n'
                    '      = 2\n\n'
                    'So, the cross product of vectors u and v is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nGiven vectors u = <3, -2> and v = <5, 1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (3)(5) + (-2)(1) = 15 - 2 = 13\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((3)^2 + (-2)^2) = sqrt(9 + 4) = sqrt(13)\n'
                    '|v| = sqrt((5)^2 + (1)^2) = sqrt(25 + 1) = sqrt(26)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = 13 / (sqrt(13) * sqrt(26))\n\n'
                    'So, the angle between u and v is cos^(-1)(13 / (sqrt(13) * sqrt(26))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nGiven vectors u = <-2, 3, -1> and v = <4, -1, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-2)(4) + (3)(-1) + (-1)(2) = -8 - 3 - 2 = -13\n\n'
                    'So, the dot product of vectors u and v is -13.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nGiven vectors u = <1, -2, 3> and v = <2, 3, -1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = <-2*-1 - 3*2, 3*1 - 1*2, 1*3 - (-2)*2>\n'
                    '      = <2 - 6, 3 - 2, 3 + 4>\n'
                    '      = <-4, 1, 7>\n\n'
                    'So, the cross product of vectors u and v is <-4, 1, 7>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nGiven vectors u = <-1, 2> and v = <3, -1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-1)(3) + (2)(-1) = -3 - 2 = -5\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((-1)^2 + (2)^2) = sqrt(1 + 4) = sqrt(5)\n'
                    '|v| = sqrt((3)^2 + (-1)^2) = sqrt(9 + 1) = sqrt(10)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -5 / (sqrt(5) * sqrt(10))\n\n'
                    'So, the angle between u and v is cos^(-1)(-5 / (sqrt(5) * sqrt(10))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nGiven vectors u = <3, -2> and v = <4, 1>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <4, 1> / sqrt((4)^2 + (1)^2)\n'
                    '   = <4, 1> / sqrt(16 + 1)\n'
                    '   = <4, 1> / sqrt(17)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (3*4 + -2*1) / sqrt(17)\n'
                    '       = (12 - 2) / sqrt(17)\n'
                    '       = 10 / sqrt(17)\n\n'
                    'So, the scalar projection of u onto v is 10 / sqrt(17).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (10 / sqrt(17)) * <4/sqrt(17), 1/sqrt(17)>\n'
                    '                              = <40/17, 10/17>\n\n'
                    'So, the vector projection of u onto v is <40/17, 10/17>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nGiven vectors u = <-3, 2, 4> and v = <1, -1, 3>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-3)(1) + (2)(-1) + (4)(3) = -3 - 2 + 12 = 7\n\n'
                    'So, the dot product of vectors u and v is 7.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nGiven vectors u = <2, 1, -3> and v = <-1, 2, 2>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (1*-3 - (-3)*2, -3*-1 - 2*2, 2*2 - 1*1)\n'
                    '      = (-3 + 6, 3 - 4, 4 - 1)\n'
                    '      = (3, -1, 3)\n\n'
                    'So, the cross product of vectors u and v is <3, -1, 3>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nGiven vectors u = <1, -2, 3> and v = <4, 1, -2>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(4) + (-2)(1) + (3)(-2) = 4 - 2 - 6 = -4\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (-2)^2 + (3)^2) = sqrt(1 + 4 + 9) = sqrt(14)\n'
                    '|v| = sqrt((4)^2 + (1)^2 + (-2)^2) = sqrt(16 + 1 + 4) = sqrt(21)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -4 / (sqrt(14) * sqrt(21))\n\n'
                    'So, the angle between u and v is cos^(-1)(-4 / (sqrt(14) * sqrt(21))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nGiven vectors u = <2, -1> and v = <1, 3>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <1, 3> / sqrt((1)^2 + (3)^2)\n'
                    '   = <1, 3> / sqrt(1 + 9)\n'
                    '   = <1, 3> / sqrt(10)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (2*1 + -1*3) / sqrt(10)\n'
                    '       = (2 - 3) / sqrt(10)\n'
                    '       = -1 / sqrt(10)\n\n'
                    'So, the scalar projection of u onto v is -1 / sqrt(10).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (-1 / sqrt(10)) * <1/sqrt(10), 3/sqrt(10)>\n'
                    '                              = <-1/10, -3/10>\n\n'
                    'So, the vector projection of u onto v is <-1/10, -3/10>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nGiven vectors u = <-2, 3, 1> and v = <4, -1, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-2)(4) + (3)(-1) + (1)(2) = -8 - 3 + 2 = -9\n\n'
                    'So, the dot product of vectors u and v is -9.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nGiven vectors u = <1, 2, -3> and v = <-2, 3, 1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (2*1 - (-3)*3, (-3)*(-2) - 1*1, 1*3 - 2*(-2))\n'
                    '      = (2 + 9, 6 - 1, 3 + 4)\n'
                    '      = (11, 5, 7)\n\n'
                    'So, the cross product of vectors u and v is <11, 5, 7>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nGiven vectors u = <1, 2, -1> and v = <2, -1, 1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(2) + (2)(-1) + (-1)(1) = 2 - 2 - 1 = -1\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (2)^2 + (-1)^2) = sqrt(1 + 4 + 1) = sqrt(6)\n'
                    '|v| = sqrt((2)^2 + (-1)^2 + (1)^2) = sqrt(4 + 1 + 1) = sqrt(6)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -1 / (sqrt(6) * sqrt(6))\n'
                    '       = -1 / 6\n\n'
                    'So, the angle between u and v is cos^(-1)(-1 / 6).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nGiven vectors u = <2, -1> and v = <3, 4>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <3, 4> / sqrt((3)^2 + (4)^2)\n'
                    '   = <3, 4> / sqrt(9 + 16)\n'
                    '   = <3, 4> / 5\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (2*3 + -1*4) / 5\n'
                    '       = (6 - 4) / 5\n'
                    '       = 2 / 5\n\n'
                    'So, the scalar projection of u onto v is 2 / 5.\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (2 / 5) * <3/5, 4/5>\n'
                    '                              = <6/25, 8/25>\n\n'
                    'So, the vector projection of u onto v is <6/25, 8/25>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nGiven vectors u = <2, -3, 1> and v = <1, 1, -2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (-3)(1) + (1)(-2) = 2 - 3 - 2 = -3\n\n'
                    'So, the dot product of vectors u and v is -3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nGiven vectors u = <1, -1, 2> and v = <3, 2, -1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (-1*-1 - 2*2, 2*3 - 1*1, 1*2 - (-1)*3)\n'
                    '      = (1 - 4, 6 - 1, 2 + 3)\n'
                    '      = (-3, 5, 5)\n\n'
                    'So, the cross product of vectors u and v is <-3, 5, 5>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nGiven vectors u = <2, 1, -1> and v = <1, -3, 2>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (1)(-3) + (-1)(2) = 2 - 3 - 2 = -3\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((2)^2 + (1)^2 + (-1)^2) = sqrt(4 + 1 + 1) = sqrt(6)\n'
                    '|v| = sqrt((1)^2 + (-3)^2 + (2)^2) = sqrt(1 + 9 + 4) = sqrt(14)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -3 / (sqrt(6) * sqrt(14))\n\n'
                    'So, the angle between u and v is cos^(-1)(-3 / (sqrt(6) * sqrt(14))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nGiven vectors u = <1, 2> and v = <3, 4>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <3, 4> / sqrt((3)^2 + (4)^2)\n'
                    '   = <3, 4> / sqrt(9 + 16)\n'
                    '   = <3, 4> / 5\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (1*3 + 2*4) / 5\n'
                    '       = (3 + 8) / 5\n'
                    '       = 11 / 5\n\n'
                    'So, the scalar projection of u onto v is 11 / 5.\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (11 / 5) * <3/5, 4/5>\n'
                    '                              = <33/25, 44/25>\n\n'
                    'So, the vector projection of u onto v is <33/25, 44/25>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nGiven vectors u = <2, -1, 3> and v = <1, 2, -2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (-1)(2) + (3)(-2) = 2 - 2 - 6 = -6\n\n'
                    'So, the dot product of vectors u and v is -6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nGiven vectors u = <1, 0, -1> and v = <0, 1, 1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (0*-1 - (-1)*1, (-1)*0 - 1*0, 1*1 - 0*0)\n'
                    '      = (0 + 1, 0 - 0, 1 - 0)\n'
                    '      = (1, 0, 1)\n\n'
                    'So, the cross product of vectors u and v is <1, 0, 1>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nGiven vectors u = <3, 1, 2> and v = <1, -2, 1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (3)(1) + (1)(-2) + (2)(1) = 3 - 2 + 2 = 3\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((3)^2 + (1)^2 + (2)^2) = sqrt(9 + 1 + 4) = sqrt(14)\n'
                    '|v| = sqrt((1)^2 + (-2)^2 + (1)^2) = sqrt(1 + 4 + 1) = sqrt(6)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = 3 / (sqrt(14) * sqrt(6))\n\n'
                    'So, the angle between u and v is cos^(-1)(3 / (sqrt(14) * sqrt(6))).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nGiven vectors u = <1, 1> and v = <2, 3>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <2, 3> / sqrt((2)^2 + (3)^2)\n'
                    '   = <2, 3> / sqrt(4 + 9)\n'
                    '   = <2, 3> / sqrt(13)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (1*2 + 1*3) / sqrt(13)\n'
                    '       = (2 + 3) / sqrt(13)\n'
                    '       = 5 / sqrt(13)\n\n'
                    'So, the scalar projection of u onto v is 5 / sqrt(13).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (5 / sqrt(13)) * <2/sqrt(13), 3/sqrt(13)>\n'
                    '                              = <10/13, 15/13>\n\n'
                    'So, the vector projection of u onto v is <10/13, 15/13>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nGiven vectors u = <3, -2, 1> and v = <1, 4, -3>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (3)(1) + (-2)(4) + (1)(-3) = 3 - 8 - 3 = -8\n\n'
                    'So, the dot product of vectors u and v is -8.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nGiven vectors u = <2, -1, 3> and v = <1, -2, 2>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (-1*2 - 3*(-2), 3*1 - 2*2, 2*(-2) - (-1)*1)\n'
                    '      = (-2 + 6, 3 - 4, -4 + 1)\n'
                    '      = (4, -1, -3)\n\n'
                    'So, the cross product of vectors u and v is <4, -1, -3>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nGiven vectors u = <1, 2, 2> and v = <2, 0, -1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(2) + (2)(0) + (2)(-1) = 2 + 0 - 2 = 0\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (2)^2 + (2)^2) = sqrt(1 + 4 + 4) = sqrt(9) = 3\n'
                    '|v| = sqrt((2)^2 + (0)^2 + (-1)^2) = sqrt(4 + 0 + 1) = sqrt(5)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = 0 / (3 * sqrt(5)) = 0\n\n'
                    'So, the angle between u and v is cos^(-1)(0) = π/2 radians or 90 degrees.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nGiven vectors u = <2, 3> and v = <1, -1>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <1, -1> / sqrt((1)^2 + (-1)^2)\n'
                    '   = <1, -1> / sqrt(1 + 1)\n'
                    '   = <1, -1> / sqrt(2)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (2*1 + 3*(-1)) / sqrt(2)\n'
                    '       = (2 - 3) / sqrt(2)\n'
                    '       = -1 / sqrt(2)\n\n'
                    'So, the scalar projection of u onto v is -1 / sqrt(2).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (-1 / sqrt(2)) * <1/sqrt(2), -1/sqrt(2)>\n'
                    '                              = <-1/2, 1/2>\n\n'
                    'So, the vector projection of u onto v is <-1/2, 1/2>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nGiven vectors u = <2, 1, -1> and v = <1, 3, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (1)(3) + (-1)(2) = 2 + 3 - 2 = 3\n\n'
                    'So, the dot product of vectors u and v is 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nGiven vectors u = <3, 2, 1> and v = <1, -1, 2>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (2*2 - 1*(-1), 1*1 - 3*2, 3*(-1) - 2*1)\n'
                    '      = (4 + 1, 1 - 6, -3 - 2)\n'
                    '      = (5, -5, -5)\n\n'
                    'So, the cross product of vectors u and v is <5, -5, -5>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nGiven vectors u = <1, -2, 3> and v = <2, 1, -2>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(2) + (-2)(1) + (3)(-2) = 2 - 2 - 6 = -6\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (-2)^2 + (3)^2) = sqrt(1 + 4 + 9) = sqrt(14)\n'
                    '|v| = sqrt((2)^2 + (1)^2 + (-2)^2) = sqrt(4 + 1 + 4) = sqrt(9) = 3\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = -6 / (sqrt(14) * 3)\n\n'
                    'So, the angle between u and v is cos^(-1)(-6 / (sqrt(14) * 3)).\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nGiven vectors u = <1, 1> and v = <2, 3>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <2, 3> / sqrt((2)^2 + (3)^2)\n'
                    '   = <2, 3> / sqrt(4 + 9)\n'
                    '   = <2, 3> / sqrt(13)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (1*2 + 1*3) / sqrt(13)\n'
                    '       = (2 + 3) / sqrt(13)\n'
                    '       = 5 / sqrt(13)\n\n'
                    'So, the scalar projection of u onto v is 5 / sqrt(13).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (5 / sqrt(13)) * <2/sqrt(13), 3/sqrt(13)>\n'
                    '                              = <10/13, 15/13>\n\n'
                    'So, the vector projection of u onto v is <10/13, 15/13>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nGiven vectors u = <-1, 2, -3> and v = <3, -1, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (-1)(3) + (2)(-1) + (-3)(2) = -3 - 2 - 6 = -11\n\n'
                    'So, the dot product of vectors u and v is -11.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nGiven vectors u = <1, 2, 1> and v = <2, 0, -1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (2*(-1) - 1*0, 1*2 - 1*(-1), 1*0 - 2*2)\n'
                    '      = (-2 - 0, 2 + 1, 0 - 4)\n'
                    '      = (-2, 3, -4)\n\n'
                    'So, the cross product of vectors u and v is <-2, 3, -4>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nGiven vectors u = <1, 0, -1> and v = <1, -1, 1>, find the angle between them.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (1)(1) + (0)(-1) + (-1)(1) = 1 + 0 - 1 = 0\n\n'
                    'Step 2: Find the magnitude of vectors u and v:\n\n'
                    'The magnitude of a vector is given by the square root of the sum of the squares of its components:\n\n'
                    '|u| = sqrt((1)^2 + (0)^2 + (-1)^2) = sqrt(1 + 0 + 1) = sqrt(2)\n'
                    '|v| = sqrt((1)^2 + (-1)^2 + (1)^2) = sqrt(1 + 1 + 1) = sqrt(3)\n\n'
                    'Step 3: Find the angle between u and v:\n\n'
                    'The angle between two vectors u and v can be found using the formula:\n\n'
                    'cos(θ) = (u · v) / (|u| * |v|)\n\n'
                    'Substituting the values:\n\n'
                    'cos(θ) = 0 / (sqrt(2) * sqrt(3)) = 0\n\n'
                    'So, the angle between u and v is cos^(-1)(0) = π/2 radians or 90 degrees.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nGiven vectors u = <3, 2> and v = <1, -1>, find the projection of u onto v.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scalar projection of u onto v:\n\n'
                    'The scalar projection of u onto v is given by the dot product of u and the unit vector in the direction of v:\n\n'
                    'Scalar projection of u onto v = (u · v) / |v|\n\n'
                    'First, find the unit vector in the direction of v:\n\n'
                    'v̂ = v / |v|\n'
                    '   = <1, -1> / sqrt((1)^2 + (-1)^2)\n'
                    '   = <1, -1> / sqrt(1 + 1)\n'
                    '   = <1, -1> / sqrt(2)\n\n'
                    'Now, find the dot product of u and v̂:\n\n'
                    'u · v̂ = (3*1 + 2*(-1)) / sqrt(2)\n'
                    '       = (3 - 2) / sqrt(2)\n'
                    '       = 1 / sqrt(2)\n\n'
                    'So, the scalar projection of u onto v is 1 / sqrt(2).\n\n'
                    'Step 2: Find the vector projection of u onto v:\n\n'
                    'The vector projection of u onto v is given by the scalar projection of u onto v multiplied by the unit vector in the direction of v:\n\n'
                    'Vector projection of u onto v = (u · v̂) * v̂\n'
                    '                              = (1 / sqrt(2)) * <1/sqrt(2), -1/sqrt(2)>\n'
                    '                              = <1/2, -1/2>\n\n'
                    'So, the vector projection of u onto v is <1/2, -1/2>.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nGiven vectors u = <2, 1, -2> and v = <1, -3, 2>, find the dot product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the dot product of vectors u and v:\n\n'
                    'The dot product of two vectors u and v is given by the sum of the products of their corresponding components:\n\n'
                    'u · v = (2)(1) + (1)(-3) + (-2)(2) = 2 - 3 - 4 = -5\n\n'
                    'So, the dot product of vectors u and v is -5.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nGiven vectors u = <1, 2, -1> and v = <3, -1, 1>, find the cross product.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the cross product of vectors u and v:\n\n'
                    'The cross product of two vectors u and v in 3D is given by:\n\n'
                    'u x v = <u₂v₃ - u₃v₂, u₃v₁ - u₁v₃, u₁v₂ - u₂v₁>\n\n'
                    'Substituting the values:\n\n'
                    'u x v = (2*1 - (-1)*(-1), (-1)*3 - 1*1, 1*2 - 3*1)\n'
                    '      = (2 - 1, -(-3) - 1, 2 - 3)\n'
                    '      = (1, 2, -1)\n\n'
                    'So, the cross product of vectors u and v is <1, 2, -1>.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
