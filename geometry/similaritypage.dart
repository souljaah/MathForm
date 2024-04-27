import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Similarity extends StatelessWidget {
  final Color chosenColor;
  Similarity ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Similarity and Congruence'),
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
                'Similarity and Congruence',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Similarity and Congruence are terms used to describe the relationships between geometric figues.\n\n1. Similarity:\n\nTwo geometric figures are said to be similar if they have the same shape but possibly different sizes.\n\nSimilar figures have corresponding angles that are congruent and corresponding sides that are proportional.\n\nThe ratio of corresponding side lengths in similar figures is called the scale factor.\n\nSimilarity transformations such as dilation, rotation, and reflection preserve the shape of a figure.\n\nSimilarity is denoted by the symbol "∼".\n\n2. Congruence:\n\nTwo geometric figures are congruent if they have the same shape and size.\n\nCongruent figures have corresponding angles that are congruent and corresponding sides that have the same length.\n\nCongruence transformations such as translations, rotations, and reflections preserve both the shape and size of a figure.\n\nCongruence is denoted by the symbol "≅".',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Similarity and Congruence of Triangles\n\n'
                    'Given two triangles, triangle ABC and triangle DEF, with the following measurements:\n\n'
                    'Triangle ABC:\n'
                    '- Side AB = 6 units\n'
                    '- Side AC = 8 units\n'
                    '- Side BC = 10 units\n\n'
                    'Triangle DEF:\n'
                    '- Side DE = 9 units\n'
                    '- Side DF = 12 units\n'
                    '- Side EF = 15 units\n\n'
                    'Step 1: Determine if the triangles are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both triangles:\n\n'
                    'AB/DE = AC/DF = BC/EF\n'
                    'Substituting the given values:\n\n'
                    '6/9 = 8/12 = 10/15\n'
                    '2/3 = 2/3 = 2/3\n\n'
                    'Since all ratios are equal, the triangles ABC and DEF are similar.\n\n'
                    'Step 2: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both triangles:\n\n'
                    'AB = DE\n'
                    'AC = DF\n'
                    'BC = EF\n'
                    'Substituting the given values:\n\n'
                    '6 ≠ 9\n'
                    '8 ≠ 12\n'
                    '10 ≠ 15\n\n'
                    'Since not all corresponding sides are equal in length, the triangles ABC and DEF are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles ABC and DEF are similar because their corresponding side lengths have the same ratio.\n'
                    '- The triangles ABC and DEF are not congruent because not all corresponding sides have the same length.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Similarity and Congruence of Triangles\n\n'
                    'Given two triangles, triangle ABC and triangle DEF, with the following measurements:\n\n'
                    'Triangle ABC:\n'
                    '- Side AB = 6 units\n'
                    '- Side BC = 8 units\n'
                    '- Side AC = 10 units\n\n'
                    'Triangle DEF:\n'
                    '- Side DE = 9 units\n'
                    '- Side EF = 12 units\n'
                    '- Side DF = 15 units\n\n'
                    'Determine if the triangles ABC and DEF are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both triangles:\n\n'
                    'AB/DE = BC/EF = AC/DF\n'
                    'Substituting the given values:\n\n'
                    '6/9 = 8/12 = 10/15\n'
                    '2/3 = 2/3 = 2/3\n\n'
                    'Since all ratios are equal, the triangles ABC and DEF are similar.\n\n'
                    'Step 2: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both triangles:\n\n'
                    'AB ≠ DE\n'
                    'BC ≠ EF\n'
                    'AC ≠ DF\n\n'
                    'Since not all corresponding sides are equal in length, the triangles ABC and DEF are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles ABC and DEF are similar because their corresponding side lengths have the same ratio.\n'
                    '- The triangles ABC and DEF are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Similarity and Congruence of Quadrilaterals\n\n'
                    'Given two quadrilaterals, quadrilateral PQRS and quadrilateral WXYZ, with the following measurements:\n\n'
                    'Quadrilateral PQRS:\n'
                    '- Side PQ = 5 units\n'
                    '- Side QR = 7 units\n'
                    '- Side RS = 10 units\n'
                    '- Side SP = 6 units\n\n'
                    'Quadrilateral WXYZ:\n'
                    '- Side WX = 7 units\n'
                    '- Side XY = 10 units\n'
                    '- Side YZ = 6 units\n'
                    '- Side ZW = 5 units\n\n'
                    'Determine if the quadrilaterals PQRS and WXYZ are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the quadrilaterals are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both quadrilaterals:\n\n'
                    'PQ/WX = QR/XY = RS/YZ = SP/ZW\n'
                    'Substituting the given values:\n\n'
                    '5/7 = 7/10 = 10/6 = 6/5\n\n'
                    'Since all ratios are equal, the quadrilaterals PQRS and WXYZ are similar.\n\n'
                    'Step 2: Determine if the quadrilaterals are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both quadrilaterals:\n\n'
                    'PQ ≠ WX\n'
                    'QR ≠ XY\n'
                    'RS ≠ YZ\n'
                    'SP ≠ ZW\n\n'
                    'Since not all corresponding sides are equal in length, the quadrilaterals PQRS and WXYZ are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The quadrilaterals PQRS and WXYZ are similar because their corresponding side lengths have the same ratio.\n'
                    '- The quadrilaterals PQRS and WXYZ are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Congruence of Triangles\n\n'
                    'Given two triangles, triangle ABC and triangle DEF, with the following measurements:\n\n'
                    'Triangle ABC:\n'
                    '- Side AB = 4 units\n'
                    '- Side BC = 5 units\n'
                    '- Side AC = 6 units\n\n'
                    'Triangle DEF:\n'
                    '- Side DE = 4 units\n'
                    '- Side EF = 5 units\n'
                    '- Side DF = 6 units\n\n'
                    'Determine if the triangles ABC and DEF are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both triangles:\n\n'
                    'AB = DE\n'
                    'BC = EF\n'
                    'AC = DF\n\n'
                    'Since all corresponding sides are equal in length, the triangles ABC and DEF are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles ABC and DEF are congruent because all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Similarity and Congruence of Circles\n\n'
                    'Given two circles, circle O with radius 5 units and circle P with radius 7 units,\n'
                    'determine if the circles are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 5 / 7\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Step 2: Determine if the circles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of their radii:\n\n'
                    'Radius of circle O ≠ Radius of circle P\n\n'
                    'Since the radii are not equal, the circles O and P are not congruent.\n\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Congruence of Rectangles\n\n'
                    'Given two rectangles, rectangle ABCD and rectangle PQRS, with the following measurements:\n\n'
                    'Rectangle ABCD:\n'
                    '- Length AB = 8 units\n'
                    '- Width BC = 6 units\n\n'
                    'Rectangle PQRS:\n'
                    '- Length PQ = 6 units\n'
                    '- Width QR = 8 units\n\n'
                    'Determine if the rectangles ABCD and PQRS are congruent.',
                solution: 'Solution:\n\n'
                    'Solution:\n\n'
                    'Step 1: Determine if the rectangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths and widths of both rectangles:\n\n'
                    'AB ≠ PQ\n'
                    'BC ≠ QR\n\n'
                    'Since not all corresponding sides are equal in length, the rectangles ABCD and PQRS are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The rectangles ABCD and PQRS are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6: Congruence of Squares\n\n'
                    'Given two squares, square ABCD and square WXYZ, with the following measurements:\n\n'
                    'Square ABCD:\n'
                    '- Side AB = 10 units\n'
                    '- Side BC = 10 units\n'
                    '- Side CD = 10 units\n'
                    '- Side DA = 10 units\n\n'
                    'Square WXYZ:\n'
                    '- Side WX = 8 units\n'
                    '- Side XY = 8 units\n'
                    '- Side YZ = 8 units\n'
                    '- Side ZW = 8 units\n\n'
                    'Determine if the squares ABCD and WXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the squares are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both squares:\n\n'
                    'AB ≠ WX\n'
                    'BC ≠ XY\n'
                    'CD ≠ YZ\n'
                    'DA ≠ ZW\n\n'
                    'Since not all corresponding sides are equal in length, the squares ABCD and WXYZ are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The squares ABCD and WXYZ are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7: Similarity of Quadrilaterals\n\n'
                    'Given two quadrilaterals, quadrilateral MNOP and quadrilateral UVWX, with the following measurements:\n\n'
                    'Quadrilateral MNOP:\n'
                    '- Side MN = 12 units\n'
                    '- Side NO = 16 units\n'
                    '- Side OP = 20 units\n'
                    '- Side PM = 15 units\n\n'
                    'Quadrilateral UVWX:\n'
                    '- Side UV = 18 units\n'
                    '- Side VW = 24 units\n'
                    '- Side WX = 30 units\n'
                    '- Side XU = 22 units\n\n'
                    'Determine if the quadrilaterals MNOP and UVWX are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the quadrilaterals are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both quadrilaterals:\n\n'
                    'MN/UV = NO/VW = OP/WX = PM/XU\n'
                    'Substituting the given values:\n\n'
                    '12/18 = 16/24 = 20/30 = 15/22\n'
                    '2/3 = 2/3 = 2/3 = 15/22\n\n'
                    'Since not all ratios are equal, the quadrilaterals MNOP and UVWX are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The quadrilaterals MNOP and UVWX are not similar because not all corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8: Similarity of Circles\n\n'
                    'Given two circles, circle O with radius 10 units and circle P with radius 15 units,\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 10 / 15\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9: Similarity and Congruence of Regular Polygons\n\n'
                    'Given two regular pentagons, pentagon ABCDE and pentagon VWXYZ, with the following measurements:\n\n'
                    'Pentagon ABCDE:\n'
                    '- Side AB = 6 units\n'
                    '- Side BC = 6 units\n'
                    '- Side CD = 6 units\n'
                    '- Side DE = 6 units\n'
                    '- Side EA = 6 units\n\n'
                    'Pentagon VWXYZ:\n'
                    '- Side VW = 5 units\n'
                    '- Side WX = 5 units\n'
                    '- Side XY = 5 units\n'
                    '- Side YZ = 5 units\n'
                    '- Side ZV = 5 units\n\n'
                    'Determine if the pentagons ABCDE and VWXYZ are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the pentagons are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both pentagons:\n\n'
                    'AB/VW = BC/WX = CD/XY = DE/YZ = EA/ZV\n'
                    'Substituting the given values:\n\n'
                    '6/5 = 6/5 = 6/5 = 6/5 = 6/5\n\n'
                    'Since all ratios are equal, the pentagons ABCDE and VWXYZ are similar.\n\n'
                    'Step 2: Determine if the pentagons are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both pentagons:\n\n'
                    'AB ≠ VW\n'
                    'BC ≠ WX\n'
                    'CD ≠ XY\n'
                    'DE ≠ YZ\n'
                    'EA ≠ ZV\n\n'
                    'Since not all corresponding sides are equal in length, the pentagons ABCDE and VWXYZ are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The pentagons ABCDE and VWXYZ are similar because their corresponding side lengths have the same ratio.\n'
                    '- The pentagons ABCDE and VWXYZ are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10: Similarity and Congruence of Trapezoids\n\n'
                    'Given two trapezoids, trapezoid PQRST and trapezoid UVWXY, with the following measurements:\n\n'
                    'Trapezoid PQRST:\n'
                    '- Parallel Side PQ = 12 units\n'
                    '- Parallel Side RS = 18 units\n'
                    '- Non-Parallel Side PT = 8 units\n'
                    '- Non-Parallel Side QS = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Trapezoid UVWXY:\n'
                    '- Parallel Side UV = 9 units\n'
                    '- Parallel Side XY = 15 units\n'
                    '- Non-Parallel Side UW = 6 units\n'
                    '- Non-Parallel Side VX = 6 units\n'
                    '- Height = 4 units\n\n'
                    'Determine if the trapezoids PQRST and UVWXY are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the trapezoids are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both trapezoids:\n\n'
                    'PQ/UV = RS/XY = PT/UW = QS/VX\n'
                    'Substituting the given values:\n\n'
                    '12/9 = 18/15 = 8/6 = 8/6\n'
                    '4/3 = 6/5 = 4/3 = 4/3\n\n'
                    'Since all ratios are equal, the trapezoids PQRST and UVWXY are similar.\n\n'
                    'Step 2: Determine if the trapezoids are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both trapezoids:\n\n'
                    'PQ ≠ UV\n'
                    'RS ≠ XY\n'
                    'PT ≠ UW\n'
                    'QS ≠ VX\n\n'
                    'Since not all corresponding sides are equal in length, the trapezoids PQRST and UVWXY are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The trapezoids PQRST and UVWXY are similar because their corresponding side lengths have the same ratio.\n'
                    '- The trapezoids PQRST and UVWXY are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11: Similarity of Hexagons\n\n'
                    'Given two regular hexagons, hexagon ABCDEF and hexagon UVWXYZ, with the following measurements:\n\n'
                    'Hexagon ABCDEF:\n'
                    '- Side AB = 7 units\n'
                    '- Side BC = 7 units\n'
                    '- Side CD = 7 units\n'
                    '- Side DE = 7 units\n'
                    '- Side EF = 7 units\n'
                    '- Side FA = 7 units\n\n'
                    'Hexagon UVWXYZ:\n'
                    '- Side UV = 5 units\n'
                    '- Side VW = 5 units\n'
                    '- Side WX = 5 units\n'
                    '- Side XY = 5 units\n'
                    '- Side YZ = 5 units\n'
                    '- Side ZU = 5 units\n\n'
                    'Determine if the hexagons ABCDEF and UVWXYZ are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the hexagons are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both hexagons:\n\n'
                    'AB/UV = BC/VW = CD/WX = DE/XY = EF/YZ = FA/ZU\n'
                    'Substituting the given values:\n\n'
                    '7/5 = 7/5 = 7/5 = 7/5 = 7/5 = 7/5\n'
                    '7/5 = 7/5 = 7/5 = 7/5 = 7/5 = 7/5\n\n'
                    'Since all ratios are equal, the hexagons ABCDEF and UVWXYZ are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The hexagons ABCDEF and UVWXYZ are similar because their corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12: Congruence of Regular Octagons\n\n'
                    'Given two regular octagons, octagon ABCDEFGH and octagon UVWXYZ, with the following measurements:\n\n'
                    'Octagon ABCDEFGH:\n'
                    '- Side AB = 9 units\n'
                    '- Side BC = 9 units\n'
                    '- Side CD = 9 units\n'
                    '- Side DE = 9 units\n'
                    '- Side EF = 9 units\n'
                    '- Side FG = 9 units\n'
                    '- Side GH = 9 units\n'
                    '- Side HA = 9 units\n\n'
                    'Octagon UVWXYZ:\n'
                    '- Side UV = 9 units\n'
                    '- Side VW = 9 units\n'
                    '- Side WX = 9 units\n'
                    '- Side XY = 9 units\n'
                    '- Side YZ = 9 units\n'
                    '- Side ZU = 9 units\n'
                    '- Side ZA = 9 units\n'
                    '- Side AU = 9 units\n\n'
                    'Determine if the octagons ABCDEFGH and UVWXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the octagons are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both octagons:\n\n'
                    'AB = UV\n'
                    'BC = VW\n'
                    'CD = WX\n'
                    'DE = XY\n'
                    'EF = YZ\n'
                    'FG = ZU\n'
                    'GH = ZA\n'
                    'HA = AU\n\n'
                    'Since all corresponding sides are equal in length, the octagons ABCDEFGH and UVWXYZ are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The octagons ABCDEFGH and UVWXYZ are congruent because all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13: Similarity of Regular Polygons\n\n'
                    'Given two regular polygons, polygon ABCDE and polygon UVWXY, with the following measurements:\n\n'
                    'Polygon ABCDE (pentagon):\n'
                    '- Side AB = 8 units\n'
                    '- Side BC = 8 units\n'
                    '- Side CD = 8 units\n'
                    '- Side DE = 8 units\n'
                    '- Side EA = 8 units\n\n'
                    'Polygon UVWXY (hexagon):\n'
                    '- Side UV = 8 units\n'
                    '- Side VW = 8 units\n'
                    '- Side WX = 8 units\n'
                    '- Side XY = 8 units\n'
                    '- Side YZ = 8 units\n'
                    '- Side ZU = 8 units\n\n'
                    'Determine if the polygons ABCDE and UVWXY are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the polygons are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both polygons:\n\n'
                    'AB/UV = BC/VW = CD/WX = DE/XY = EA/YZ\n'
                    'Substituting the given values:\n\n'
                    '8/8 = 8/8 = 8/8 = 8/8 = 8/8\n'
                    '1 = 1 = 1 = 1 = 1\n\n'
                    'Since all ratios are equal, the polygons ABCDE and UVWXY are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The polygons ABCDE and UVWXY are similar because their corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14: Congruence of Regular Polygons\n\n'
                    'Given two regular polygons, polygon ABCDE and polygon UVWXY, with the following measurements:\n\n'
                    'Polygon ABCDE (pentagon):\n'
                    '- Side AB = 10 units\n'
                    '- Side BC = 10 units\n'
                    '- Side CD = 10 units\n'
                    '- Side DE = 10 units\n'
                    '- Side EA = 10 units\n\n'
                    'Polygon UVWXY (pentagon):\n'
                    '- Side UV = 12 units\n'
                    '- Side VW = 12 units\n'
                    '- Side WX = 12 units\n'
                    '- Side XY = 12 units\n'
                    '- Side YZ = 12 units\n'
                    '- Side ZU = 12 units\n\n'
                    'Determine if the polygons ABCDE and UVWXY are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the polygons are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both polygons:\n\n'
                    'AB ≠ UV\n'
                    'BC ≠ VW\n'
                    'CD ≠ WX\n'
                    'DE ≠ XY\n'
                    'EA ≠ YZ\n\n'
                    'Since not all corresponding sides are equal in length, the polygons ABCDE and UVWXY are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The polygons ABCDE and UVWXY are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15: Similarity of Rectangles\n\n'
                    'Given two rectangles, rectangle ABCD and rectangle WXYZ, with the following measurements:\n\n'
                    'Rectangle ABCD:\n'
                    '- Length AB = 12 units\n'
                    '- Width BC = 8 units\n\n'
                    'Rectangle WXYZ:\n'
                    '- Length WX = 18 units\n'
                    '- Width YZ = 12 units\n\n'
                    'Determine if the rectangles ABCD and WXYZ are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the rectangles are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both rectangles:\n\n'
                    'AB/WX = BC/YZ\n'
                    'Substituting the given values:\n\n'
                    '12/18 = 8/12\n'
                    '2/3 = 2/3\n\n'
                    'Since all ratios are equal, the rectangles ABCD and WXYZ are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The rectangles ABCD and WXYZ are similar because their corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16: Congruence of Rectangles\n\n'
                    'Given two rectangles, rectangle ABCD and rectangle WXYZ, with the following measurements:\n\n'
                    'Rectangle ABCD:\n'
                    '- Length AB = 10 units\n'
                    '- Width BC = 6 units\n\n'
                    'Rectangle WXYZ:\n'
                    '- Length WX = 10 units\n'
                    '- Width YZ = 6 units\n\n'
                    'Determine if the rectangles ABCD and WXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the rectangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths and widths of both rectangles:\n\n'
                    'AB = WX\n'
                    'BC = YZ\n\n'
                    'Since all corresponding sides are equal in length, the rectangles ABCD and WXYZ are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The rectangles ABCD and WXYZ are congruent because all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17: Similarity of Parallelograms\n\n'
                    'Given two parallelograms, parallelogram PQRD and parallelogram UVWX, with the following measurements:\n\n'
                    'Parallelogram PQRD:\n'
                    '- Side PQ = 15 units\n'
                    '- Side QR = 20 units\n'
                    '- Diagonal PR = 25 units\n'
                    '- Height = 10 units\n\n'
                    'Parallelogram UVWX:\n'
                    '- Side UV = 18 units\n'
                    '- Side VW = 24 units\n'
                    '- Diagonal UW = 30 units\n'
                    '- Height = 12 units\n\n'
                    'Determine if the parallelograms PQRD and UVWX are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the parallelograms are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both parallelograms:\n\n'
                    'PQ/UV = QR/VW = PR/UW\n'
                    'Substituting the given values:\n\n'
                    '15/18 = 20/24 = 25/30\n'
                    '5/6 = 5/6 = 5/6\n\n'
                    'Since all ratios are equal, the parallelograms PQRD and UVWX are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The parallelograms PQRD and UVWX are similar because their corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18: Congruence of Parallelograms\n\n'
                    'Given two parallelograms, parallelogram ABCD and parallelogram WXYZ, with the following measurements:\n\n'
                    'Parallelogram ABCD:\n'
                    '- Side AB = 10 units\n'
                    '- Side BC = 15 units\n'
                    '- Diagonal BD = 17 units\n'
                    '- Height = 8 units\n\n'
                    'Parallelogram WXYZ:\n'
                    '- Side WX = 10 units\n'
                    '- Side XY = 15 units\n'
                    '- Diagonal WZ = 17 units\n'
                    '- Height = 8 units\n\n'
                    'Determine if the parallelograms ABCD and WXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the parallelograms are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides and diagonals in both parallelograms:\n\n'
                    'AB = WX\n'
                    'BC = XY\n'
                    'BD = WZ\n\n'
                    'Since all corresponding sides and diagonals are equal in length, the parallelograms ABCD and WXYZ are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The parallelograms ABCD and WXYZ are congruent because all corresponding sides and diagonals have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19: Similarity of Trapezoids\n\n'
                    'Given two trapezoids, trapezoid PQRD and trapezoid UVWX, with the following measurements:\n\n'
                    'Trapezoid PQRD:\n'
                    '- Parallel Side PQ = 14 units\n'
                    '- Parallel Side RD = 18 units\n'
                    '- Non-Parallel Side PR = 10 units\n'
                    '- Non-Parallel Side QD = 10 units\n'
                    '- Height = 8 units\n\n'
                    'Trapezoid UVWX:\n'
                    '- Parallel Side UV = 12 units\n'
                    '- Parallel Side WX = 16 units\n'
                    '- Non-Parallel Side UW = 8 units\n'
                    '- Non-Parallel Side VX = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Determine if the trapezoids PQRD and UVWX are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the trapezoids are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both trapezoids:\n\n'
                    'PQ/UV = RD/WX = PR/UW = QD/VX\n'
                    'Substituting the given values:\n\n'
                    '14/12 = 18/16 = 10/8 = 10/8\n'
                    '7/6 = 9/8 = 5/4 = 5/4\n\n'
                    'Since not all ratios are equal, the trapezoids PQRD and UVWX are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The trapezoids PQRD and UVWX are not similar because not all corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20: Congruence of Trapezoids\n\n'
                    'Given two trapezoids, trapezoid PQRD and trapezoid UVWX, with the following measurements:\n\n'
                    'Trapezoid PQRD:\n'
                    '- Parallel Side PQ = 20 units\n'
                    '- Parallel Side RD = 16 units\n'
                    '- Non-Parallel Side PR = 8 units\n'
                    '- Non-Parallel Side QD = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Trapezoid UVWX:\n'
                    '- Parallel Side UV = 20 units\n'
                    '- Parallel Side WX = 16 units\n'
                    '- Non-Parallel Side UW = 8 units\n'
                    '- Non-Parallel Side VX = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Determine if the trapezoids PQRD and UVWX are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the trapezoids are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides and heights in both trapezoids:\n\n'
                    'PQ = UV\n'
                    'RD = WX\n'
                    'PR = UW\n'
                    'QD = VX\n'
                    'Height = Height\n\n'
                    'Since all corresponding sides and heights are equal in length, the trapezoids PQRD and UVWX are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The trapezoids PQRD and UVWX are congruent because all corresponding sides and heights have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21: Similarity of Circles with Sectors\n\n'
                    'Given two circles, circle O with radius 6 units and circle P with radius 9 units, and sectors OA and PB (central angles are congruent),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 6 / 9\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22: Similarity and Congruence of Right Triangles\n\n'
                    'Given two right triangles, triangle XYZ and triangle UVW, with the following measurements:\n\n'
                    'Triangle XYZ:\n'
                    '- Side XY = 5 units\n'
                    '- Side YZ = 12 units\n'
                    '- Side XZ = 13 units\n\n'
                    'Triangle UVW:\n'
                    '- Side UV = 15 units\n'
                    '- Side VW = 36 units\n'
                    '- Side UW = 39 units\n\n'
                    'Determine if the triangles XYZ and UVW are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both triangles:\n\n'
                    'XY/UV = YZ/VW = XZ/UW\n'
                    'Substituting the given values:\n\n'
                    '5/15 = 12/36 = 13/39\n'
                    '1/3 = 1/3 = 1/3\n\n'
                    'Since all ratios are equal, the triangles XYZ and UVW are similar.\n\n'
                    'Step 2: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we check if the triangles satisfy the conditions of the Pythagorean theorem:\n\n'
                    'XY² + YZ² = XZ²\n'
                    'UV² + VW² = UW²\n\n'
                    'Substituting the given values:\n\n'
                    '5² + 12² = 13²\n'
                    '15² + 36² = 39²\n\n'
                    '25 + 144 = 169\n'
                    '225 + 1296 = 1521\n\n'
                    '169 = 169\n'
                    '1521 = 1521\n\n'
                    'Since both triangles satisfy the Pythagorean theorem, they are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles XYZ and UVW are similar because their corresponding side lengths have the same ratio.\n'
                    '- The triangles XYZ and UVW are congruent because they satisfy the conditions of the Pythagorean theorem.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23: Congruence of Isosceles Triangles\n\n'
                    'Given two isosceles triangles, triangle ABC and triangle DEF, with the following measurements:\n\n'
                    'Triangle ABC:\n'
                    '- Base AB = 10 units\n'
                    '- Leg BC = 7 units\n'
                    '- Leg AC = 7 units\n\n'
                    'Triangle DEF:\n'
                    '- Base DE = 10 units\n'
                    '- Leg EF = 7 units\n'
                    '- Leg DF = 7 units\n\n'
                    'Determine if the triangles ABC and DEF are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both triangles:\n\n'
                    'AB = DE\n'
                    'BC = EF\n'
                    'AC = DF\n\n'
                    'Since all corresponding sides are equal in length, the triangles ABC and DEF are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles ABC and DEF are congruent because all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24: Similarity of Equilateral Triangles\n\n'
                    'Given two equilateral triangles, triangle ABC and triangle XYZ, with the following measurements:\n\n'
                    'Triangle ABC:\n'
                    '- Side AB = 6 units\n'
                    '- Side BC = 6 units\n'
                    '- Side AC = 6 units\n\n'
                    'Triangle XYZ:\n'
                    '- Side XY = 8 units\n'
                    '- Side YZ = 8 units\n'
                    '- Side XZ = 8 units\n\n'
                    'Determine if the triangles ABC and XYZ are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both triangles:\n\n'
                    'AB/XY = BC/YZ = AC/XZ\n'
                    'Substituting the given values:\n\n'
                    '6/8 = 6/8 = 6/8\n'
                    '3/4 = 3/4 = 3/4\n\n'
                    'Since all ratios are equal, the triangles ABC and XYZ are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles ABC and XYZ are similar because their corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25: Congruence of Equilateral Triangles\n\n'
                    'Given two equilateral triangles, triangle PQR and triangle STU, with the following measurements:\n\n'
                    'Triangle PQR:\n'
                    '- Side PQ = 9 units\n'
                    '- Side QR = 9 units\n'
                    '- Side PR = 9 units\n\n'
                    'Triangle STU:\n'
                    '- Side ST = 9 units\n'
                    '- Side TU = 9 units\n'
                    '- Side SU = 9 units\n\n'
                    'Determine if the triangles PQR and STU are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the triangles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both triangles:\n\n'
                    'PQ = ST\n'
                    'QR = TU\n'
                    'PR = SU\n\n'
                    'Since all corresponding sides are equal in length, the triangles PQR and STU are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The triangles PQR and STU are congruent because all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26: Similarity of Rhombuses\n\n'
                    'Given two rhombuses, rhombus ABCD and rhombus WXYZ, with the following measurements:\n\n'
                    'Rhombus ABCD:\n'
                    '- Side AB = 10 units\n'
                    '- Diagonal AC = 12 units\n\n'
                    'Rhombus WXYZ:\n'
                    '- Side WX = 15 units\n'
                    '- Diagonal WY = 18 units\n\n'
                    'Determine if the rhombuses ABCD and WXYZ are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the rhombuses are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths and diagonals in both rhombuses:\n\n'
                    'AB/WX = AC/WY\n'
                    'Substituting the given values:\n\n'
                    '10/15 = 12/18\n'
                    '2/3 = 2/3\n\n'
                    'Since all ratios are equal, the rhombuses ABCD and WXYZ are similar.\n\n'
                    'Conclusion:\n\n'
                    '- The rhombuses ABCD and WXYZ are similar because their corresponding side lengths and diagonals have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27: Congruence of Rhombuses\n\n'
                    'Given two rhombuses, rhombus ABCD and rhombus WXYZ, with the following measurements:\n\n'
                    'Rhombus ABCD:\n'
                    '- Side AB = 12 units\n'
                    '- Diagonal AC = 15 units\n\n'
                    'Rhombus WXYZ:\n'
                    '- Side WX = 12 units\n'
                    '- Diagonal WY = 15 units\n\n'
                    'Determine if the rhombuses ABCD and WXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the rhombuses are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides and diagonals in both rhombuses:\n\n'
                    'AB = WX\n'
                    'AC = WY\n\n'
                    'Since all corresponding sides and diagonals are equal in length, the rhombuses ABCD and WXYZ are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The rhombuses ABCD and WXYZ are congruent because all corresponding sides and diagonals have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28: Similarity of Circles with Arcs\n\n'
                    'Given two circles, circle O with radius 8 units and circle P with radius 10 units, and arcs OA and PB (central angles are congruent),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 8 / 10\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29: Similarity of Circles with Chords\n\n'
                    'Given two circles, circle O with radius 10 units and circle P with radius 12 units, and chords AB and CD (equal distance from the center),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 10 / 12\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30: Similarity of Circles with Secants\n\n'
                    'Given two circles, circle O with radius 6 units and circle P with radius 9 units, and secants AB and CD (intersecting the circles at points E and F respectively),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 6 / 9\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31: Similarity of Circles with Tangents\n\n'
                    'Given two circles, circle O with radius 15 units and circle P with radius 20 units, and tangents AB and CD (touching the circles at points E and F respectively),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 15 / 20\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32: Similarity of Circles with Common Chords\n\n'
                    'Given two circles, circle O with radius 10 units and circle P with radius 12 units, and a common chord AB (equal distance from the centers),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 10 / 12\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33: Similarity of Circles with Inscribed Angles\n\n'
                    'Given two circles, circle O with radius 6 units and circle P with radius 9 units, and inscribed angles ∠AOB and ∠POQ (with the same intercepted arc),\n'
                    'determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 6 / 9\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34: Similarity and Congruence of Quadrilaterals\n\n'
                    'Given two quadrilaterals, quadrilateral ABCD and quadrilateral WXYZ, with the following measurements:\n\n'
                    'Quadrilateral ABCD:\n'
                    '- Side AB = 10 units\n'
                    '- Side BC = 6 units\n'
                    '- Side CD = 10 units\n'
                    '- Side DA = 6 units\n\n'
                    'Quadrilateral WXYZ:\n'
                    '- Side WX = 12 units\n'
                    '- Side XY = 8 units\n'
                    '- Side YZ = 12 units\n'
                    '- Side ZW = 8 units\n\n'
                    'Determine if the quadrilaterals ABCD and WXYZ are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the quadrilaterals are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both quadrilaterals:\n\n'
                    'AB/WX = BC/XY = CD/YZ = DA/ZW\n'
                    'Substituting the given values:\n\n'
                    '10/12 = 6/8 = 10/12 = 6/8\n'
                    '5/6 = 3/4 = 5/6 = 3/4\n\n'
                    'Since all ratios are equal, the quadrilaterals ABCD and WXYZ are similar.\n\n'
                    'Step 2: Determine if the quadrilaterals are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides in both quadrilaterals:\n\n'
                    'AB ≠ WX\n'
                    'BC ≠ XY\n'
                    'CD ≠ YZ\n'
                    'DA ≠ ZW\n\n'
                    'Since not all corresponding sides are equal in length, the quadrilaterals ABCD and WXYZ are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The quadrilaterals ABCD and WXYZ are similar because their corresponding side lengths have the same ratio.\n'
                    '- The quadrilaterals ABCD and WXYZ are not congruent because not all corresponding sides have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35: Similarity and Congruence of Trapezoids\n\n'
                    'Given two trapezoids, trapezoid PQRS and trapezoid WXYZ, with the following measurements:\n\n'
                    'Trapezoid PQRS:\n'
                    '- Parallel Side PQ = 18 units\n'
                    '- Parallel Side RS = 14 units\n'
                    '- Non-Parallel Side PR = 10 units\n'
                    '- Non-Parallel Side QS = 10 units\n'
                    '- Height = 8 units\n\n'
                    'Trapezoid WXYZ:\n'
                    '- Parallel Side WX = 21 units\n'
                    '- Parallel Side YZ = 17 units\n'
                    '- Non-Parallel Side WY = 8 units\n'
                    '- Non-Parallel Side XZ = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Determine if the trapezoids PQRS and WXYZ are similar and if they are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the trapezoids are similar:\n\n'
                    'To determine similarity, we compare the ratios of corresponding side lengths in both trapezoids:\n\n'
                    'PQ/WX = RS/YZ = PR/WY = QS/XZ\n'
                    'Substituting the given values:\n\n'
                    '18/21 = 14/17 = 10/8 = 10/8\n'
                    '6/7 ≈ 0.71 ≈ 1.25 ≈ 1.25\n\n'
                    'Since not all ratios are equal, the trapezoids PQRS and WXYZ are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The trapezoids PQRS and WXYZ are not similar because not all corresponding side lengths have the same ratio.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36: Congruence of Trapezoids\n\n'
                    'Given two trapezoids, trapezoid PQRS and trapezoid WXYZ, with the following measurements:\n\n'
                    'Trapezoid PQRS:\n'
                    '- Parallel Side PQ = 16 units\n'
                    '- Parallel Side RS = 14 units\n'
                    '- Non-Parallel Side PR = 8 units\n'
                    '- Non-Parallel Side QS = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Trapezoid WXYZ:\n'
                    '- Parallel Side WX = 16 units\n'
                    '- Parallel Side YZ = 14 units\n'
                    '- Non-Parallel Side WY = 8 units\n'
                    '- Non-Parallel Side XZ = 8 units\n'
                    '- Height = 6 units\n\n'
                    'Determine if the trapezoids PQRS and WXYZ are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the trapezoids are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding sides and heights in both trapezoids:\n\n'
                    'PQ = WX\n'
                    'RS = YZ\n'
                    'PR = WY\n'
                    'QS = XZ\n'
                    'Height = Height\n\n'
                    'Since all corresponding sides and heights are equal in length, the trapezoids PQRS and WXYZ are congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The trapezoids PQRS and WXYZ are congruent because all corresponding sides and heights have the same length.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37: Similarity of Circles with Tangents and Chords\n\n'
                    'Given two circles, circle O with radius 8 units and circle P with radius 12 units, and tangents AB and CD (touching the circles at points E and F respectively),\n'
                    'and a chord GH in circle O and a chord IJ in circle P (both chords are equal distance from the centers), determine if the circles are similar.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are similar:\n\n'
                    'To determine similarity, we compare the ratios of their radii:\n\n'
                    'Radius of circle O / Radius of circle P = 8 / 12\n\n'
                    'Since the ratios of their radii are not equal, the circles O and P are not similar.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not similar because the ratios of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38: Congruence of Circles with Common Chords\n\n'
                    'Given two circles, circle O with radius 10 units and circle P with radius 12 units, and a common chord AB (equal distance from the centers),\n'
                    'determine if the circles are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding radii in both circles:\n\n'
                    'Radius of circle O = Radius of circle P\n\n'
                    'Since the radii are not equal, the circles O and P are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not congruent because the lengths of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39: Congruence of Circles with Inscribed Angles\n\n'
                    'Given two circles, circle O with radius 6 units and circle P with radius 9 units, and inscribed angles ∠AOB and ∠POQ (with the same intercepted arc),\n'
                    'determine if the circles are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding radii in both circles:\n\n'
                    'Radius of circle O = Radius of circle P\n\n'
                    'Since the radii are not equal, the circles O and P are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not congruent because the lengths of their radii are not equal.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40: Congruence of Circles with Central Angles\n\n'
                    'Given two circles, circle O with radius 15 units and circle P with radius 20 units, and central angles ∠AOB and ∠POQ (with the same intercepted arc),\n'
                    'determine if the circles are congruent.',
                solution: 'Solution:\n\n'
                    'Step 1: Determine if the circles are congruent:\n\n'
                    'To determine congruence, we compare the lengths of corresponding radii in both circles:\n\n'
                    'Radius of circle O = Radius of circle P\n\n'
                    'Since the radii are not equal, the circles O and P are not congruent.\n\n'
                    'Conclusion:\n\n'
                    '- The circles O and P are not congruent because the lengths of their radii are not equal.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 41: Similar Triangles and Proportions\n\n'
                    'In triangle ABC, D is a point on side AC such that AD = 4 cm, DC = 6 cm, and AB = 8 cm. If triangle DEF is similar to triangle ABC with DE = 5 cm, find the length of side EF.',
                solution: 'Solution:\n\n'
                    'Step 1: Use proportions in similar triangles:\n\n'
                    'AD/DE = DC/EF\n'
                    '4/5 = 6/EF\n'
                    'EF = (5 * 6) / 4 = 7.5 cm\n\n'
                    'Conclusion:\n\n'
                    'The length of side EF is 7.5 cm.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 42: Congruent Triangles and Angle-Side-Angle (ASA) Postulate\n\n'
                    'In triangle PQR and triangle XYZ, angle PQR is congruent to angle XYZ, angle QRP is congruent to angle YXZ, and PQ is congruent to XY. Prove that triangle PQR is congruent to triangle XYZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Corresponding angles are equal:\n\n'
                    'Angle PQR = Angle XYZ\n'
                    'Angle QRP = Angle YXZ\n\n'
                    'Step 2: Corresponding side lengths are equal:\n\n'
                    'PQ = XY\n\n'
                    'Step 3: Triangles are congruent by ASA (Angle-Side-Angle) postulate.\n\n'
                    'Conclusion:\n\n'
                    'Triangle PQR is congruent to triangle XYZ.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 43: Similarity in Right Triangles and the Pythagorean Theorem\n\n'
                    'In right triangle ABC, angle A is a right angle. If AB = 6 cm, BC = 8 cm, and triangle DEF is similar to triangle ABC with DE = 3 cm, find the length of side EF.',
                solution: 'Solution:\n\n'
                    'Step 1: Use the Pythagorean theorem to find AC:\n\n'
                    'AC^2 = AB^2 + BC^2 = 6^2 + 8^2 = 36 + 64 = 100\n'
                    'AC = √100 = 10 cm\n\n'
                    'Step 2: Use proportions in similar triangles:\n\n'
                    'AB/DE = BC/EF\n'
                    '6/3 = 8/EF\n'
                    'EF = (3 * 8) / 6 = 4 cm\n\n'
                    'Conclusion:\n\n'
                    'The length of side EF is 4 cm.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 44: Congruence of Triangles and Side-Angle-Side (SAS) Postulate\n\n'
                    'In triangle PQR and triangle STU, PQ is congruent to ST, QR is congruent to TU, and angle PQR is congruent to angle STU. Prove that triangle PQR is congruent to triangle STU.',
                solution: 'Solution:\n\n'
                    'Step 1: Corresponding side lengths are equal:\n\n'
                    'PQ = ST\n'
                    'QR = TU\n\n'
                    'Step 2: Corresponding angles are equal:\n\n'
                    'Angle PQR = Angle STU\n\n'
                    'Step 3: Triangles are congruent by SAS (Side-Angle-Side) postulate.\n\n'
                    'Conclusion:\n\n'
                    'Triangle PQR is congruent to triangle STU.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 45: Similarity and Altitude Ratios in Triangles\n\n'
                    'In triangle ABC and triangle DEF, AB is parallel to DE. If the length of segment AD is 4 cm, the length of segment AE is 6 cm, and the length of segment AC is 10 cm, find the length of segment DF.',
                solution: 'Solution:\n\n'
                    'Step 1: Use the altitude ratio in similar triangles:\n\n'
                    'AD/AE = DF/EF\n'
                    '4/6 = DF/10\n'
                    'DF = (4 * 10) / 6 = 20/3 cm\n\n'
                    'Conclusion:\n\n'
                    'The length of segment DF is 20/3 cm.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 46: Congruence of Right Triangles and Hypotenuse-Leg (HL) Theorem\n\n'
                    'In right triangle PQR and right triangle XYZ, angle PQR is congruent to angle XYZ, and PQ is congruent to XY. Prove that triangle PQR is congruent to triangle XYZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Corresponding side lengths are equal:\n\n'
                    'PQ = XY\n\n'
                    'Step 2: Corresponding angles are equal:\n\n'
                    'Angle PQR = Angle XYZ\n\n'
                    'Step 3: Triangles are congruent by HL (Hypotenuse-Leg) theorem.\n\n'
                    'Conclusion:\n\n'
                    'Triangle PQR is congruent to triangle XYZ.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 47: Similar Triangles and Side-Side-Side (SSS) Theorem\n\n'
                    'In triangle ABC and triangle DEF, AB = 4 cm, BC = 6 cm, and AC = 8 cm. If triangle ABC is similar to triangle DEF, find the lengths of sides DE and EF.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scale factor:\n\n'
                    'Scale factor = AB/DE = BC/EF = AC/DF\n'
                    'Scale factor = 4/DE = 6/EF = 8/DF\n\n'
                    'Step 2: Use the scale factor to find the lengths of sides DE and EF:\n\n'
                    'DE = 4 * (EF/6)\n'
                    'DF = 8 * (EF/6)\n\n'
                    'Conclusion:\n\n'
                    'The length of side DE is 4 * (EF/6) and the length of side DF is 8 * (EF/6).',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 48: Congruence of Quadrilaterals and Side-Side-Side-Side (SSSS) Theorem\n\n'
                    'In quadrilateral ABCD and quadrilateral WXYZ, AB is parallel to WX, BC is parallel to XY, CD is parallel to YZ, and DA is parallel to ZW. If AB = WX, BC = XY, CD = YZ, and DA = ZW, prove that quadrilateral ABCD is congruent to quadrilateral WXYZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Corresponding side lengths are equal:\n\n'
                    'AB = WX\n'
                    'BC = XY\n'
                    'CD = YZ\n'
                    'DA = ZW\n\n'
                    'Step 2: Quadrilaterals are congruent by SSSS (Side-Side-Side-Side) theorem.\n\n'
                    'Conclusion:\n\n'
                    'Quadrilateral ABCD is congruent to quadrilateral WXYZ.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 49: Similarity and Perimeter Ratios in Quadrilaterals\n\n'
                    'In quadrilateral ABCD and quadrilateral PQRS, AB is parallel to PQ, BC is parallel to QR, CD is parallel to RS, and DA is parallel to SP. If the lengths of corresponding sides are in the ratio 3:5, find the ratio of the perimeters of quadrilateral ABCD to quadrilateral PQRS.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scale factor:\n\n'
                    'Scale factor = AB/PQ = BC/QR = CD/RS = DA/SP = 3/5\n\n'
                    'Step 2: Use the scale factor to find the ratio of the perimeters:\n\n'
                    'Ratio of perimeters = (AB + BC + CD + DA) / (PQ + QR + RS + SP)\n'
                    'Ratio of perimeters = (3 + 5 + 3 + 5) / (5 + 5 + 5 + 5) = 16/20 = 4/5\n\n'
                    'Conclusion:\n\n'
                    'The ratio of the perimeters of quadrilateral ABCD to quadrilateral PQRS is 4:5.',
              ),
              SizedBox(height: 20,),
              ProblemSolvingWidget(
                problem: 'Problem 50: Congruence and Area of Regular Polygons\n\n'
                    'In regular hexagon ABCDEF, side length AB is 6 cm. If regular hexagon XYZUVW is similar to hexagon ABCDEF with side length XY = 8 cm, find the area of hexagon XYZUVW.',
                solution: 'Solution:\n\n'
                    'Step 1: Find the scale factor:\n\n'
                    'Scale factor = XY/AB = 8/6 = 4/3\n\n'
                    'Step 2: Use the scale factor to find the area ratio:\n\n'
                    'Area ratio = (XY/AB)^2 = (4/3)^2 = 16/9\n\n'
                    'Step 3: Use the area ratio to find the area of hexagon XYZUVW:\n\n'
                    'Area of hexagon XYZUVW = (Area of hexagon ABCDEF) * (Area ratio)\n\n'
                    'Conclusion:\n\n'
                    'The area of hexagon XYZUVW is (16/9) times the area of hexagon ABCDEF.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
