import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';


class LawofSines extends StatelessWidget {
  final Color chosenColor;
  LawofSines ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Law of Sines'),
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
                'Law of Sines',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'The Law of Sines is a fundamental theorem in trigonometry that describes the relationship between the angles and sides of a triangle. It states that for any triangle, the ratio of the length of a side to the sine of its opposite angle is constant.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Mathematically, the Law of Sines is expressed as follows:\n\n a/sin(A) = b/sin(B) = c/sin(C)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Where:\n\na,b, and c are the lengths of the sides of the triangle.\n\nA,B, and C are the measures of the angles opposite to the respective sides.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: In triangle ABC, angle A measures 50∘, angle B measures 70∘, and the side opposite angle C measures 10 units. Find the lengths of sides AB and AC.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Identify the given values and what needs to be found.\n\nGiven:\n\n Angle A = 50∘\n\nAngle B = 70∘\n\nSide c(opposite angle C) = 10 units',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nTo find:\n\nLengths of sides a (opposite angle A) and b (opposite angle B)\n\nStep 2: Determine the unknown angle.\n\nSince the sum of angles in a triangle is 180∘, we can find angle C as follows:\n\n∠C = 180∘- ∠A - B∠ = 180∘ -50∘ -70∘ = 60∘',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Apply the Law of Sines to find the lengths of sides a and b.\n\nUsing the Law of Sines formula:\n\na/sin(A) = b/sin(B) = c/sin(C)\n\nWe can set up proportions using the given values and the known sine values:\n\na/sin(50∘ = 10/sin(60∘)\n\nb/sin(70∘) = 10/sin(60∘)\n\nStep 4: Solve the proportions for a and b.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\na = 10xsin(50∘)/sin(60∘)\n\nb = 10xsin(70∘)/sin(60∘)\n\nStep 5: Calculate the values of a and b.\n\nUsing trigonometric functios or a calculator:\n\na ≈10x0.766/0.866 ≈ 8.83 units\n\nb ≈ 10x0.940/0.866 ≈ 10.86 units',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 6: Finalize the solution.\n\nTherefore, the lengths of sides AB and AC are approximately 8.83 units and 10.86 units.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                  problem: 'Problem 1:\nIn triangle ABC, angle A measures 50°, angle B measures 70°, and the side opposite angle C measures 10 units. Find the lengths of sides AB and AC.',
                  solution: 'Solution:\n\n'
                      'Step 1: Identify the given values and what needs to be found:\n\n'
                      'Given:\n'
                      '- Angle A = 50°\n'
                      '- Angle B = 70°\n'
                      '- Side c (opposite angle C) = 10 units\n\n'
                      'To find:\n'
                      '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                      'Step 2: Determine the unknown angle:\n\n'
                      'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                      '∠C = 180° - ∠A - ∠B = 180° - 50° - 70° = 60°.\n\n'
                      'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                      'Using the Law of Sines formula:\n\n'
                      'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                      'We can set up proportions using the given values and the known sine values:\n\n'
                      'a / sin(50°) = 10 / sin(60°)\n'
                      'b / sin(70°) = 10 / sin(60°)\n\n'
                      'Step 4: Solve the proportions for a and b:\n\n'
                      'a = (10 * sin(50°)) / sin(60°)\n'
                      'b = (10 * sin(70°)) / sin(60°)\n\n'
                      'Step 5: Calculate the values of a and b:\n\n'
                      'Using trigonometric functions or a calculator:\n\n'
                      'a ≈ (10 * 0.766) / 0.866 ≈ 8.83 units\n'
                      'b ≈ (10 * 0.940) / 0.866 ≈ 10.86 units\n\n'
                      'Step 6: Finalize the solution:\n\n'
                      'Therefore, the lengths of sides AB and AC are approximately 8.83 units and 10.86 units, respectively.\n'
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                  problem: 'Problem 2:\nIn triangle DEF, angle D measures 40°, angle E measures 80°, and the side opposite angle F measures 8 units. Find the lengths of sides DE and DF.',
                  solution: 'Solution:\n\n'
                      'Step 1: Identify the given values and what needs to be found:\n\n'
                      'Given:\n'
                      '- Angle D = 40°\n'
                      '- Angle E = 80°\n'
                      '- Side f (opposite angle F) = 8 units\n\n'
                      'To find:\n'
                      '- Lengths of sides d (opposite angle D) and e (opposite angle E).\n\n'
                      'Step 2: Determine the unknown angle:\n\n'
                      'Since the sum of angles in a triangle is 180°, we can find angle F as follows:\n\n'
                      '∠F = 180° - ∠D - ∠E = 180° - 40° - 80° = 60°.\n\n'
                      'Step 3: Apply the Law of Sines to find the lengths of sides d and e:\n\n'
                      'Using the Law of Sines formula:\n\n'
                      'd / sin(D) = e / sin(E) = f / sin(F)\n\n'
                      'We can set up proportions using the given values and the known sine values:\n\n'
                      'd / sin(40°) = 8 / sin(60°)\n'
                      'e / sin(80°) = 8 / sin(60°)\n\n'
                      'Step 4: Solve the proportions for d and e:\n\n'
                      'd = (8 * sin(40°)) / sin(60°)\n'
                      'e = (8 * sin(80°)) / sin(60°)\n\n'
                      'Step 5: Calculate the values of d and e:\n\n'
                      'Using trigonometric functions or a calculator:\n\n'
                      'd ≈ (8 * 0.642) / 0.866 ≈ 5.93 units\n'
                      'e ≈ (8 * 0.984) / 0.866 ≈ 9.09 units\n\n'
                      'Step 6: Finalize the solution:\n\n'
                      'Therefore, the lengths of sides DE and DF are approximately 5.93 units and 9.09 units, respectively.\n'
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                  problem: 'Problem 3:\nIn triangle GHI, angle G measures 30°, angle H measures 80°, and the side opposite angle I measures 12 units. Find the lengths of sides GH and GI.',
                  solution: 'Solution:\n\n'
                      'Step 1: Identify the given values and what needs to be found:\n\n'
                      'Given:\n'
                      '- Angle G = 30°\n'
                      '- Angle H = 80°\n'
                      '- Side i (opposite angle I) = 12 units\n\n'
                      'To find:\n'
                      '- Lengths of sides g (opposite angle G) and h (opposite angle H).\n\n'
                      'Step 2: Determine the unknown angle:\n\n'
                      'Since the sum of angles in a triangle is 180°, we can find angle I as follows:\n\n'
                      '∠I = 180° - ∠G - ∠H = 180° - 30° - 80° = 70°.\n\n'
                      'Step 3: Apply the Law of Sines to find the lengths of sides g and h:\n\n'
                      'Using the Law of Sines formula:\n\n'
                      'g / sin(G) = h / sin(H) = i / sin(I)\n\n'
                      'We can set up proportions using the given values and the known sine values:\n\n'
                      'g / sin(30°) = 12 / sin(70°)\n'
                      'h / sin(80°) = 12 / sin(70°)\n\n'
                      'Step 4: Solve the proportions for g and h:\n\n'
                      'g = (12 * sin(30°)) / sin(70°)\n'
                      'h = (12 * sin(80°)) / sin(70°)\n\n'
                      'Step 5: Calculate the values of g and h:\n\n'
                      'Using trigonometric functions or a calculator:\n\n'
                      'g ≈ (12 * 0.500) / 0.940 ≈ 6.40 units\n'
                      'h ≈ (12 * 0.984) / 0.940 ≈ 12.56 units\n\n'
                      'Step 6: Finalize the solution:\n\n'
                      'Therefore, the lengths of sides GH and GI are approximately 6.40 units and 12.56 units, respectively.\n'
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
              ProblemSolvingWidget(
                problem: 'Problem 5:\nIn triangle MNO, angle M measures 30°, angle N measures 90°, and the side opposite angle O measures 10 units. Find the lengths of sides MO and MN.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle M = 30°\n'
                    '- Angle N = 90°\n'
                    '- Side o (opposite angle O) = 10 units\n\n'
                    'To find:\n'
                    '- Lengths of sides m (opposite angle M) and n (opposite angle N).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle O as follows:\n\n'
                    '∠O = 180° - ∠M - ∠N = 180° - 30° - 90° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides m and n:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'm / sin(M) = n / sin(N) = o / sin(O)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'm / sin(30°) = 10 / sin(60°)\n'
                    'n / sin(90°) = 10 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for m and n:\n\n'
                    'm = (10 * sin(30°)) / sin(60°)\n'
                    'n = (10 * sin(90°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of m and n:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'm ≈ (10 * 0.500) / 0.866 ≈ 5.77 units\n'
                    'n ≈ (10 * 1.000) / 0.866 ≈ 11.55 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides MO and MN are approximately 5.77 units and 11.55 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nIn triangle ABC, angle A measures 40°, angle B measures 70°, and the side opposite angle C measures 15 units. Find the lengths of sides AB and BC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 40°\n'
                    '- Angle B = 70°\n'
                    '- Side c (opposite angle C) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 40° - 70° = 70°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(40°) = 15 / sin(70°)\n'
                    'b / sin(70°) = 15 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (15 * sin(40°)) / sin(70°)\n'
                    'b = (15 * sin(70°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (15 * 0.6428) / 0.9397 ≈ 10.25 units\n'
                    'b ≈ (15 * 0.9397) / 0.6428 ≈ 21.91 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and BC are approximately 10.25 units and 21.91 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nIn triangle DEF, angle D measures 50°, angle E measures 90°, and the side opposite angle F measures 12 units. Find the lengths of sides DE and DF.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle D = 50°\n'
                    '- Angle E = 90°\n'
                    '- Side f (opposite angle F) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides d (opposite angle D) and e (opposite angle E).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle F as follows:\n\n'
                    '∠F = 180° - ∠D - ∠E = 180° - 50° - 90° = 40°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides d and e:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'd / sin(D) = e / sin(E) = f / sin(F)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'd / sin(50°) = 12 / sin(40°)\n'
                    'e / sin(90°) = 12 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for d and e:\n\n'
                    'd = (12 * sin(50°)) / sin(40°)\n'
                    'e = (12 * sin(90°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of d and e:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'd ≈ (12 * 0.7660) / 0.6428 ≈ 14.31 units\n'
                    'e ≈ (12 * 1.000) / 0.6428 ≈ 18.67 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides DE and DF are approximately 14.31 units and 18.67 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nIn triangle GHI, angle G measures 60°, angle H measures 45°, and the side opposite angle I measures 8 units. Find the lengths of sides GH and GI.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle G = 60°\n'
                    '- Angle H = 45°\n'
                    '- Side i (opposite angle I) = 8 units\n\n'
                    'To find:\n'
                    '- Lengths of sides g (opposite angle G) and h (opposite angle H).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle I as follows:\n\n'
                    '∠I = 180° - ∠G - ∠H = 180° - 60° - 45° = 75°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides g and h:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'g / sin(G) = h / sin(H) = i / sin(I)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'g / sin(60°) = 8 / sin(75°)\n'
                    'h / sin(45°) = 8 / sin(75°)\n\n'
                    'Step 4: Solve the proportions for g and h:\n\n'
                    'g = (8 * sin(60°)) / sin(75°)\n'
                    'h = (8 * sin(45°)) / sin(75°)\n\n'
                    'Step 5: Calculate the values of g and h:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'g ≈ (8 * 0.866) / 0.9659 ≈ 7.16 units\n'
                    'h ≈ (8 * 0.7071) / 0.9659 ≈ 5.82 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides GH and GI are approximately 7.16 units and 5.82 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nIn triangle JKL, angle J measures 70°, angle K measures 50°, and the side opposite angle L measures 9 units. Find the lengths of sides JK and JL.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle J = 70°\n'
                    '- Angle K = 50°\n'
                    '- Side l (opposite angle L) = 9 units\n\n'
                    'To find:\n'
                    '- Lengths of sides j (opposite angle J) and k (opposite angle K).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle L as follows:\n\n'
                    '∠L = 180° - ∠J - ∠K = 180° - 70° - 50° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides j and k:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'j / sin(J) = k / sin(K) = l / sin(L)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'j / sin(70°) = 9 / sin(60°)\n'
                    'k / sin(50°) = 9 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for j and k:\n\n'
                    'j = (9 * sin(70°)) / sin(60°)\n'
                    'k = (9 * sin(50°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of j and k:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'j ≈ (9 * 0.9397) / 0.866 ≈ 9.79 units\n'
                    'k ≈ (9 * 0.7660) / 0.866 ≈ 7.96 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides JK and JL are approximately 9.79 units and 7.96 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nIn triangle MNP, angle M measures 80°, angle N measures 60°, and the side opposite angle P measures 12 units. Find the lengths of sides MN and MP.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle M = 80°\n'
                    '- Angle N = 60°\n'
                    '- Side p (opposite angle P) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides m (opposite angle M) and n (opposite angle N).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle P as follows:\n\n'
                    '∠P = 180° - ∠M - ∠N = 180° - 80° - 60° = 40°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides m and n:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'm / sin(M) = n / sin(N) = p / sin(P)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'm / sin(80°) = 12 / sin(40°)\n'
                    'n / sin(60°) = 12 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for m and n:\n\n'
                    'm = (12 * sin(80°)) / sin(40°)\n'
                    'n = (12 * sin(60°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of m and n:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'm ≈ (12 * 0.9848) / 0.6428 ≈ 18.47 units\n'
                    'n ≈ (12 * 0.866) / 0.6428 ≈ 16.18 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides MN and MP are approximately 18.47 units and 16.18 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nIn triangle QRS, angle Q measures 75°, angle R measures 45°, and the side opposite angle S measures 10 units. Find the lengths of sides QR and QS.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle Q = 75°\n'
                    '- Angle R = 45°\n'
                    '- Side s (opposite angle S) = 10 units\n\n'
                    'To find:\n'
                    '- Lengths of sides q (opposite angle Q) and r (opposite angle R).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle S as follows:\n\n'
                    '∠S = 180° - ∠Q - ∠R = 180° - 75° - 45° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides q and r:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'q / sin(Q) = r / sin(R) = s / sin(S)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'q / sin(75°) = 10 / sin(60°)\n'
                    'r / sin(45°) = 10 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for q and r:\n\n'
                    'q = (10 * sin(75°)) / sin(60°)\n'
                    'r = (10 * sin(45°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of q and r:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'q ≈ (10 * 0.9659) / 0.866 ≈ 11.30 units\n'
                    'r ≈ (10 * 0.7071) / 0.866 ≈ 8.66 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides QR and QS are approximately 11.30 units and 8.66 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nIn triangle TUV, angle T measures 40°, angle U measures 80°, and the side opposite angle V measures 15 units. Find the lengths of sides TU and TV.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle T = 40°\n'
                    '- Angle U = 80°\n'
                    '- Side v (opposite angle V) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides t (opposite angle T) and u (opposite angle U).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle V as follows:\n\n'
                    '∠V = 180° - ∠T - ∠U = 180° - 40° - 80° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides t and u:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    't / sin(T) = u / sin(U) = v / sin(V)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    't / sin(40°) = 15 / sin(60°)\n'
                    'u / sin(80°) = 15 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for t and u:\n\n'
                    't = (15 * sin(40°)) / sin(60°)\n'
                    'u = (15 * sin(80°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of t and u:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    't ≈ (15 * 0.6428) / 0.866 ≈ 11.13 units\n'
                    'u ≈ (15 * 0.9848) / 0.866 ≈ 17.07 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides TU and TV are approximately 11.13 units and 17.07 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nIn triangle XYZ, angle X measures 50°, angle Y measures 70°, and the side opposite angle Z measures 8 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 50°\n'
                    '- Angle Y = 70°\n'
                    '- Side z (opposite angle Z) = 8 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 50° - 70° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(50°) = 8 / sin(60°)\n'
                    'y / sin(70°) = 8 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (8 * sin(50°)) / sin(60°)\n'
                    'y = (8 * sin(70°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (8 * 0.7660) / 0.866 ≈ 7.09 units\n'
                    'y ≈ (8 * 0.9397) / 0.866 ≈ 8.66 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 7.09 units and 8.66 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nIn triangle ABC, angle A measures 55°, angle B measures 80°, and the side opposite angle C measures 12 units. Find the lengths of sides AB and AC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 55°\n'
                    '- Angle B = 80°\n'
                    '- Side c (opposite angle C) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 55° - 80° = 45°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(55°) = 12 / sin(45°)\n'
                    'b / sin(80°) = 12 / sin(45°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (12 * sin(55°)) / sin(45°)\n'
                    'b = (12 * sin(80°)) / sin(45°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (12 * 0.8192) / 0.7071 ≈ 13.91 units\n'
                    'b ≈ (12 * 0.9848) / 0.7071 ≈ 16.64 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and AC are approximately 13.91 units and 16.64 units, respectively.\n',
              ),
          SizedBox(height: 20),
          ProblemSolvingWidget(
            problem: 'Problem 15:\nIn triangle PQR, angle P measures 60°, angle Q measures 45°, and the side opposite angle R measures 8 units. Find the lengths of sides PQ and PR.',
            solution: 'Solution:\n\n'
                'Step 1: Identify the given values and what needs to be found:\n\n'
                'Given:\n'
                '- Angle P = 60°\n'
                '- Angle Q = 45°\n'
                '- Side r (opposite angle R) = 8 units\n\n'
                'To find:\n'
                '- Lengths of sides p (opposite angle P) and q (opposite angle Q).\n\n'
                'Step 2: Determine the unknown angle:\n\n'
                'Since the sum of angles in a triangle is 180°, we can find angle R as follows:\n\n'
                '∠R = 180° - ∠P - ∠Q = 180° - 60° - 45° = 75°.\n\n'
                'Step 3: Apply the Law of Sines to find the lengths of sides p and q:\n\n'
                'Using the Law of Sines formula:\n\n'
                'p / sin(P) = q / sin(Q) = r / sin(R)\n\n'
                'We can set up proportions using the given values and the known sine values:\n\n'
                'p / sin(60°) = 8 / sin(75°)\n'
                'q / sin(45°) = 8 / sin(75°)\n\n'
                'Step 4: Solve the proportions for p and q:\n\n'
                'p = (8 * sin(60°)) / sin(75°)\n'
                'q = (8 * sin(45°)) / sin(75°)\n\n'
                'Step 5: Calculate the values of p and q:\n\n'
                'Using trigonometric functions or a calculator:\n\n'
                'p ≈ (8 * 0.866) / 0.9659 ≈ 7.17 units\n'
                'q ≈ (8 * 0.7071) / 0.9659 ≈ 5.84 units\n\n'
                'Step 6: Finalize the solution:\n\n'
                'Therefore, the lengths of sides PQ and PR are approximately 7.17 units and 5.84 units, respectively.\n',
          ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nIn triangle XYZ, angle X measures 40°, angle Y measures 50°, and the side opposite angle Z measures 12 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 40°\n'
                    '- Angle Y = 50°\n'
                    '- Side z (opposite angle Z) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 40° - 50° = 90°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(40°) = 12 / sin(90°)\n'
                    'y / sin(50°) = 12 / sin(90°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (12 * sin(40°)) / sin(90°)\n'
                    'y = (12 * sin(50°)) / sin(90°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (12 * 0.6428) / 1.000 ≈ 7.71 units\n'
                    'y ≈ (12 * 0.7660) / 1.000 ≈ 9.19 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 7.71 units and 9.19 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nIn triangle ABC, angle A measures 70°, angle B measures 45°, and the side opposite angle C measures 15 units. Find the lengths of sides AB and AC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 70°\n'
                    '- Angle B = 45°\n'
                    '- Side c (opposite angle C) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 70° - 45° = 65°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(70°) = 15 / sin(65°)\n'
                    'b / sin(45°) = 15 / sin(65°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (15 * sin(70°)) / sin(65°)\n'
                    'b = (15 * sin(45°)) / sin(65°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (15 * 0.9397) / 0.9063 ≈ 15.45 units\n'
                    'b ≈ (15 * 0.7071) / 0.9063 ≈ 11.68 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and AC are approximately 15.45 units and 11.68 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nIn triangle LMN, angle L measures 80°, angle M measures 60°, and the side opposite angle N measures 20 units. Find the lengths of sides LM and LN.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle L = 80°\n'
                    '- Angle M = 60°\n'
                    '- Side n (opposite angle N) = 20 units\n\n'
                    'To find:\n'
                    '- Lengths of sides l (opposite angle L) and m (opposite angle M).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle N as follows:\n\n'
                    '∠N = 180° - ∠L - ∠M = 180° - 80° - 60° = 40°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides l and m:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'l / sin(L) = m / sin(M) = n / sin(N)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'l / sin(80°) = 20 / sin(40°)\n'
                    'm / sin(60°) = 20 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for l and m:\n\n'
                    'l = (20 * sin(80°)) / sin(40°)\n'
                    'm = (20 * sin(60°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of l and m:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'l ≈ (20 * 0.9848) / 0.6428 ≈ 30.89 units\n'
                    'm ≈ (20 * 0.866) / 0.6428 ≈ 26.95 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides LM and LN are approximately 30.89 units and 26.95 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nIn triangle XYZ, angle X measures 75°, angle Y measures 45°, and the side opposite angle Z measures 18 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 75°\n'
                    '- Angle Y = 45°\n'
                    '- Side z (opposite angle Z) = 18 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 75° - 45° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(75°) = 18 / sin(60°)\n'
                    'y / sin(45°) = 18 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (18 * sin(75°)) / sin(60°)\n'
                    'y = (18 * sin(45°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (18 * 0.9659) / 0.866 ≈ 20.06 units\n'
                    'y ≈ (18 * 0.7071) / 0.866 ≈ 14.66 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 20.06 units and 14.66 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nIn triangle PQR, angle P measures 70°, angle Q measures 80°, and the side opposite angle R measures 15 units. Find the lengths of sides PQ and PR.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle P = 70°\n'
                    '- Angle Q = 80°\n'
                    '- Side r (opposite angle R) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides p (opposite angle P) and q (opposite angle Q).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle R as follows:\n\n'
                    '∠R = 180° - ∠P - ∠Q = 180° - 70° - 80° = 30°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides p and q:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'p / sin(P) = q / sin(Q) = r / sin(R)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'p / sin(70°) = 15 / sin(30°)\n'
                    'q / sin(80°) = 15 / sin(30°)\n\n'
                    'Step 4: Solve the proportions for p and q:\n\n'
                    'p = (15 * sin(70°)) / sin(30°)\n'
                    'q = (15 * sin(80°)) / sin(30°)\n\n'
                    'Step 5: Calculate the values of p and q:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'p ≈ (15 * 0.9397) / 0.5 ≈ 28.19 units\n'
                    'q ≈ (15 * 0.9848) / 0.5 ≈ 29.62 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides PQ and PR are approximately 28.19 units and 29.62 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nIn triangle ABC, angle A measures 60°, angle B measures 50°, and the side opposite angle C measures 12 units. Find the lengths of sides AB and AC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 60°\n'
                    '- Angle B = 50°\n'
                    '- Side c (opposite angle C) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 60° - 50° = 70°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(60°) = 12 / sin(70°)\n'
                    'b / sin(50°) = 12 / sin(70°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (12 * sin(60°)) / sin(70°)\n'
                    'b = (12 * sin(50°)) / sin(70°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (12 * 0.866) / 0.9397 ≈ 11.05 units\n'
                    'b ≈ (12 * 0.766) / 0.9397 ≈ 9.75 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and AC are approximately 11.05 units and 9.75 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nIn triangle DEF, angle D measures 40°, angle E measures 70°, and the side opposite angle F measures 8 units. Find the lengths of sides DE and DF.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle D = 40°\n'
                    '- Angle E = 70°\n'
                    '- Side f (opposite angle F) = 8 units\n\n'
                    'To find:\n'
                    '- Lengths of sides d (opposite angle D) and e (opposite angle E).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle F as follows:\n\n'
                    '∠F = 180° - ∠D - ∠E = 180° - 40° - 70° = 70°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides d and e:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'd / sin(D) = e / sin(E) = f / sin(F)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'd / sin(40°) = 8 / sin(70°)\n'
                    'e / sin(70°) = 8 / sin(70°)\n\n'
                    'Step 4: Solve the proportions for d and e:\n\n'
                    'd = (8 * sin(40°)) / sin(70°)\n'
                    'e = (8 * sin(70°)) / sin(70°)\n\n'
                    'Step 5: Calculate the values of d and e:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'd ≈ (8 * 0.6428) / 0.9397 ≈ 5.48 units\n'
                    'e ≈ (8 * 0.9397) / 0.9397 ≈ 8 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides DE and DF are approximately 5.48 units and 8 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nIn triangle GHI, angle G measures 50°, angle H measures 85°, and the side opposite angle I measures 15 units. Find the lengths of sides GH and GI.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle G = 50°\n'
                    '- Angle H = 85°\n'
                    '- Side i (opposite angle I) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides g (opposite angle G) and h (opposite angle H).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle I as follows:\n\n'
                    '∠I = 180° - ∠G - ∠H = 180° - 50° - 85° = 45°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides g and h:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'g / sin(G) = h / sin(H) = i / sin(I)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'g / sin(50°) = 15 / sin(45°)\n'
                    'h / sin(85°) = 15 / sin(45°)\n\n'
                    'Step 4: Solve the proportions for g and h:\n\n'
                    'g = (15 * sin(50°)) / sin(45°)\n'
                    'h = (15 * sin(85°)) / sin(45°)\n\n'
                    'Step 5: Calculate the values of g and h:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'g ≈ (15 * 0.766) / 0.7071 ≈ 16.28 units\n'
                    'h ≈ (15 * 0.9962) / 0.7071 ≈ 21.21 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides GH and GI are approximately 16.28 units and 21.21 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nIn triangle JKL, angle J measures 75°, angle K measures 80°, and the side opposite angle L measures 20 units. Find the lengths of sides JK and JL.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle J = 75°\n'
                    '- Angle K = 80°\n'
                    '- Side l (opposite angle L) = 20 units\n\n'
                    'To find:\n'
                    '- Lengths of sides j (opposite angle J) and k (opposite angle K).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle L as follows:\n\n'
                    '∠L = 180° - ∠J - ∠K = 180° - 75° - 80° = 25°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides j and k:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'j / sin(J) = k / sin(K) = l / sin(L)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'j / sin(75°) = 20 / sin(25°)\n'
                    'k / sin(80°) = 20 / sin(25°)\n\n'
                    'Step 4: Solve the proportions for j and k:\n\n'
                    'j = (20 * sin(75°)) / sin(25°)\n'
                    'k = (20 * sin(80°)) / sin(25°)\n\n'
                    'Step 5: Calculate the values of j and k:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'j ≈ (20 * 0.9659) / 0.4226 ≈ 45.69 units\n'
                    'k ≈ (20 * 0.9848) / 0.4226 ≈ 46.65 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides JK and JL are approximately 45.69 units and 46.65 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nIn triangle MNO, angle M measures 40°, angle N measures 50°, and the side opposite angle O measures 25 units. Find the lengths of sides MN and MO.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle M = 40°\n'
                    '- Angle N = 50°\n'
                    '- Side o (opposite angle O) = 25 units\n\n'
                    'To find:\n'
                    '- Lengths of sides m (opposite angle M) and n (opposite angle N).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle O as follows:\n\n'
                    '∠O = 180° - ∠M - ∠N = 180° - 40° - 50° = 90°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides m and n:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'm / sin(M) = n / sin(N) = o / sin(O)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'm / sin(40°) = 25 / sin(90°)\n'
                    'n / sin(50°) = 25 / sin(90°)\n\n'
                    'Step 4: Solve the proportions for m and n:\n\n'
                    'm = (25 * sin(40°)) / sin(90°)\n'
                    'n = (25 * sin(50°)) / sin(90°)\n\n'
                    'Step 5: Calculate the values of m and n:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'm ≈ (25 * 0.6428) / 1.000 ≈ 16.07 units\n'
                    'n ≈ (25 * 0.766) / 1.000 ≈ 19.15 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides MN and MO are approximately 16.07 units and 19.15 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nIn triangle PQR, angle P measures 35°, angle Q measures 85°, and the side opposite angle R measures 18 units. Find the lengths of sides PQ and PR.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle P = 35°\n'
                    '- Angle Q = 85°\n'
                    '- Side r (opposite angle R) = 18 units\n\n'
                    'To find:\n'
                    '- Lengths of sides p (opposite angle P) and q (opposite angle Q).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle R as follows:\n\n'
                    '∠R = 180° - ∠P - ∠Q = 180° - 35° - 85° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides p and q:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'p / sin(P) = q / sin(Q) = r / sin(R)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'p / sin(35°) = 18 / sin(60°)\n'
                    'q / sin(85°) = 18 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for p and q:\n\n'
                    'p = (18 * sin(35°)) / sin(60°)\n'
                    'q = (18 * sin(85°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of p and q:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'p ≈ (18 * 0.5736) / 0.866 ≈ 11.91 units\n'
                    'q ≈ (18 * 0.9962) / 0.866 ≈ 20.70 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides PQ and PR are approximately 11.91 units and 20.70 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nIn triangle DEF, angle D measures 40°, angle E measures 50°, and the side opposite angle F measures 12 units. Find the lengths of sides DE and DF.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle D = 40°\n'
                    '- Angle E = 50°\n'
                    '- Side f (opposite angle F) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides d (opposite angle D) and e (opposite angle E).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle F as follows:\n\n'
                    '∠F = 180° - ∠D - ∠E = 180° - 40° - 50° = 90°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides d and e:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'd / sin(D) = e / sin(E) = f / sin(F)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'd / sin(40°) = 12 / sin(90°)\n'
                    'e / sin(50°) = 12 / sin(90°)\n\n'
                    'Step 4: Solve the proportions for d and e:\n\n'
                    'd = (12 * sin(40°)) / sin(90°)\n'
                    'e = (12 * sin(50°)) / sin(90°)\n\n'
                    'Step 5: Calculate the values of d and e:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'd ≈ (12 * 0.6428) / 1.000 ≈ 7.71 units\n'
                    'e ≈ (12 * 0.7660) / 1.000 ≈ 9.19 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides DE and DF are approximately 7.71 units and 9.19 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nIn triangle VWX, angle V measures 60°, angle W measures 70°, and the side opposite angle X measures 18 units. Find the lengths of sides VW and VX.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle V = 60°\n'
                    '- Angle W = 70°\n'
                    '- Side x (opposite angle X) = 18 units\n\n'
                    'To find:\n'
                    '- Lengths of sides v (opposite angle V) and w (opposite angle W).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle X as follows:\n\n'
                    '∠X = 180° - ∠V - ∠W = 180° - 60° - 70° = 50°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides v and w:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'v / sin(V) = w / sin(W) = x / sin(X)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'v / sin(60°) = 18 / sin(50°)\n'
                    'w / sin(70°) = 18 / sin(50°)\n\n'
                    'Step 4: Solve the proportions for v and w:\n\n'
                    'v = (18 * sin(60°)) / sin(50°)\n'
                    'w = (18 * sin(70°)) / sin(50°)\n\n'
                    'Step 5: Calculate the values of v and w:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'v ≈ (18 * 0.866) / 0.766 ≈ 20.28 units\n'
                    'w ≈ (18 * 0.9397) / 0.766 ≈ 22.14 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides VW and VX are approximately 20.28 units and 22.14 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nIn triangle YZA, angle Y measures 45°, angle Z measures 55°, and the side opposite angle A measures 14 units. Find the lengths of sides YZ and YA.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle Y = 45°\n'
                    '- Angle Z = 55°\n'
                    '- Side a (opposite angle A) = 14 units\n\n'
                    'To find:\n'
                    '- Lengths of sides y (opposite angle Y) and z (opposite angle Z).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle A as follows:\n\n'
                    '∠A = 180° - ∠Y - ∠Z = 180° - 45° - 55° = 80°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides y and z:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'y / sin(Y) = z / sin(Z) = a / sin(A)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'y / sin(45°) = 14 / sin(80°)\n'
                    'z / sin(55°) = 14 / sin(80°)\n\n'
                    'Step 4: Solve the proportions for y and z:\n\n'
                    'y = (14 * sin(45°)) / sin(80°)\n'
                    'z = (14 * sin(55°)) / sin(80°)\n\n'
                    'Step 5: Calculate the values of y and z:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'y ≈ (14 * 0.7071) / 0.9848 ≈ 10 units\n'
                    'z ≈ (14 * 0.8192) / 0.9848 ≈ 11.67 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides YZ and YA are approximately 10 units and 11.67 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nIn triangle BCD, angle B measures 80°, angle C measures 85°, and the side opposite angle D measures 16 units. Find the lengths of sides BC and BD.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle B = 80°\n'
                    '- Angle C = 85°\n'
                    '- Side d (opposite angle D) = 16 units\n\n'
                    'To find:\n'
                    '- Lengths of sides b (opposite angle B) and c (opposite angle C).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle D as follows:\n\n'
                    '∠D = 180° - ∠B - ∠C = 180° - 80° - 85° = 15°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides b and c:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'b / sin(B) = c / sin(C) = d / sin(D)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'b / sin(80°) = 16 / sin(15°)\n'
                    'c / sin(85°) = 16 / sin(15°)\n\n'
                    'Step 4: Solve the proportions for b and c:\n\n'
                    'b = (16 * sin(80°)) / sin(15°)\n'
                    'c = (16 * sin(85°)) / sin(15°)\n\n'
                    'Step 5: Calculate the values of b and c:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'b ≈ (16 * 0.9848) / 0.2588 ≈ 61.33 units\n'
                    'c ≈ (16 * 0.9962) / 0.2588 ≈ 61.92 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides BC and BD are approximately 61.33 units and 61.92 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nIn triangle EFG, angle E measures 55°, angle F measures 65°, and the side opposite angle G measures 20 units. Find the lengths of sides EF and EG.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle E = 55°\n'
                    '- Angle F = 65°\n'
                    '- Side g (opposite angle G) = 20 units\n\n'
                    'To find:\n'
                    '- Lengths of sides e (opposite angle E) and f (opposite angle F).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle G as follows:\n\n'
                    '∠G = 180° - ∠E - ∠F = 180° - 55° - 65° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides e and f:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'e / sin(E) = f / sin(F) = g / sin(G)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'e / sin(55°) = 20 / sin(60°)\n'
                    'f / sin(65°) = 20 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for e and f:\n\n'
                    'e = (20 * sin(55°)) / sin(60°)\n'
                    'f = (20 * sin(65°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of e and f:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'e ≈ (20 * 0.8192) / 0.866 ≈ 18.89 units\n'
                    'f ≈ (20 * 0.9063) / 0.866 ≈ 20.89 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides EF and EG are approximately 18.89 units and 20.89 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nIn triangle HIJ, angle H measures 75°, angle I measures 85°, and the side opposite angle J measures 22 units. Find the lengths of sides HJ and HI.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle H = 75°\n'
                    '- Angle I = 85°\n'
                    '- Side j (opposite angle J) = 22 units\n\n'
                    'To find:\n'
                    '- Lengths of sides h (opposite angle H) and i (opposite angle I).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle J as follows:\n\n'
                    '∠J = 180° - ∠H - ∠I = 180° - 75° - 85° = 20°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides h and i:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'h / sin(H) = i / sin(I) = j / sin(J)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'h / sin(75°) = 22 / sin(20°)\n'
                    'i / sin(85°) = 22 / sin(20°)\n\n'
                    'Step 4: Solve the proportions for h and i:\n\n'
                    'h = (22 * sin(75°)) / sin(20°)\n'
                    'i = (22 * sin(85°)) / sin(20°)\n\n'
                    'Step 5: Calculate the values of h and i:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'h ≈ (22 * 0.9659) / 0.342 ≈ 61.99 units\n'
                    'i ≈ (22 * 0.9962) / 0.342 ≈ 64.22 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides HJ and HI are approximately 61.99 units and 64.22 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nIn triangle KLM, angle K measures 60°, angle L measures 70°, and the side opposite angle M measures 24 units. Find the lengths of sides KL and KM.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle K = 60°\n'
                    '- Angle L = 70°\n'
                    '- Side m (opposite angle M) = 24 units\n\n'
                    'To find:\n'
                    '- Lengths of sides k (opposite angle K) and l (opposite angle L).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle M as follows:\n\n'
                    '∠M = 180° - ∠K - ∠L = 180° - 60° - 70° = 50°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides k and l:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'k / sin(K) = l / sin(L) = m / sin(M)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'k / sin(60°) = 24 / sin(50°)\n'
                    'l / sin(70°) = 24 / sin(50°)\n\n'
                    'Step 4: Solve the proportions for k and l:\n\n'
                    'k = (24 * sin(60°)) / sin(50°)\n'
                    'l = (24 * sin(70°)) / sin(50°)\n\n'
                    'Step 5: Calculate the values of k and l:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'k ≈ (24 * 0.866) / 0.766 ≈ 27.12 units\n'
                    'l ≈ (24 * 0.9397) / 0.766 ≈ 29.43 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides KL and KM are approximately 27.12 units and 29.43 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nIn triangle NOP, angle N measures 45°, angle O measures 70°, and the side opposite angle P measures 26 units. Find the lengths of sides NO and NP.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle N = 45°\n'
                    '- Angle O = 70°\n'
                    '- Side p (opposite angle P) = 26 units\n\n'
                    'To find:\n'
                    '- Lengths of sides n (opposite angle N) and o (opposite angle O).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle P as follows:\n\n'
                    '∠P = 180° - ∠N - ∠O = 180° - 45° - 70° = 65°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides n and o:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'n / sin(N) = o / sin(O) = p / sin(P)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'n / sin(45°) = 26 / sin(65°)\n'
                    'o / sin(70°) = 26 / sin(65°)\n\n'
                    'Step 4: Solve the proportions for n and o:\n\n'
                    'n = (26 * sin(45°)) / sin(65°)\n'
                    'o = (26 * sin(70°)) / sin(65°)\n\n'
                    'Step 5: Calculate the values of n and o:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'n ≈ (26 * 0.7071) / 0.9063 ≈ 20.29 units\n'
                    'o ≈ (26 * 0.9397) / 0.9063 ≈ 26.97 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides NO and NP are approximately 20.29 units and 26.97 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nIn triangle QRS, angle Q measures 35°, angle R measures 75°, and the side opposite angle S measures 30 units. Find the lengths of sides QR and QS.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle Q = 35°\n'
                    '- Angle R = 75°\n'
                    '- Side s (opposite angle S) = 30 units\n\n'
                    'To find:\n'
                    '- Lengths of sides q (opposite angle Q) and r (opposite angle R).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle S as follows:\n\n'
                    '∠S = 180° - ∠Q - ∠R = 180° - 35° - 75° = 70°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides q and r:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'q / sin(Q) = r / sin(R) = s / sin(S)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'q / sin(35°) = 30 / sin(70°)\n'
                    'r / sin(75°) = 30 / sin(70°)\n\n'
                    'Step 4: Solve the proportions for q and r:\n\n'
                    'q = (30 * sin(35°)) / sin(70°)\n'
                    'r = (30 * sin(75°)) / sin(70°)\n\n'
                    'Step 5: Calculate the values of q and r:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'q ≈ (30 * 0.5736) / 0.9397 ≈ 18.28 units\n'
                    'r ≈ (30 * 0.9659) / 0.9397 ≈ 30.83 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides QR and QS are approximately 18.28 units and 30.83 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nIn triangle TUV, angle T measures 55°, angle U measures 70°, and the side opposite angle V measures 15 units. Find the lengths of sides TV and TU.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle T = 55°\n'
                    '- Angle U = 70°\n'
                    '- Side v (opposite angle V) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides t (opposite angle T) and u (opposite angle U).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle V as follows:\n\n'
                    '∠V = 180° - ∠T - ∠U = 180° - 55° - 70° = 55°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides t and u:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    't / sin(T) = u / sin(U) = v / sin(V)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    't / sin(55°) = 15 / sin(55°)\n'
                    'u / sin(70°) = 15 / sin(55°)\n\n'
                    'Step 4: Solve the proportions for t and u:\n\n'
                    't = (15 * sin(55°)) / sin(55°)\n'
                    'u = (15 * sin(70°)) / sin(55°)\n\n'
                    'Step 5: Calculate the values of t and u:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    't ≈ (15 * 0.8192) / 0.8192 ≈ 15 units\n'
                    'u ≈ (15 * 0.9397) / 0.8192 ≈ 17.28 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides TV and TU are approximately 15 units and 17.28 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nIn triangle XYZ, angle X measures 40°, angle Y measures 85°, and the side opposite angle Z measures 14 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 40°\n'
                    '- Angle Y = 85°\n'
                    '- Side z (opposite angle Z) = 14 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 40° - 85° = 55°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(40°) = 14 / sin(55°)\n'
                    'y / sin(85°) = 14 / sin(55°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (14 * sin(40°)) / sin(55°)\n'
                    'y = (14 * sin(85°)) / sin(55°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (14 * 0.6428) / 0.8192 ≈ 10.99 units\n'
                    'y ≈ (14 * 0.9962) / 0.8192 ≈ 17 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 10.99 units and 17 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nIn triangle ABC, angle A measures 60°, angle B measures 80°, and the side opposite angle C measures 18 units. Find the lengths of sides AB and AC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 60°\n'
                    '- Angle B = 80°\n'
                    '- Side c (opposite angle C) = 18 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 60° - 80° = 40°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(60°) = 18 / sin(40°)\n'
                    'b / sin(80°) = 18 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (18 * sin(60°)) / sin(40°)\n'
                    'b = (18 * sin(80°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (18 * 0.866) / 0.6428 ≈ 24.30 units\n'
                    'b ≈ (18 * 0.9848) / 0.6428 ≈ 27.54 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and AC are approximately 24.30 units and 27.54 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nIn triangle PQR, angle P measures 45°, angle Q measures 70°, and the side opposite angle R measures 20 units. Find the lengths of sides PQ and PR.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle P = 45°\n'
                    '- Angle Q = 70°\n'
                    '- Side r (opposite angle R) = 20 units\n\n'
                    'To find:\n'
                    '- Lengths of sides p (opposite angle P) and q (opposite angle Q).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle R as follows:\n\n'
                    '∠R = 180° - ∠P - ∠Q = 180° - 45° - 70° = 65°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides p and q:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'p / sin(P) = q / sin(Q) = r / sin(R)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'p / sin(45°) = 20 / sin(65°)\n'
                    'q / sin(70°) = 20 / sin(65°)\n\n'
                    'Step 4: Solve the proportions for p and q:\n\n'
                    'p = (20 * sin(45°)) / sin(65°)\n'
                    'q = (20 * sin(70°)) / sin(65°)\n\n'
                    'Step 5: Calculate the values of p and q:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'p ≈ (20 * 0.7071) / 0.9063 ≈ 15.52 units\n'
                    'q ≈ (20 * 0.9397) / 0.9063 ≈ 20.70 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides PQ and PR are approximately 15.52 units and 20.70 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nIn triangle LMN, angle L measures 55°, angle M measures 65°, and the side opposite angle N measures 12 units. Find the lengths of sides LM and LN.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle L = 55°\n'
                    '- Angle M = 65°\n'
                    '- Side n (opposite angle N) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides l (opposite angle L) and m (opposite angle M).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle N as follows:\n\n'
                    '∠N = 180° - ∠L - ∠M = 180° - 55° - 65° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides l and m:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'l / sin(L) = m / sin(M) = n / sin(N)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'l / sin(55°) = 12 / sin(60°)\n'
                    'm / sin(65°) = 12 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for l and m:\n\n'
                    'l = (12 * sin(55°)) / sin(60°)\n'
                    'm = (12 * sin(65°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of l and m:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'l ≈ (12 * 0.8192) / 0.866 ≈ 11.32 units\n'
                    'm ≈ (12 * 0.9063) / 0.866 ≈ 12.56 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides LM and LN are approximately 11.32 units and 12.56 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nIn triangle RST, angle R measures 70°, angle S measures 50°, and the side opposite angle T measures 16 units. Find the lengths of sides RS and RT.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle R = 70°\n'
                    '- Angle S = 50°\n'
                    '- Side t (opposite angle T) = 16 units\n\n'
                    'To find:\n'
                    '- Lengths of sides r (opposite angle R) and s (opposite angle S).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle T as follows:\n\n'
                    '∠T = 180° - ∠R - ∠S = 180° - 70° - 50° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides r and s:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'r / sin(R) = s / sin(S) = t / sin(T)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'r / sin(70°) = 16 / sin(60°)\n'
                    's / sin(50°) = 16 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for r and s:\n\n'
                    'r = (16 * sin(70°)) / sin(60°)\n'
                    's = (16 * sin(50°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of r and s:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'r ≈ (16 * 0.9397) / 0.866 ≈ 17.39 units\n'
                    's ≈ (16 * 0.766) / 0.866 ≈ 14.13 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides RS and RT are approximately 17.39 units and 14.13 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nIn triangle XYZ, angle X measures 80°, angle Y measures 60°, and the side opposite angle Z measures 15 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 80°\n'
                    '- Angle Y = 60°\n'
                    '- Side z (opposite angle Z) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 80° - 60° = 40°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(80°) = 15 / sin(40°)\n'
                    'y / sin(60°) = 15 / sin(40°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (15 * sin(80°)) / sin(40°)\n'
                    'y = (15 * sin(60°)) / sin(40°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (15 * 0.9848) / 0.6428 ≈ 23.08 units\n'
                    'y ≈ (15 * 0.866) / 0.6428 ≈ 20.28 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 23.08 units and 20.28 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nIn triangle ABC, angle A measures 50°, angle B measures 70°, and the side opposite angle C measures 8 units. Find the lengths of sides AB and AC.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle A = 50°\n'
                    '- Angle B = 70°\n'
                    '- Side c (opposite angle C) = 8 units\n\n'
                    'To find:\n'
                    '- Lengths of sides a (opposite angle A) and b (opposite angle B).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle C as follows:\n\n'
                    '∠C = 180° - ∠A - ∠B = 180° - 50° - 70° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides a and b:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'a / sin(A) = b / sin(B) = c / sin(C)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'a / sin(50°) = 8 / sin(60°)\n'
                    'b / sin(70°) = 8 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for a and b:\n\n'
                    'a = (8 * sin(50°)) / sin(60°)\n'
                    'b = (8 * sin(70°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of a and b:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'a ≈ (8 * 0.766) / 0.866 ≈ 7.09 units\n'
                    'b ≈ (8 * 0.9397) / 0.866 ≈ 8.69 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides AB and AC are approximately 7.09 units and 8.69 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nIn triangle PQR, angle P measures 40°, angle Q measures 50°, and the side opposite angle R measures 12 units. Find the lengths of sides PQ and PR.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle P = 40°\n'
                    '- Angle Q = 50°\n'
                    '- Side r (opposite angle R) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides p (opposite angle P) and q (opposite angle Q).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle R as follows:\n\n'
                    '∠R = 180° - ∠P - ∠Q = 180° - 40° - 50° = 90°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides p and q:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'p / sin(P) = q / sin(Q) = r / sin(R)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'p / sin(40°) = 12 / sin(90°)\n'
                    'q / sin(50°) = 12 / sin(90°)\n\n'
                    'Step 4: Solve the proportions for p and q:\n\n'
                    'p = (12 * sin(40°)) / sin(90°)\n'
                    'q = (12 * sin(50°)) / sin(90°)\n\n'
                    'Step 5: Calculate the values of p and q:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'p ≈ (12 * 0.6428) / 1.000 ≈ 7.71 units\n'
                    'q ≈ (12 * 0.766) / 1.000 ≈ 9.19 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides PQ and PR are approximately 7.71 units and 9.19 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nIn triangle UVW, angle U measures 60°, angle V measures 75°, and the side opposite angle W measures 20 units. Find the lengths of sides UV and UW.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle U = 60°\n'
                    '- Angle V = 75°\n'
                    '- Side w (opposite angle W) = 20 units\n\n'
                    'To find:\n'
                    '- Lengths of sides u (opposite angle U) and v (opposite angle V).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle W as follows:\n\n'
                    '∠W = 180° - ∠U - ∠V = 180° - 60° - 75° = 45°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides u and v:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'u / sin(U) = v / sin(V) = w / sin(W)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'u / sin(60°) = 20 / sin(45°)\n'
                    'v / sin(75°) = 20 / sin(45°)\n\n'
                    'Step 4: Solve the proportions for u and v:\n\n'
                    'u = (20 * sin(60°)) / sin(45°)\n'
                    'v = (20 * sin(75°)) / sin(45°)\n\n'
                    'Step 5: Calculate the values of u and v:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'u ≈ (20 * 0.866) / 0.707 ≈ 24.49 units\n'
                    'v ≈ (20 * 0.9659) / 0.707 ≈ 27.21 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides UV and UW are approximately 24.49 units and 27.21 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nIn triangle XYZ, angle X measures 50°, angle Y measures 70°, and the side opposite angle Z measures 15 units. Find the lengths of sides XY and XZ.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle X = 50°\n'
                    '- Angle Y = 70°\n'
                    '- Side z (opposite angle Z) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides x (opposite angle X) and y (opposite angle Y).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle Z as follows:\n\n'
                    '∠Z = 180° - ∠X - ∠Y = 180° - 50° - 70° = 60°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides x and y:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'x / sin(X) = y / sin(Y) = z / sin(Z)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'x / sin(50°) = 15 / sin(60°)\n'
                    'y / sin(70°) = 15 / sin(60°)\n\n'
                    'Step 4: Solve the proportions for x and y:\n\n'
                    'x = (15 * sin(50°)) / sin(60°)\n'
                    'y = (15 * sin(70°)) / sin(60°)\n\n'
                    'Step 5: Calculate the values of x and y:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'x ≈ (15 * 0.766) / 0.866 ≈ 13.29 units\n'
                    'y ≈ (15 * 0.9397) / 0.866 ≈ 16.34 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides XY and XZ are approximately 13.29 units and 16.34 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nIn triangle DEF, angle D measures 60°, angle E measures 45°, and the side opposite angle F measures 12 units. Find the lengths of sides DE and DF.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle D = 60°\n'
                    '- Angle E = 45°\n'
                    '- Side f (opposite angle F) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides d (opposite angle D) and e (opposite angle E).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle F as follows:\n\n'
                    '∠F = 180° - ∠D - ∠E = 180° - 60° - 45° = 75°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides d and e:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'd / sin(D) = e / sin(E) = f / sin(F)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'd / sin(60°) = 12 / sin(75°)\n'
                    'e / sin(45°) = 12 / sin(75°)\n\n'
                    'Step 4: Solve the proportions for d and e:\n\n'
                    'd = (12 * sin(60°)) / sin(75°)\n'
                    'e = (12 * sin(45°)) / sin(75°)\n\n'
                    'Step 5: Calculate the values of d and e:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'd ≈ (12 * 0.866) / 0.9659 ≈ 10.76 units\n'
                    'e ≈ (12 * 0.707) / 0.9659 ≈ 8.76 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides DE and DF are approximately 10.76 units and 8.76 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nIn triangle GHI, angle G measures 70°, angle H measures 80°, and the side opposite angle I measures 15 units. Find the lengths of sides GH and GI.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle G = 70°\n'
                    '- Angle H = 80°\n'
                    '- Side i (opposite angle I) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides g (opposite angle G) and h (opposite angle H).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle I as follows:\n\n'
                    '∠I = 180° - ∠G - ∠H = 180° - 70° - 80° = 30°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides g and h:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'g / sin(G) = h / sin(H) = i / sin(I)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'g / sin(70°) = 15 / sin(30°)\n'
                    'h / sin(80°) = 15 / sin(30°)\n\n'
                    'Step 4: Solve the proportions for g and h:\n\n'
                    'g = (15 * sin(70°)) / sin(30°)\n'
                    'h = (15 * sin(80°)) / sin(30°)\n\n'
                    'Step 5: Calculate the values of g and h:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'g ≈ (15 * 0.9397) / 0.5 ≈ 28.19 units\n'
                    'h ≈ (15 * 0.9848) / 0.5 ≈ 29.55 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides GH and GI are approximately 28.19 units and 29.55 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nIn triangle JKL, angle J measures 40°, angle K measures 60°, and the side opposite angle L measures 12 units. Find the lengths of sides JK and JL.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle J = 40°\n'
                    '- Angle K = 60°\n'
                    '- Side l (opposite angle L) = 12 units\n\n'
                    'To find:\n'
                    '- Lengths of sides j (opposite angle J) and k (opposite angle K).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle L as follows:\n\n'
                    '∠L = 180° - ∠J - ∠K = 180° - 40° - 60° = 80°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides j and k:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'j / sin(J) = k / sin(K) = l / sin(L)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'j / sin(40°) = 12 / sin(80°)\n'
                    'k / sin(60°) = 12 / sin(80°)\n\n'
                    'Step 4: Solve the proportions for j and k:\n\n'
                    'j = (12 * sin(40°)) / sin(80°)\n'
                    'k = (12 * sin(60°)) / sin(80°)\n\n'
                    'Step 5: Calculate the values of j and k:\n\n'
                    'Using trigonometric functions or a calculator:\n\n'
                    'j ≈ (12 * 0.6428) / 0.9848 ≈ 7.77 units\n'
                    'k ≈ (12 * 0.866) / 0.9848 ≈ 10.54 units\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides JK and JL are approximately 7.77 units and 10.54 units, respectively.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nIn triangle MNP, angle M measures 55°, angle N measures 70°, and the side opposite angle P measures 15 units. Find the lengths of sides MN and MP.',
                solution: 'Solution:\n\n'
                    'Step 1: Identify the given values and what needs to be found:\n\n'
                    'Given:\n'
                    '- Angle M = 55°\n'
                    '- Angle N = 70°\n'
                    '- Side p (opposite angle P) = 15 units\n\n'
                    'To find:\n'
                    '- Lengths of sides m (opposite angle M) and n (opposite angle N).\n\n'
                    'Step 2: Determine the unknown angle:\n\n'
                    'Since the sum of angles in a triangle is 180°, we can find angle P as follows:\n\n'
                    '∠P = 180° - ∠M - ∠N = 180° - 55° - 70° = 55°.\n\n'
                    'Step 3: Apply the Law of Sines to find the lengths of sides m and n:\n\n'
                    'Using the Law of Sines formula:\n\n'
                    'm / sin(M) = n / sin(N) = p / sin(P)\n\n'
                    'We can set up proportions using the given values and the known sine values:\n\n'
                    'm / sin(55°) = 15 / sin(55°)\n'
                    'n / sin(70°) = 15 / sin(55°)\n\n'
                    'Step 4: Solve the proportions for m and n:\n\n'
                    'm = (15 * sin(55°)) / sin(55°)\n'
                    'n = (15 * sin(70°)) / sin(55°)\n\n'
                    'Step 5: Calculate the values of m and n:\n\n'
                    'Since sin(55°) = sin(70°), m = 15 and n = 15.\n\n'
                    'Step 6: Finalize the solution:\n\n'
                    'Therefore, the lengths of sides MN and MP are both equal to 15 units.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
