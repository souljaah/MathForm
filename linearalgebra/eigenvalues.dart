import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Eigenvalues extends StatelessWidget {
  final Color chosenColor;
  Eigenvalues ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eigenvalues and Eigenvectors'),
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
                'Eigenvalues and Eigenvectors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Linear Algebra Eigenvalues and Eigenvectors are concepts associated with square matrices.\n\n\nEigenvalues are scalar values that represent how a linear transformation, represented by the matrix, affects the directions of vectors. An eigenvector is a non-zero vector that, when multiplied by the matrix, results in a new vector that is a scaled version of the original vector. The scaling factor is the eigenvalue corresponding to that eigenvector.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Mathematically, for a square matrix A, an eigenvector v and corresponding eigenvalue λ satisfy the equation:\n\n Av=λv\n\nHere, A is the square matrix, v is the eigenvector, and λ is the eigenvalue associated with v.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Let`s consider a 2x2 matrix\n\nA=\n\nI  3   1I\nI  1   3I\n\nTo find the eigenvalues and eigenvectors of this matrix, we need to solve the characteristic equation: ∣A−λI∣=0\n\nWhere ∣A−λI∣ represents the determinant of matrix A−λI, λ is the eigenvalue, and I is the identity matrix.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Set up the matrix A−λI:\n\nA−λI =\n\nI 3-λ   1I\n\nI  1     3-λI\n\nStep 2: Calculate the determinant of A - λI:\n\nIA-λII = (3-λ)(3-λ) -1 ⋅ 1\n\n=(3-λ)^2 -1\n\n= 9 -6λ+λ^2 -1\n\n= λ^2 -6λ+ 8\n\nStep 3: Set IA -λI I = 0 and solve for λ:\n\nλ^2- 6λ+8=0\n\nThis quadratoc equation can be factored as: (λ -4)(λ-2)=0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSo, the eigenvalues are λ_1 = 4 and λ_2 = 2.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nFind the eigenvalues and eigenvectors of the matrix A = [[3, 1], [1, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix A - λI:\n\n'
                    'A - λI = [[3-λ, 1], [1, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of A - λI:\n\n'
                    '|A - λI| = (3-λ)(3-λ) - 1*1 = (3-λ)² - 1.\n\n'
                    'Step 3: Solve the characteristic equation |A - λI| = 0:\n\n'
                    '(3-λ)² - 1 = 0.\n'
                    'λ² - 6λ + 8 = 0.\n'
                    '(λ - 4)(λ - 2) = 0.\n'
                    'λ₁ = 4, λ₂ = 2.\n\n'
                    'Step 4: For λ₁ = 4:\n\n'
                    'Solve (A - 4I)v₁ = 0 for v₁.\n'
                    'A - 4I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    'x = y.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 5: For λ₂ = 2:\n\n'
                    'Solve (A - 2I)v₂ = 0 for v₂.\n'
                    'A - 2I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x = -y.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nFind the eigenvalues and eigenvectors of the matrix B = [[2, 0], [0, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix B - λI:\n\n'
                    'B - λI = [[2-λ, 0], [0, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of B - λI:\n\n'
                    '|B - λI| = (2-λ)(3-λ).\n\n'
                    'Step 3: Solve the characteristic equation |B - λI| = 0:\n\n'
                    '(2-λ)(3-λ) = 0.\n'
                    'λ₁ = 2, λ₂ = 3.\n\n'
                    'Step 4: For λ₁ = 2:\n\n'
                    'Solve (B - 2I)v₁ = 0 for v₁.\n'
                    'B - 2I = [[0, 0], [0, 1]].\n'
                    'For v₁, [[0, 0], [0, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'y can be any value.\n'
                    'v₁ = [[1], [0]].\n\n'
                    'Step 5: For λ₂ = 3:\n\n'
                    'Solve (B - 3I)v₂ = 0 for v₂.\n'
                    'B - 3I = [[-1, 0], [0, 0]].\n'
                    'For v₂, [[-1, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'x can be any value.\n'
                    'v₂ = [[0], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nFind the eigenvalues and eigenvectors of the matrix C = [[5, 2], [2, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix C - λI:\n\n'
                    'C - λI = [[5-λ, 2], [2, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of C - λI:\n\n'
                    '|C - λI| = (5-λ)(3-λ) - 2*2 = (5-λ)(3-λ) - 4.\n\n'
                    'Step 3: Solve the characteristic equation |C - λI| = 0:\n\n'
                    '(5-λ)(3-λ) - 4 = 0.\n'
                    'λ² - 8λ + 13 = 0.\n'
                    'λ₁ = (8 + √(8² - 4*13))/2 = (8 + √(16))/2 = 4 + √(16)/2 = 4 + 2 = 6.\n'
                    'λ₂ = (8 - √(8² - 4*13))/2 = (8 - √(16))/2 = 4 - √(16)/2 = 4 - 2 = 2.\n\n'
                    'Step 4: For λ₁ = 6:\n\n'
                    'Solve (C - 6I)v₁ = 0 for v₁.\n'
                    'C - 6I = [[-1, 2], [2, -3]].\n'
                    'For v₁, [[-1, 2], [2, -3]] * [[x], [y]] = [[0], [0]].\n'
                    'x = 2y.\n'
                    'v₁ = [[2], [1]].\n\n'
                    'Step 5: For λ₂ = 2:\n\n'
                    'Solve (C - 2I)v₂ = 0 for v₂.\n'
                    'C - 2I = [[3, 2], [2, 1]].\n'
                    'For v₂, [[3, 2], [2, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x = -2y.\n'
                    'v₂ = [[2], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nFind the eigenvalues and eigenvectors of the matrix D = [[4, -2], [6, -1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix D - λI:\n\n'
                    'D - λI = [[4-λ, -2], [6, -1-λ]].\n\n'
                    'Step 2: Calculate the determinant of D - λI:\n\n'
                    '|D - λI| = (4-λ)(-1-λ) - (-2)*6.\n'
                    '         = λ² - 3λ + 2.\n'
                    '         = (λ - 2)(λ - 1).\n'
                    'λ₁ = 2, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 2:\n\n'
                    'Solve (D - 2I)v₁ = 0 for v₁.\n'
                    'D - 2I = [[2, -2], [6, -3]].\n'
                    'For v₁, [[2, -2], [6, -3]] * [[x], [y]] = [[0], [0]].\n'
                    'x = y.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (D - I)v₂ = 0 for v₂.\n'
                    'D - I = [[3, -2], [6, -2]].\n'
                    'For v₂, [[3, -2], [6, -2]] * [[x], [y]] = [[0], [0]].\n'
                    'x = 2y.\n'
                    'v₂ = [[2], [1]].\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nFind the eigenvalues and eigenvectors of the matrix E = [[1, 4], [2, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix E - λI:\n\n'
                    'E - λI = [[1-λ, 4], [2, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of E - λI:\n\n'
                    '|E - λI| = (1-λ)(3-λ) - 2*4.\n'
                    '         = λ² - 4λ - 5.\n'
                    '         = (λ - 5)(λ + 1).\n'
                    'λ₁ = 5, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (E - 5I)v₁ = 0 for v₁.\n'
                    'E - 5I = [[-4, 4], [2, -2]].\n'
                    'For v₁, [[-4, 4], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    'x = y.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (E + I)v₂ = 0 for v₂.\n'
                    'E + I = [[2, 4], [2, 4]].\n'
                    'For v₂, [[2, 4], [2, 4]] * [[x], [y]] = [[0], [0]].\n'
                    'x = -2y.\n'
                    'v₂ = [[2], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nFind the eigenvalues and eigenvectors of the matrix A = [[3, 1], [2, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix A - λI:\n\n'
                    'A - λI = [[3-λ, 1], [2, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of A - λI:\n\n'
                    '|A - λI| = (3-λ)(2-λ) - 1*2.\n'
                    '         = λ² - 5λ + 4.\n'
                    '         = (λ - 1)(λ - 4).\n'
                    'λ₁ = 1, λ₂ = 4.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (A - I)v₁ = 0 for v₁.\n'
                    'A - I = [[2, 1], [2, 1]].\n'
                    'For v₁, [[2, 1], [2, 1]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + y = 0.\n'
                    'v₁ = [[-1], [2]].\n\n'
                    'Step 4: For λ₂ = 4:\n\n'
                    'Solve (A - 4I)v₂ = 0 for v₂.\n'
                    'A - 4I = [[-1, 1], [2, -2]].\n'
                    'For v₂, [[-1, 1], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nFind the eigenvalues and eigenvectors of the matrix B = [[2, 0], [0, -3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix B - λI:\n\n'
                    'B - λI = [[2-λ, 0], [0, -3-λ]].\n\n'
                    'Step 2: Calculate the determinant of B - λI:\n\n'
                    '|B - λI| = (2-λ)(-3-λ) - 0*0.\n'
                    '         = λ² - 2λ - 3.\n'
                    '         = (λ - 3)(λ + 1).\n'
                    'λ₁ = 3, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (B - 3I)v₁ = 0 for v₁.\n'
                    'B - 3I = [[-1, 0], [0, -6]].\n'
                    'For v₁, [[-1, 0], [0, -6]] * [[x], [y]] = [[0], [0]].\n'
                    '-x = 0, -6y = 0.\n'
                    'v₁ = [[0], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (B + I)v₂ = 0 for v₂.\n'
                    'B + I = [[3, 0], [0, -2]].\n'
                    'For v₂, [[3, 0], [0, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '3x = 0, -2y = 0.\n'
                    'v₂ = [[1], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nFind the eigenvalues and eigenvectors of the matrix C = [[-1, -3], [2, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix C - λI:\n\n'
                    'C - λI = [[-1-λ, -3], [2, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of C - λI:\n\n'
                    '|C - λI| = (-1-λ)(4-λ) - (-3)*2.\n'
                    '         = λ² - 3λ + 2.\n'
                    '         = (λ - 1)(λ - 2).\n'
                    'λ₁ = 1, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (C - I)v₁ = 0 for v₁.\n'
                    'C - I = [[-2, -3], [2, 3]].\n'
                    'For v₁, [[-2, -3], [2, 3]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x - 3y = 0, 2x + 3y = 0.\n'
                    'v₁ = [[3], [-2]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (C - 2I)v₂ = 0 for v₂.\n'
                    'C - 2I = [[-3, -3], [2, 2]].\n'
                    'For v₂, [[-3, -3], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '-3x - 3y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nFind the eigenvalues and eigenvectors of the matrix D = [[0, -1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix D - λI:\n\n'
                    'D - λI = [[-λ, -1], [1, -λ]].\n\n'
                    'Step 2: Calculate the determinant of D - λI:\n\n'
                    '|D - λI| = (-λ)(-λ) - (-1)*1.\n'
                    '         = λ² + 1.\n'
                    'No real roots.\n'
                    'Complex eigenvalues: λ₁ = i, λ₂ = -i.\n\n'
                    'Step 3: For λ₁ = i:\n\n'
                    'Solve (D - iI)v₁ = 0 for v₁.\n'
                    'D - iI = [[-i, -1], [1, -i]].\n'
                    'For v₁, [[-i, -1], [1, -i]] * [[x], [y]] = [[0], [0]].\n'
                    '-ix - y = 0, x - iy = 0.\n'
                    'v₁ = [[1], [i]].\n\n'
                    'Step 4: For λ₂ = -i:\n\n'
                    'Solve (D + iI)v₂ = 0 for v₂.\n'
                    'D + iI = [[i, -1], [1, i]].\n'
                    'For v₂, [[i, -1], [1, i]] * [[x], [y]] = [[0], [0]].\n'
                    'ix - y = 0, x + iy = 0.\n'
                    'v₂ = [[1], [-i]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nFind the eigenvalues and eigenvectors of the matrix E = [[5, 2], [2, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix E - λI:\n\n'
                    'E - λI = [[5-λ, 2], [2, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of E - λI:\n\n'
                    '|E - λI| = (5-λ)(3-λ) - 2*2.\n'
                    '         = λ² - 8λ + 11.\n'
                    'No real roots.\n'
                    'Complex eigenvalues: λ₁ = 4 + i, λ₂ = 4 - i.\n\n'
                    'Step 3: For λ₁ = 4 + i:\n\n'
                    'Solve (E - (4 + i)I)v₁ = 0 for v₁.\n'
                    'E - (4 + i)I = [[1 - i, 2], [2, -1 - i]].\n'
                    'For v₁, [[1 - i, 2], [2, -1 - i]] * [[x], [y]] = [[0], [0]].\n'
                    '(1 - i)x + 2y = 0, 2x - (1 + i)y = 0.\n'
                    'v₁ = [[-1], [1 + i]].\n\n'
                    'Step 4: For λ₂ = 4 - i:\n\n'
                    'Solve (E - (4 - i)I)v₂ = 0 for v₂.\n'
                    'E - (4 - i)I = [[1 + i, 2], [2, -1 + i]].\n'
                    'For v₂, [[1 + i, 2], [2, -1 + i]] * [[x], [y]] = [[0], [0]].\n'
                    '(1 + i)x + 2y = 0, 2x - (1 - i)y = 0.\n'
                    'v₂ = [[-1], [1 - i]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nFind the eigenvalues and eigenvectors of the matrix F = [[-1, -2], [1, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix F - λI:\n\n'
                    'F - λI = [[-1-λ, -2], [1, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of F - λI:\n\n'
                    '|F - λI| = (-1-λ)(4-λ) - (-2)*1.\n'
                    '         = λ² - 3λ + 6.\n'
                    'No real roots.\n'
                    'Complex eigenvalues: λ₁ = (3 + √3)i, λ₂ = (3 - √3)i.\n\n'
                    'Step 3: For λ₁ = (3 + √3)i:\n\n'
                    'Solve (F - (3 + √3)iI)v₁ = 0 for v₁.\n'
                    'F - (3 + √3)iI = [[-1 - (3 + √3)i, -2], [1, 4 - (3 + √3)i]].\n'
                    'For v₁, [[-1 - (3 + √3)i, -2], [1, 4 - (3 + √3)i]] * [[x], [y]] = [[0], [0]].\n'
                    '(-1 - (3 + √3)i)x - 2y = 0, x + (4 - (3 + √3)i)y = 0.\n'
                    'v₁ = [[-2], [1 + (3 + √3)i]].\n\n'
                    'Step 4: For λ₂ = (3 - √3)i:\n\n'
                    'Solve (F - (3 - √3)iI)v₂ = 0 for v₂.\n'
                    'F - (3 - √3)iI = [[-1 - (3 - √3)i, -2], [1, 4 - (3 - √3)i]].\n'
                    'For v₂, [[-1 - (3 - √3)i, -2], [1, 4 - (3 - √3)i]] * [[x], [y]] = [[0], [0]].\n'
                    '(-1 - (3 - √3)i)x - 2y = 0, x + (4 - (3 - √3)i)y = 0.\n'
                    'v₂ = [[-2], [1 + (3 - √3)i]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nFind the eigenvalues and eigenvectors of the matrix G = [[0, 1], [-2, -3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix G - λI:\n\n'
                    'G - λI = [[-λ, 1], [-2, -3-λ]].\n\n'
                    'Step 2: Calculate the determinant of G - λI:\n\n'
                    '|G - λI| = (-λ)(-3-λ) - 1*(-2).\n'
                    '         = λ² + 3λ + 2.\n'
                    '         = (λ + 1)(λ + 2).\n'
                    'λ₁ = -1, λ₂ = -2.\n\n'
                    'Step 3: For λ₁ = -1:\n\n'
                    'Solve (G + I)v₁ = 0 for v₁.\n'
                    'G + I = [[1, 1], [-2, -2]].\n'
                    'For v₁, [[1, 1], [-2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, -2x - 2y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = -2:\n\n'
                    'Solve (G + 2I)v₂ = 0 for v₂.\n'
                    'G + 2I = [[2, 1], [-2, -1]].\n'
                    'For v₂, [[2, 1], [-2, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + y = 0, -2x - y = 0.\n'
                    'v₂ = [[1], [-2]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nFind the eigenvalues and eigenvectors of the matrix H = [[2, 0], [0, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix H - λI:\n\n'
                    'H - λI = [[2-λ, 0], [0, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of H - λI:\n\n'
                    '|H - λI| = (2-λ)(-2-λ) - 0*0.\n'
                    '         = λ² - 4.\n'
                    '         = (λ + 2)(λ - 2).\n'
                    'λ₁ = 2, λ₂ = -2.\n\n'
                    'Step 3: For λ₁ = 2:\n\n'
                    'Solve (H - 2I)v₁ = 0 for v₁.\n'
                    'H - 2I = [[0, 0], [0, -4]].\n'
                    'For v₁, [[0, 0], [0, -4]] * [[x], [y]] = [[0], [0]].\n'
                    '-4y = 0.\n'
                    'v₁ = [[1], [0]].\n\n'
                    'Step 4: For λ₂ = -2:\n\n'
                    'Solve (H + 2I)v₂ = 0 for v₂.\n'
                    'H + 2I = [[4, 0], [0, 0]].\n'
                    'For v₂, [[4, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    '4x = 0.\n'
                    'v₂ = [[0], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nFind the eigenvalues and eigenvectors of the matrix I = [[3, 1], [1, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix I - λI:\n\n'
                    'I - λI = [[3-λ, 1], [1, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of I - λI:\n\n'
                    '|I - λI| = (3-λ)(3-λ) - 1*1.\n'
                    '         = λ² - 6λ + 8.\n'
                    '         = (λ - 4)(λ - 2).\n'
                    'λ₁ = 4, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 4:\n\n'
                    'Solve (I - 4I)v₁ = 0 for v₁.\n'
                    'I - 4I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (I - 2I)v₂ = 0 for v₂.\n'
                    'I - 2I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nFind the eigenvalues and eigenvectors of the matrix J = [[-1, 1], [1, -1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix J - λI:\n\n'
                    'J - λI = [[-1-λ, 1], [1, -1-λ]].\n\n'
                    'Step 2: Calculate the determinant of J - λI:\n\n'
                    '|J - λI| = (-1-λ)(-1-λ) - 1*1.\n'
                    '         = λ² + 2λ.\n'
                    '         = λ(λ + 2).\n'
                    'λ₁ = 0, λ₂ = -2.\n\n'
                    'Step 3: For λ₁ = 0:\n\n'
                    'Solve (J - 0I)v₁ = 0 for v₁.\n'
                    'J - 0I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -2:\n\n'
                    'Solve (J + 2I)v₂ = 0 for v₂.\n'
                    'J + 2I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nFind the eigenvalues and eigenvectors of the matrix K = [[4, 0], [0, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix K - λI:\n\n'
                    'K - λI = [[4-λ, 0], [0, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of K - λI:\n\n'
                    '|K - λI| = (4-λ)(4-λ) - 0*0.\n'
                    '         = (4-λ)².\n'
                    'λ₁ = 4.\n\n'
                    'Step 3: For λ₁ = 4:\n\n'
                    'Solve (K - 4I)v₁ = 0 for v₁.\n'
                    'K - 4I = [[0, 0], [0, 0]].\n'
                    'For v₁, [[0, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nFind the eigenvalues and eigenvectors of the matrix L = [[-3, 0], [0, -3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix L - λI:\n\n'
                    'L - λI = [[-3-λ, 0], [0, -3-λ]].\n\n'
                    'Step 2: Calculate the determinant of L - λI:\n\n'
                    '|L - λI| = (-3-λ)(-3-λ) - 0*0.\n'
                    '         = (λ+3)².\n'
                    'λ₁ = -3.\n\n'
                    'Step 3: For λ₁ = -3:\n\n'
                    'Solve (L + 3I)v₁ = 0 for v₁.\n'
                    'L + 3I = [[0, 0], [0, 0]].\n'
                    'For v₁, [[0, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nFind the eigenvalues and eigenvectors of the matrix M = [[0, 1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix M - λI:\n\n'
                    'M - λI = [[-λ, 1], [1, -λ]].\n\n'
                    'Step 2: Calculate the determinant of M - λI:\n\n'
                    '|M - λI| = (-λ)(-λ) - 1*1.\n'
                    '         = λ² - 1.\n'
                    '         = (λ+1)(λ-1).\n'
                    'λ₁ = 1, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (M - I)v₁ = 0 for v₁.\n'
                    'M - I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (M + I)v₂ = 0 for v₂.\n'
                    'M + I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nFind the eigenvalues and eigenvectors of the matrix N = [[2, 1], [1, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix N - λI:\n\n'
                    'N - λI = [[2-λ, 1], [1, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of N - λI:\n\n'
                    '|N - λI| = (2-λ)(2-λ) - 1*1.\n'
                    '         = (2-λ)² - 1.\n'
                    '         = (2-λ-1)(2-λ+1).\n'
                    'λ₁ = 3, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (N - 3I)v₁ = 0 for v₁.\n'
                    'N - 3I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (N - I)v₂ = 0 for v₂.\n'
                    'N - I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nFind the eigenvalues and eigenvectors of the matrix P = [[3, 4], [2, 1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix P - λI:\n\n'
                    'P - λI = [[3-λ, 4], [2, 1-λ]].\n\n'
                    'Step 2: Calculate the determinant of P - λI:\n\n'
                    '|P - λI| = (3-λ)(1-λ) - 4*2.\n'
                    '         = (3-λ)(1-λ) - 8.\n'
                    '         = λ² - 4λ - 5.\n'
                    '         = (λ+1)(λ-5).\n'
                    'λ₁ = 5, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (P - 5I)v₁ = 0 for v₁.\n'
                    'P - 5I = [[-2, 4], [2, -4]].\n'
                    'For v₁, [[-2, 4], [2, -4]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 4y = 0, 2x - 4y = 0.\n'
                    'v₁ = [[2], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (P + I)v₂ = 0 for v₂.\n'
                    'P + I = [[4, 4], [2, 2]].\n'
                    'For v₂, [[4, 4], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '4x + 4y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nFind the eigenvalues and eigenvectors of the matrix Q = [[-1, 2], [2, -1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix Q - λI:\n\n'
                    'Q - λI = [[-1-λ, 2], [2, -1-λ]].\n\n'
                    'Step 2: Calculate the determinant of Q - λI:\n\n'
                    '|Q - λI| = (-1-λ)(-1-λ) - 2*2.\n'
                    '         = (λ+1)² - 4.\n'
                    '         = λ² + 2λ + 1 - 4.\n'
                    '         = λ² + 2λ - 3.\n'
                    '         = (λ+3)(λ-1).\n'
                    'λ₁ = 1, λ₂ = -3.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (Q - I)v₁ = 0 for v₁.\n'
                    'Q - I = [[-2, 2], [2, -2]].\n'
                    'For v₁, [[-2, 2], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, 2x - 2y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -3:\n\n'
                    'Solve (Q + 3I)v₂ = 0 for v₂.\n'
                    'Q + 3I = [[2, 2], [2, 2]].\n'
                    'For v₂, [[2, 2], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 2y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nFind the eigenvalues and eigenvectors of the matrix R = [[0, 1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix R - λI:\n\n'
                    'R - λI = [[0-λ, 1], [1, 0-λ]].\n\n'
                    'Step 2: Calculate the determinant of R - λI:\n\n'
                    '|R - λI| = (-λ)(-λ) - 1*1.\n'
                    '         = λ² - 1.\n'
                    '         = (λ+1)(λ-1).\n'
                    'λ₁ = 1, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (R - I)v₁ = 0 for v₁.\n'
                    'R - I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (R + I)v₂ = 0 for v₂.\n'
                    'R + I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nFind the eigenvalues and eigenvectors of the matrix S = [[1, 1], [1, 1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix S - λI:\n\n'
                    'S - λI = [[1-λ, 1], [1, 1-λ]].\n\n'
                    'Step 2: Calculate the determinant of S - λI:\n\n'
                    '|S - λI| = (1-λ)(1-λ) - 1*1.\n'
                    '         = (1-λ)² - 1.\n'
                    '         = λ² - 2λ.\n'
                    '         = λ(λ - 2).\n'
                    'λ₁ = 0, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 0:\n\n'
                    'Solve (S - 0I)v₁ = 0 for v₁.\n'
                    'S - 0I = [[1, 1], [1, 1]].\n'
                    'For v₁, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (S - 2I)v₂ = 0 for v₂.\n'
                    'S - 2I = [[-1, 1], [1, -1]].\n'
                    'For v₂, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nFind the eigenvalues and eigenvectors of the matrix T = [[2, 0], [0, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix T - λI:\n\n'
                    'T - λI = [[2-λ, 0], [0, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of T - λI:\n\n'
                    '|T - λI| = (2-λ)(2-λ) - 0*0.\n'
                    '         = (2-λ)².\n'
                    'λ₁ = 2.\n\n'
                    'Step 3: For λ₁ = 2:\n\n'
                    'Solve (T - 2I)v₁ = 0 for v₁.\n'
                    'T - 2I = [[0, 0], [0, 0]].\n'
                    'For v₁, [[0, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nFind the eigenvalues and eigenvectors of the matrix U = [[4, 2], [2, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix U - λI:\n\n'
                    'U - λI = [[4-λ, 2], [2, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of U - λI:\n\n'
                    '|U - λI| = (4-λ)(4-λ) - 2*2.\n'
                    '         = (4-λ)² - 4.\n'
                    '         = (4-λ+2)(4-λ-2).\n'
                    'λ₁ = 6, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 6:\n\n'
                    'Solve (U - 6I)v₁ = 0 for v₁.\n'
                    'U - 6I = [[-2, 2], [2, -2]].\n'
                    'For v₁, [[-2, 2], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, 2x - 2y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (U - 2I)v₂ = 0 for v₂.\n'
                    'U - 2I = [[2, 2], [2, 2]].\n'
                    'For v₂, [[2, 2], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 2y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nFind the eigenvalues and eigenvectors of the matrix V = [[3, -1], [2, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix V - λI:\n\n'
                    'V - λI = [[3-λ, -1], [2, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of V - λI:\n\n'
                    '|V - λI| = (3-λ)(-2-λ) - (-1)*2.\n'
                    '         = (3-λ)(-2-λ) + 2.\n'
                    '         = (λ-1)(λ+2) - 2.\n'
                    '         = λ² + λ - 4.\n'
                    '         = (λ-1)(λ+4).\n'
                    'λ₁ = 1, λ₂ = -4.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (V - I)v₁ = 0 for v₁.\n'
                    'V - I = [[2, -1], [2, -3]].\n'
                    'For v₁, [[2, -1], [2, -3]] * [[x], [y]] = [[0], [0]].\n'
                    '2x - y = 0, 2x - 3y = 0.\n'
                    'v₁ = [[1], [2]].\n\n'
                    'Step 4: For λ₂ = -4:\n\n'
                    'Solve (V + 4I)v₂ = 0 for v₂.\n'
                    'V + 4I = [[7, -1], [2, 2]].\n'
                    'For v₂, [[7, -1], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '7x - y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [7]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nFind the eigenvalues and eigenvectors of the matrix W = [[2, 1], [1, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix W - λI:\n\n'
                    'W - λI = [[2-λ, 1], [1, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of W - λI:\n\n'
                    '|W - λI| = (2-λ)(2-λ) - 1*1.\n'
                    '         = (2-λ)² - 1.\n'
                    '         = (2-λ+1)(2-λ-1).\n'
                    'λ₁ = 3, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (W - 3I)v₁ = 0 for v₁.\n'
                    'W - 3I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (W - I)v₂ = 0 for v₂.\n'
                    'W - I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nFind the eigenvalues and eigenvectors of the matrix X = [[3, 2], [1, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix X - λI:\n\n'
                    'X - λI = [[3-λ, 2], [1, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of X - λI:\n\n'
                    '|X - λI| = (3-λ)(4-λ) - 2*1.\n'
                    '         = (3-λ)(4-λ) - 2.\n'
                    '         = (12-7λ+λ²) - 2.\n'
                    '         = λ² - 7λ + 10.\n'
                    '         = (λ-5)(λ-2).\n'
                    'λ₁ = 5, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (X - 5I)v₁ = 0 for v₁.\n'
                    'X - 5I = [[-2, 2], [1, -1]].\n'
                    'For v₁, [[-2, 2], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, x - y = 0.\n'
                    'v₁ = [[1], [2]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (X - 2I)v₂ = 0 for v₂.\n'
                    'X - 2I = [[1, 2], [1, 2]].\n'
                    'For v₂, [[1, 2], [1, 2]] * [[x], [y]] = [[0], [0]].\n'
                    'x + 2y = 0, x + 2y = 0.\n'
                    'v₂ = [[2], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nFind the eigenvalues and eigenvectors of the matrix Y = [[0, -1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix Y - λI:\n\n'
                    'Y - λI = [[-λ, -1], [1, -λ]].\n\n'
                    'Step 2: Calculate the determinant of Y - λI:\n\n'
                    '|Y - λI| = (-λ)(-λ) - (-1)*1.\n'
                    '         = λ² - 1.\n'
                    '         = (λ+1)(λ-1).\n'
                    'λ₁ = i, λ₂ = -i.\n\n'
                    'Step 3: For λ₁ = i:\n\n'
                    'Solve (Y - iI)v₁ = 0 for v₁.\n'
                    'Y - iI = [[-i, -1], [1, -i]].\n'
                    'For v₁, [[-i, -1], [1, -i]] * [[x], [y]] = [[0], [0]].\n'
                    '-ix - y = 0, x - iy = 0.\n'
                    'v₁ = [[1], [i]].\n\n'
                    'Step 4: For λ₂ = -i:\n\n'
                    'Solve (Y + iI)v₂ = 0 for v₂.\n'
                    'Y + iI = [[i, -1], [1, i]].\n'
                    'For v₂, [[i, -1], [1, i]] * [[x], [y]] = [[0], [0]].\n'
                    'ix - y = 0, x + iy = 0.\n'
                    'v₂ = [[1], [-i]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nFind the eigenvalues and eigenvectors of the matrix Z = [[2, 0], [0, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix Z - λI:\n\n'
                    'Z - λI = [[2-λ, 0], [0, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of Z - λI:\n\n'
                    '|Z - λI| = (2-λ)(-2-λ) - 0*0.\n'
                    '         = (-λ-2)(-λ-2).\n'
                    'λ₁ = 2, λ₂ = -2.\n\n'
                    'Step 3: For λ₁ = 2:\n\n'
                    'Solve (Z - 2I)v₁ = 0 for v₁.\n'
                    'Z - 2I = [[0, 0], [0, -4]].\n'
                    'For v₁, [[0, 0], [0, -4]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n\n'
                    'Step 4: For λ₂ = -2:\n\n'
                    'Solve (Z + 2I)v₂ = 0 for v₂.\n'
                    'Z + 2I = [[4, 0], [0, 0]].\n'
                    'For v₂, [[4, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    '4x = 0.\n'
                    'v₂ = [[1], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nFind the eigenvalues and eigenvectors of the matrix A = [[5, 3], [3, 5]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix A - λI:\n\n'
                    'A - λI = [[5-λ, 3], [3, 5-λ]].\n\n'
                    'Step 2: Calculate the determinant of A - λI:\n\n'
                    '|A - λI| = (5-λ)(5-λ) - 3*3.\n'
                    '         = (5-λ)² - 9.\n'
                    '         = λ² - 10λ + 16.\n'
                    '         = (λ-8)(λ-2).\n'
                    'λ₁ = 8, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 8:\n\n'
                    'Solve (A - 8I)v₁ = 0 for v₁.\n'
                    'A - 8I = [[-3, 3], [3, -3]].\n'
                    'For v₁, [[-3, 3], [3, -3]] * [[x], [y]] = [[0], [0]].\n'
                    '-3x + 3y = 0, 3x - 3y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (A - 2I)v₂ = 0 for v₂.\n'
                    'A - 2I = [[3, 3], [3, 3]].\n'
                    'For v₂, [[3, 3], [3, 3]] * [[x], [y]] = [[0], [0]].\n'
                    '3x + 3y = 0, 3x + 3y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nFind the eigenvalues and eigenvectors of the matrix B = [[-1, -1], [0, -1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix B - λI:\n\n'
                    'B - λI = [[-1-λ, -1], [0, -1-λ]].\n\n'
                    'Step 2: Calculate the determinant of B - λI:\n\n'
                    '|B - λI| = (-1-λ)(-1-λ) - 0*(-1).\n'
                    '         = (-1-λ)².\n'
                    '         = (λ+1)².\n'
                    'λ₁ = -1.\n\n'
                    'Step 3: For λ₁ = -1:\n\n'
                    'Solve (B + I)v₁ = 0 for v₁.\n'
                    'B + I = [[0, -1], [0, 0]].\n'
                    'For v₁, [[0, -1], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    '-y = 0.\n'
                    'v₁ = [[1], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nFind the eigenvalues and eigenvectors of the matrix C = [[2, -1], [-1, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix C - λI:\n\n'
                    'C - λI = [[2-λ, -1], [-1, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of C - λI:\n\n'
                    '|C - λI| = (2-λ)(2-λ) - (-1)*(-1).\n'
                    '         = (2-λ)² - 1.\n'
                    '         = (λ-3)(λ-1).\n'
                    'λ₁ = 3, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (C - 3I)v₁ = 0 for v₁.\n'
                    'C - 3I = [[-1, -1], [-1, -1]].\n'
                    'For v₁, [[-1, -1], [-1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x - y = 0, -x - y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (C - I)v₂ = 0 for v₂.\n'
                    'C - I = [[1, -1], [-1, 1]].\n'
                    'For v₂, [[1, -1], [-1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x - y = 0, -x + y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nFind the eigenvalues and eigenvectors of the matrix D = [[3, 0], [0, 1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix D - λI:\n\n'
                    'D - λI = [[3-λ, 0], [0, 1-λ]].\n\n'
                    'Step 2: Calculate the determinant of D - λI:\n\n'
                    '|D - λI| = (3-λ)(1-λ) - 0*0.\n'
                    '         = (3-λ)(1-λ).\n'
                    'λ₁ = 3, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (D - 3I)v₁ = 0 for v₁.\n'
                    'D - 3I = [[0, 0], [0, -2]].\n'
                    'For v₁, [[0, 0], [0, -2]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (D - I)v₂ = 0 for v₂.\n'
                    'D - I = [[2, 0], [0, 0]].\n'
                    'For v₂, [[2, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    '2x = 0.\n'
                    'v₂ = [[1], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nFind the eigenvalues and eigenvectors of the matrix E = [[-2, 1], [1, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix E - λI:\n\n'
                    'E - λI = [[-2-λ, 1], [1, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of E - λI:\n\n'
                    '|E - λI| = (-2-λ)(-2-λ) - 1*1.\n'
                    '         = (λ+2)² - 1.\n'
                    '         = λ² + 4λ + 4 - 1.\n'
                    '         = λ² + 4λ + 3.\n'
                    '         = (λ+3)(λ+1).\n'
                    'λ₁ = -3, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = -3:\n\n'
                    'Solve (E + 3I)v₁ = 0 for v₁.\n'
                    'E + 3I = [[1, 1], [1, 1]].\n'
                    'For v₁, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (E + I)v₂ = 0 for v₂.\n'
                    'E + I = [[-1, 1], [1, -1]].\n'
                    'For v₂, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nFind the eigenvalues and eigenvectors of the matrix F = [[0, 1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix F - λI:\n\n'
                    'F - λI = [[-λ, 1], [1, -λ]].\n\n'
                    'Step 2: Calculate the determinant of F - λI:\n\n'
                    '|F - λI| = (-λ)(-λ) - 1*1.\n'
                    '         = λ² - 1.\n'
                    '         = (λ+1)(λ-1).\n'
                    'λ₁ = 1, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (F - I)v₁ = 0 for v₁.\n'
                    'F - I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (F + I)v₂ = 0 for v₂.\n'
                    'F + I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nFind the eigenvalues and eigenvectors of the matrix G = [[4, 2], [2, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix G - λI:\n\n'
                    'G - λI = [[4-λ, 2], [2, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of G - λI:\n\n'
                    '|G - λI| = (4-λ)(4-λ) - 2*2.\n'
                    '         = (4-λ)² - 4.\n'
                    '         = λ² - 8λ + 12.\n'
                    '         = (λ-6)(λ-2).\n'
                    'λ₁ = 6, λ₂ = 2.\n\n'
                    'Step 3: For λ₁ = 6:\n\n'
                    'Solve (G - 6I)v₁ = 0 for v₁.\n'
                    'G - 6I = [[-2, 2], [2, -2]].\n'
                    'For v₁, [[-2, 2], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, 2x - 2y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 2:\n\n'
                    'Solve (G - 2I)v₂ = 0 for v₂.\n'
                    'G - 2I = [[2, 2], [2, 2]].\n'
                    'For v₂, [[2, 2], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 2y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nFind the eigenvalues and eigenvectors of the matrix H = [[-3, 2], [2, -3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix H - λI:\n\n'
                    'H - λI = [[-3-λ, 2], [2, -3-λ]].\n\n'
                    'Step 2: Calculate the determinant of H - λI:\n\n'
                    '|H - λI| = (-3-λ)(-3-λ) - 2*2.\n'
                    '         = (-3-λ)² - 4.\n'
                    '         = (λ+1)(λ+5).\n'
                    'λ₁ = -1, λ₂ = -5.\n\n'
                    'Step 3: For λ₁ = -1:\n\n'
                    'Solve (H + I)v₁ = 0 for v₁.\n'
                    'H + I = [[-2, 2], [2, -2]].\n'
                    'For v₁, [[-2, 2], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, 2x - 2y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -5:\n\n'
                    'Solve (H + 5I)v₂ = 0 for v₂.\n'
                    'H + 5I = [[2, 2], [2, 2]].\n'
                    'For v₂, [[2, 2], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 2y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nFind the eigenvalues and eigenvectors of the matrix I = [[2, 0], [0, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix I - λI:\n\n'
                    'I - λI = [[2-λ, 0], [0, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of I - λI:\n\n'
                    '|I - λI| = (2-λ)(3-λ) - 0*0.\n'
                    '         = (2-λ)(3-λ).\n'
                    'λ₁ = 2, λ₂ = 3.\n\n'
                    'Step 3: For λ₁ = 2:\n\n'
                    'Solve (I - 2I)v₁ = 0 for v₁.\n'
                    'I - 2I = [[0, 0], [0, 1]].\n'
                    'For v₁, [[0, 0], [0, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'No non-trivial solution.\n'
                    'v₁ = [[0], [0]].\n\n'
                    'Step 4: For λ₂ = 3:\n\n'
                    'Solve (I - 3I)v₂ = 0 for v₂.\n'
                    'I - 3I = [[-1, 0], [0, 0]].\n'
                    'For v₂, [[-1, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    '-x = 0.\n'
                    'v₂ = [[1], [0]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nFind the eigenvalues and eigenvectors of the matrix J = [[-2, -1], [-1, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix J - λI:\n\n'
                    'J - λI = [[-2-λ, -1], [-1, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of J - λI:\n\n'
                    '|J - λI| = (-2-λ)(-2-λ) - (-1)(-1).\n'
                    '         = (-2-λ)² - 1.\n'
                    '         = (λ+1)(λ+3).\n'
                    'λ₁ = -1, λ₂ = -3.\n\n'
                    'Step 3: For λ₁ = -1:\n\n'
                    'Solve (J + I)v₁ = 0 for v₁.\n'
                    'J + I = [[-1, -1], [-1, -1]].\n'
                    'For v₁, [[-1, -1], [-1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x - y = 0, -x - y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = -3:\n\n'
                    'Solve (J + 3I)v₂ = 0 for v₂.\n'
                    'J + 3I = [[1, -1], [-1, 1]].\n'
                    'For v₂, [[1, -1], [-1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x - y = 0, -x + y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nFind the eigenvalues and eigenvectors of the matrix K = [[5, -2], [-2, 5]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix K - λI:\n\n'
                    'K - λI = [[5-λ, -2], [-2, 5-λ]].\n\n'
                    'Step 2: Calculate the determinant of K - λI:\n\n'
                    '|K - λI| = (5-λ)(5-λ) - (-2)(-2).\n'
                    '         = (5-λ)² - 4.\n'
                    '         = λ² - 10λ + 21.\n'
                    '         = (λ-7)(λ-3).\n'
                    'λ₁ = 7, λ₂ = 3.\n\n'
                    'Step 3: For λ₁ = 7:\n\n'
                    'Solve (K - 7I)v₁ = 0 for v₁.\n'
                    'K - 7I = [[-2, -2], [-2, -2]].\n'
                    'For v₁, [[-2, -2], [-2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x - 2y = 0, -2x - 2y = 0.\n'
                    'v₁ = [[1], [-1]].\n\n'
                    'Step 4: For λ₂ = 3:\n\n'
                    'Solve (K - 3I)v₂ = 0 for v₂.\n'
                    'K - 3I = [[2, -2], [-2, 2]].\n'
                    'For v₂, [[2, -2], [-2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x - 2y = 0, -2x + 2y = 0.\n'
                    'v₂ = [[1], [1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nFind the eigenvalues and eigenvectors of the matrix L = [[6, 3], [3, 6]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix L - λI:\n\n'
                    'L - λI = [[6-λ, 3], [3, 6-λ]].\n\n'
                    'Step 2: Calculate the determinant of L - λI:\n\n'
                    '|L - λI| = (6-λ)(6-λ) - 3*3.\n'
                    '         = (6-λ)² - 9.\n'
                    '         = λ² - 12λ + 27.\n'
                    '         = (λ-9)(λ-3).\n'
                    'λ₁ = 9, λ₂ = 3.\n\n'
                    'Step 3: For λ₁ = 9:\n\n'
                    'Solve (L - 9I)v₁ = 0 for v₁.\n'
                    'L - 9I = [[-3, 3], [3, -3]].\n'
                    'For v₁, [[-3, 3], [3, -3]] * [[x], [y]] = [[0], [0]].\n'
                    '-3x + 3y = 0, 3x - 3y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 3:\n\n'
                    'Solve (L - 3I)v₂ = 0 for v₂.\n'
                    'L - 3I = [[3, 3], [3, 3]].\n'
                    'For v₂, [[3, 3], [3, 3]] * [[x], [y]] = [[0], [0]].\n'
                    '3x + 3y = 0, 3x + 3y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nFind the eigenvalues and eigenvectors of the matrix M = [[4, 1], [1, 4]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix M - λI:\n\n'
                    'M - λI = [[4-λ, 1], [1, 4-λ]].\n\n'
                    'Step 2: Calculate the determinant of M - λI:\n\n'
                    '|M - λI| = (4-λ)(4-λ) - 1*1.\n'
                    '         = (4-λ)² - 1.\n'
                    '         = λ² - 8λ + 15.\n'
                    '         = (λ-5)(λ-3).\n'
                    'λ₁ = 5, λ₂ = 3.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (M - 5I)v₁ = 0 for v₁.\n'
                    'M - 5I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = 3:\n\n'
                    'Solve (M - 3I)v₂ = 0 for v₂.\n'
                    'M - 3I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nFind the eigenvalues and eigenvectors of the matrix N = [[3, 4], [4, 3]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix N - λI:\n\n'
                    'N - λI = [[3-λ, 4], [4, 3-λ]].\n\n'
                    'Step 2: Calculate the determinant of N - λI:\n\n'
                    '|N - λI| = (3-λ)(3-λ) - 4*4.\n'
                    '         = (3-λ)² - 16.\n'
                    '         = λ² - 6λ + 1.\n'
                    '         = (λ-5)(λ-1).\n'
                    'λ₁ = 5, λ₂ = 1.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (N - 5I)v₁ = 0 for v₁.\n'
                    'N - 5I = [[-2, 4], [4, -2]].\n'
                    'For v₁, [[-2, 4], [4, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 4y = 0, 4x - 2y = 0.\n'
                    'v₁ = [[2], [1]].\n\n'
                    'Step 4: For λ₂ = 1:\n\n'
                    'Solve (N - I)v₂ = 0 for v₂.\n'
                    'N - I = [[2, 4], [4, 2]].\n'
                    'For v₂, [[2, 4], [4, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 4y = 0, 4x + 2y = 0.\n'
                    'v₂ = [[2], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nFind the eigenvalues and eigenvectors of the matrix O = [[0, 1], [1, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix O - λI:\n\n'
                    'O - λI = [[0-λ, 1], [1, 0-λ]].\n\n'
                    'Step 2: Calculate the determinant of O - λI:\n\n'
                    '|O - λI| = (0-λ)(0-λ) - 1*1.\n'
                    '         = (0-λ)² - 1.\n'
                    '         = λ² - 1.\n'
                    '         = (λ-1)(λ+1).\n'
                    'λ₁ = 1, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (O - I)v₁ = 0 for v₁.\n'
                    'O - I = [[-1, 1], [1, -1]].\n'
                    'For v₁, [[-1, 1], [1, -1]] * [[x], [y]] = [[0], [0]].\n'
                    '-x + y = 0, x - y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (O + I)v₂ = 0 for v₂.\n'
                    'O + I = [[1, 1], [1, 1]].\n'
                    'For v₂, [[1, 1], [1, 1]] * [[x], [y]] = [[0], [0]].\n'
                    'x + y = 0, x + y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nFind the eigenvalues and eigenvectors of the matrix P = [[-2, 0], [0, -2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix P - λI:\n\n'
                    'P - λI = [[-2-λ, 0], [0, -2-λ]].\n\n'
                    'Step 2: Calculate the determinant of P - λI:\n\n'
                    '|P - λI| = (-2-λ)(-2-λ) - 0*0.\n'
                    '         = (-2-λ)².\n'
                    '         = (λ+2)².\n'
                    'λ₁ = -2.\n\n'
                    'Step 3: For λ₁ = -2:\n\n'
                    'Solve (P + 2I)v₁ = 0 for v₁.\n'
                    'P + 2I = [[0, 0], [0, 0]].\n'
                    'For v₁, [[0, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'Any vector in R² can be an eigenvector of P with eigenvalue -2.\n'
                    'v₁ = [[1], [0]] or v₁ = [[0], [1]].\n\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nFind the eigenvalues and eigenvectors of the matrix Q = [[0, 0], [0, 0]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix Q - λI:\n\n'
                    'Q - λI = [[0-λ, 0], [0, 0-λ]].\n\n'
                    'Step 2: Calculate the determinant of Q - λI:\n\n'
                    '|Q - λI| = (0-λ)(0-λ) - 0*0.\n'
                    '         = (0-λ)².\n'
                    '         = λ².\n'
                    'λ₁ = 0.\n\n'
                    'Step 3: For λ₁ = 0:\n\n'
                    'Solve (Q)v₁ = 0 for v₁.\n'
                    'For v₁, Q * [[x], [y]] = [[0], [0]].\n'
                    'Any non-zero vector in R² can be an eigenvector of Q with eigenvalue 0.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nFind the eigenvalues and eigenvectors of the matrix R = [[1, 0], [0, 1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix R - λI:\n\n'
                    'R - λI = [[1-λ, 0], [0, 1-λ]].\n\n'
                    'Step 2: Calculate the determinant of R - λI:\n\n'
                    '|R - λI| = (1-λ)(1-λ) - 0*0.\n'
                    '         = (1-λ)².\n'
                    '         = (1-λ)².\n'
                    'λ₁ = 1.\n\n'
                    'Step 3: For λ₁ = 1:\n\n'
                    'Solve (R - I)v₁ = 0 for v₁.\n'
                    'R - I = [[0, 0], [0, 0]].\n'
                    'For v₁, [[0, 0], [0, 0]] * [[x], [y]] = [[0], [0]].\n'
                    'Any non-zero vector in R² can be an eigenvector of R with eigenvalue 1.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nFind the eigenvalues and eigenvectors of the matrix S = [[2, 3], [3, 2]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix S - λI:\n\n'
                    'S - λI = [[2-λ, 3], [3, 2-λ]].\n\n'
                    'Step 2: Calculate the determinant of S - λI:\n\n'
                    '|S - λI| = (2-λ)(2-λ) - 3*3.\n'
                    '         = (2-λ)² - 9.\n'
                    '         = λ² - 4λ - 5.\n'
                    '         = (λ-5)(λ+1).\n'
                    'λ₁ = 5, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 5:\n\n'
                    'Solve (S - 5I)v₁ = 0 for v₁.\n'
                    'S - 5I = [[-3, 3], [3, -3]].\n'
                    'For v₁, [[-3, 3], [3, -3]] * [[x], [y]] = [[0], [0]].\n'
                    '-3x + 3y = 0, 3x - 3y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (S + I)v₂ = 0 for v₂.\n'
                    'S + I = [[3, 3], [3, 3]].\n'
                    'For v₂, [[3, 3], [3, 3]] * [[x], [y]] = [[0], [0]].\n'
                    '3x + 3y = 0, 3x + 3y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nFind the eigenvalues and eigenvectors of the matrix T = [[1, 2], [2, 1]].',
                solution: 'Solution:\n\n'
                    'Step 1: Set up the matrix T - λI:\n\n'
                    'T - λI = [[1-λ, 2], [2, 1-λ]].\n\n'
                    'Step 2: Calculate the determinant of T - λI:\n\n'
                    '|T - λI| = (1-λ)(1-λ) - 2*2.\n'
                    '         = (1-λ)² - 4.\n'
                    '         = λ² - 2λ - 3.\n'
                    '         = (λ-3)(λ+1).\n'
                    'λ₁ = 3, λ₂ = -1.\n\n'
                    'Step 3: For λ₁ = 3:\n\n'
                    'Solve (T - 3I)v₁ = 0 for v₁.\n'
                    'T - 3I = [[-2, 2], [2, -2]].\n'
                    'For v₁, [[-2, 2], [2, -2]] * [[x], [y]] = [[0], [0]].\n'
                    '-2x + 2y = 0, 2x - 2y = 0.\n'
                    'v₁ = [[1], [1]].\n\n'
                    'Step 4: For λ₂ = -1:\n\n'
                    'Solve (T + I)v₂ = 0 for v₂.\n'
                    'T + I = [[2, 2], [2, 2]].\n'
                    'For v₂, [[2, 2], [2, 2]] * [[x], [y]] = [[0], [0]].\n'
                    '2x + 2y = 0, 2x + 2y = 0.\n'
                    'v₂ = [[1], [-1]].\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
