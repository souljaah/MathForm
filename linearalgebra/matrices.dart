import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class Matrices extends StatelessWidget {
  final Color chosenColor;
  Matrices ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matrices'),
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
                'Matrices',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Linear Algebra Matrices are rectangular arrays of numbers, symbols, or expressions arranged in rows and columns. Matrices play a fundamental role in various mathematical and computational applications, including solving systems of linear equations, representing transformations, and conducting data analysis.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'A matrix is typically denoted by a capital letter, such as A, and its elements are denoted by lowercase letters with subscripts, such as a_ij, where i represents the row index and j represents the column index.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Matrices can be added, subtracted, and multiplied by scalars. Matrix multiplication, in particular, involves combining the rows of the first matrix with the columns of the second matrix to produce a new matrix. Matrix multiplication is subject to certain rules, such as the number of columns in the first matrix being equal to the number of rows in the second matrix.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Matrices are used to represent linear transformations, such as rotations, reflections, and scaling, in geometric contexts. They are also used extensively in solving systems of linear equations, where a system of equations can be represented as a matrix equation Ax= b, where A is a coefficient matrix, x is a column vector of variables, and b is a column vector of constants.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Given matrices A and B, where\n\n A=\n\n 2 -1\n\n  3 0\n\nB=\n\n  4 2\n\n  -2 1\n\nFind the product A ⋅ B and B ⋅ A.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nSolution:\n\nStep 1: Multiply the elements of the first row of matrix A by the corresponding elements of the first column of matrix B, then sum the products to find the entry in the first row and first column of the product matrix.\n\n(A⋅B)_11 =2⋅4+(-1)⋅(-2) = 8+2 =10',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Repeat the process to find the entry in the first row and second column of the product matrix.\n\n(A⋅B)_12 = 2⋅2+(-1) ⋅ 1 =4 -1 = 3\n\nStep 3: Next, find the entry in the second row and first column of the product matrix.\n\n(A⋅B)_21 = 3⋅4+0⋅(-2) =12\n\nStep 4: Finally, find the entry in the second row and second column of the product matrix.\n\n(A⋅B)_22 =3⋅2+0⋅1 = 6\n\nSo, the product of matrices A and B is:\n\n A⋅B = 10 3\n\n  12 6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nNow, let`s find the product B ⋅ A:\n\nStep 5: Multiply the elements of the first row of matrix B by the corresponding elements of the first column of matrix A, then sum the products to find the entry in the first row and first column of the product matrix.\n\n(B⋅A)_11 =4⋅2+2⋅3 = 8+6 =14\n\nStep 6: Repeat the process to find the entry in the first row and second column of the product matrix.\n\n(B⋅A)_12 =4⋅(-1) +2⋅0 =-4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 7: Next, find the entry in the second row and first column of the product matrix.\n\n(B⋅A)_21 = -2⋅2+1⋅3= -4+3 =-1\n\nStep 8: Finally, find the entry in the second row and second column of the product matrix.\n\n(B⋅A)_22 = -2(-1) + 1⋅ 0 =2\n\nSo, the product of matrices B and A is:\n\nB⋅A = 14 -4\n     -1 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[3  1]\n'
                    '[1  3]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [3 - λ  1   ]\n'
                    '        [1      3 - λ]\n\n'
                    'det(A - λI) = (3 - λ)(3 - λ) - 1 * 1\n'
                    '             = (3 - λ)^2 - 1\n'
                    '             = 9 - 6λ + λ^2 - 1\n'
                    '             = λ^2 - 6λ + 8\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 6λ + 8 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (6 ± √(6^2 - 4*1*8)) / 2\n'
                    '                              λ = (6 ± √(36 - 32)) / 2\n'
                    '                              λ = (6 ± √4) / 2\n'
                    '                              λ = (6 ± 2) / 2\n'
                    '                              λ₁ = (6 + 2) / 2 = 4\n'
                    '                              λ₂ = (6 - 2) / 2 = 2\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For λ₁ = 4:\n'
                    '[3 - 4  1  ] [x₁] = [0]\n'
                    '[1      3 - 4] [y₁] = [0]\n\n'
                    '[-1  1] [x₁] = [0]\n'
                    '[1  -1] [y₁] = [0]\n\n'
                    'x₁ = y₁\n\n'
                    'x₁ = 1\n\n'
                    'For y₁ = 1, x₁ = 1\n\n'
                    'So, the eigenvector corresponding to λ₁ = 4 is [1, 1].\n\n'
                    'For λ₂ = 2:\n'
                    '[3 - 2  1  ] [x₂] = [0]\n'
                    '[1      3 - 2] [y₂] = [0]\n\n'
                    '[1  1] [x₂] = [0]\n'
                    '[1  1] [y₂] = [0]\n\n'
                    'x₂ + y₂ = 0\n\n'
                    'x₂ = -y₂\n\n'
                    'y₂ = 1\n\n'
                    'So, the eigenvector corresponding to λ₂ = 2 is [-1, 1].\n\n'
                    'Therefore, the eigenvalues are λ₁ = 4 with eigenvector [1, 1], and λ₂ = 2 with eigenvector [-1, 1].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nCalculate the product of the following matrices:\n\n'
                    '[2  -1]\n'
                    '[3   4]\n\n'
                    'and\n\n'
                    '[5  2]\n'
                    '[1  0]',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply the matrices A and B by taking the dot product of each row of A '
                    'with each column of B:\n\n'
                    '[2  -1]   [5  2]   [ (2*5 + (-1)*1)   (2*2 + (-1)*0)]   [ 10 + (-1)   4 + 0]\n'
                    '[3   4] * [1  0] = [ (3*5 + 4*1)       (3*2 + 4*0)    ] = [ 15 + 4       6 + 0]\n\n'
                    'The resulting matrix is:\n\n'
                    '[ 9   4]\n'
                    '[19   8]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nFind the inverse of a 2x2 matrix.',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix.\n\n'
                    'Step 2: Swap the positions of the elements on the main diagonal.\n\n'
                    'Step 3: Change the signs of the elements on the off-diagonal.\n\n'
                    'Step 4: Multiply the resulting matrix by 1/determinant.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nFind the eigenvalues and eigenvectors of a square matrix.',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of (A - λI), where A is the square matrix, '
                    'λ is the eigenvalue, and I is the identity matrix of the same size as A.\n\n'
                    'Step 2: Solve the characteristic equation det(A - λI) = 0 to find the eigenvalues.\n\n'
                    'Step 3: For each eigenvalue, solve the equation (A - λI)v = 0 to find the corresponding '
                    'eigenvector v by Gaussian elimination or other methods.\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nFind the rank of a matrix.',
                solution: 'Solution:\n\n'
                    'Step 1: Convert the matrix to row-echelon form using row operations such as '
                    'elementary row operations or Gaussian elimination.\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nFind the determinant of the following matrix:\n\n'
                    '[1  2]\n'
                    '[3  4]',
                solution: 'Solution:\n\n'
                    'Step 1: Use the formula for the determinant of a 2x2 matrix:\n\n'
                    'det(A) = (1 * 4) - (2 * 3)\n'
                    'det(A) = 4 - 6\n'
                    'det(A) = -2\n\n'
                    'Therefore, the determinant of the matrix is -2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nFind the inverse of the following matrix:\n\n'
                    '[1  2]\n'
                    '[3  4]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (1 * 4) - (2 * 3)\n'
                    'det(A) = 4 - 6\n'
                    'det(A) = -2\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [4  -2]\n'
                    '         [-3  1]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [4  -2] / -2\n'
                    '       [-3  1] / -2\n\n'
                    'A^-1 = [-2  1]\n'
                    '       [3/2 -1/2]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ -2   1 ]\n'
                    '[3/2 -1/2]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nSolve the following system of equations using matrices:\n\n'
                    '2x + 3y = 7\n'
                    '4x - 2y = 10',
                solution: 'Solution:\n\n'
                    'Step 1: Write the system of equations in matrix form AX = B:\n\n'
                    '[2  3] [x] = [7]\n'
                    '[4 -2] [y] = [10]\n\n'
                    'Step 2: Calculate the inverse of the coefficient matrix A:\n\n'
                    'A = [2  3]\n'
                    '    [4 -2]\n\n'
                    'det(A) = (2 * -2) - (3 * 4) = -14\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [ -2  -3]\n'
                    '       [-4   2]\n\n'
                    'Step 3: Multiply the inverse of A with B to find X:\n\n'
                    '[x] = A^-1 * [7]\n'
                    '[y]         [10]\n\n'
                    '[x] = [-2  -3] * [7]\n'
                    '[y]   [-4   2] [10]\n\n'
                    '[x] = [-2*7 + (-3)*10]\n'
                    '[y]   [-4*7 + 2*10]\n\n'
                    '[x] = [-14 - 30]\n'
                    '[y]   [-28 + 20]\n\n'
                    '[x] = [-44]\n'
                    '[y]   [-8]\n\n'
                    'Step 4: The solution to the system of equations is:\n\n'
                    'x = -44, y = -8\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[3  1]\n'
                    '[1  3]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [3 - λ  1   ]\n'
                    '        [1      3 - λ]\n\n'
                    'det(A - λI) = (3 - λ)(3 - λ) - 1 * 1\n'
                    '             = (3 - λ)^2 - 1\n'
                    '             = 9 - 6λ + λ^2 - 1\n'
                    '             = λ^2 - 6λ + 8\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 6λ + 8 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (6 ± √(6^2 - 4*1*8)) / 2\n'
                    '                              λ = (6 ± √(36 - 32)) / 2\n'
                    '                              λ = (6 ± √4) / 2\n'
                    '                              λ = (6 ± 2) / 2\n'
                    '                              λ₁ = (6 + 2) / 2 = 4\n'
                    '                              λ₂ = (6 - 2) / 2 = 2\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For λ₁ = 4:\n'
                    '[3 - 4  1  ] [x₁] = [0]\n'
                    '[1      3 - 4] [y₁] = [0]\n\n'
                    '[-1  1] [x₁] = [0]\n'
                    '[1  -1] [y₁] = [0]\n\n'
                    'x₁ = y₁\n\n'
                    'x₁ = 1\n\n'
                    'For y₁ = 1, x₁ = 1\n\n'
                    'So, the eigenvector corresponding to λ₁ = 4 is [1, 1].\n\n'
                    'For λ₂ = 2:\n'
                    '[3 - 2  1  ] [x₂] = [0]\n'
                    '[1      3 - 2] [y₂] = [0]\n\n'
                    '[1  1] [x₂] = [0]\n'
                    '[1  1] [y₂] = [0]\n\n'
                    'x₂ + y₂ = 0\n\n'
                    'x₂ = -y₂\n\n'
                    'y₂ = 1\n\n'
                    'So, the eigenvector corresponding to λ₂ = 2 is [-1, 1].\n\n'
                    'Therefore, the eigenvalues are λ₁ = 4 with eigenvector [1, 1], and λ₂ = 2 with eigenvector [-1, 1].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nCalculate the product of the following matrices:\n\n'
                    '[2  -1]\n'
                    '[3   4]\n\n'
                    'and\n\n'
                    '[5  2]\n'
                    '[1  0]',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply the matrices A and B by taking the dot product of each row of A '
                    'with each column of B:\n\n'
                    '[2  -1]   [5  2]   [ (2*5 + (-1)*1)   (2*2 + (-1)*0)]   [ 10 + (-1)   4 + 0]\n'
                    '[3   4] * [1  0] = [ (3*5 + 4*1)       (3*2 + 4*0)    ] = [ 15 + 4       6 + 0]\n\n'
                    'The resulting matrix is:\n\n'
                    '[ 9   4]\n'
                    '[19   8]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[7  8  9]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nFind the trace of the matrix:\n\n'
                    '[2  -3  1]\n'
                    '[0   4  2]\n'
                    '[5   1 -2]',
                solution: 'Solution:\n\n'
                    'Step 1: The trace of a square matrix is the sum of its diagonal elements.\n\n'
                    'Trace = 2 + 4 + (-2)\n'
                    'Trace = 4\n\n'
                    'Therefore, the trace of the matrix is 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[1  -1]\n'
                    '[4   2]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [1 - λ  -1   ]\n'
                    '        [4      2 - λ]\n\n'
                    'det(A - λI) = (1 - λ)(2 - λ) - (-1 * 4)\n'
                    '             = (1 - λ)(2 - λ) + 4\n'
                    '             = 2 - 3λ + λ^2 + 4\n'
                    '             = λ^2 - 3λ + 6\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 3λ + 6 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (3 ± √(3^2 - 4*1*6)) / 2\n'
                    '                              λ = (3 ± √(9 - 24)) / 2\n'
                    '                              λ = (3 ± √(-15)) / 2\n'
                    'Since the discriminant is negative, there are no real eigenvalues.\n'
                    'Eigenvalues are complex.\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For complex eigenvalues, the corresponding eigenvectors can be found using the formula:\n'
                    'v = (A - λI)^(-1)u, where u is a non-zero vector.\n\n'
                    'Therefore, the eigenvectors corresponding to the complex eigenvalues can be calculated '
                    'using this formula.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[1  -1]\n'
                    '[4   2]',
                solution: 'Solution:\n\n'
                    'A matrix is diagonalizable if it has n linearly independent eigenvectors, where n is the size of the matrix.\n\n'
                    'From Problem 13, we found that the eigenvalues of the matrix are complex.\n'
                    'Since complex eigenvalues always come in conjugate pairs and the matrix is 2x2, '
                    'it must have 2 linearly independent eigenvectors.\n'
                    'Therefore, the matrix is diagonalizable.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nCalculate the determinant of the following matrix:\n\n'
                    '[2  3  1]\n'
                    '[0  1  2]\n'
                    '[1  0 -1]',
                solution: 'Solution:\n\n'
                    'Step 1: Expand the determinant along the first row:\n\n'
                    'det(A) = 2 * |[1  2]|\n'
                    '         - 3 * |[0 -1]|\n\n'
                    '         + 1 * |[0  1]|\n\n'
                    'det(A) = 2 * (1 * (-1) - 2 * 0)\n'
                    '         - 3 * (0 * (-1) - 1 * 0)\n\n'
                    '         + 1 * (0 * 1 - 1 * 0)\n\n'
                    'det(A) = 2 * (-1) - 3 * (0) + 1 * (0)\n'
                    'det(A) = -2 - 0 + 0\n'
                    'det(A) = -2\n\n'
                    'Therefore, the determinant of the matrix is -2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nFind the inverse of the following matrix:\n\n'
                    '[2  1]\n'
                    '[3  2]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (2 * 2) - (1 * 3)\n'
                    '       = 4 - 3\n'
                    '       = 1\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [2  -1]\n'
                    '         [-3  2]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [2  -1] / 1\n'
                    '       [-3  2]\n\n'
                    'A^-1 = [2  -1]\n'
                    '       [-3  2]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ 2  -1 ]\n'
                    '[-3   2 ]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[7  8  9]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nFind the product of two matrices A and B.',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply each element in the first row of matrix A '
                    'by the corresponding element in the first column of matrix B, '
                    'then add the products together to get the first element of the resulting matrix.\n\n'
                    'Step 2: Repeat this process for each element in the resulting matrix, '
                    'until all elements are filled.\n\n'
                    'Step 3: The resulting matrix is the product of matrices A and B.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nFind the determinant of a 3x3 matrix.',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply each element in the main diagonal (top-left to bottom-right) '
                    'of the matrix.\n\n'
                    'Step 2: Multiply each element in the anti-diagonal (top-right to bottom-left) '
                    'of the matrix.\n\n'
                    'Step 3: Add the products from Step 1 and subtract the products from Step 2. '
                    'The result is the determinant of the matrix.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[7  8  9]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nFind the trace of the matrix:\n\n'
                    '[2  -3  1]\n'
                    '[0   4  2]\n'
                    '[5   1 -2]',
                solution: 'Solution:\n\n'
                    'Step 1: The trace of a square matrix is the sum of its diagonal elements.\n\n'
                    'Trace = 2 + 4 + (-2)\n'
                    'Trace = 4\n\n'
                    'Therefore, the trace of the matrix is 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nFind the determinant of the following matrix:\n\n'
                    '[1  -1]\n'
                    '[4   2]',
                solution: 'Solution:\n\n'
                    'Step 1: Use the formula for the determinant of a 2x2 matrix:\n\n'
                    'det(A) = (1 * 2) - (4 * (-1))\n'
                    '       = 2 + 4\n'
                    '       = 6\n\n'
                    'Therefore, the determinant of the matrix is 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nFind the inverse of the following matrix:\n\n'
                    '[3  2]\n'
                    '[1  5]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (3 * 5) - (2 * 1)\n'
                    '       = 15 - 2\n'
                    '       = 13\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [5  -2]\n'
                    '         [-1  3]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [5  -2] / 13\n'
                    '       [-1  3]\n\n'
                    'A^-1 = [5/13  -2/13]\n'
                    '       [-1/13  3/13]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ 5/13  -2/13 ]\n'
                    '[-1/13   3/13 ]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[7  8  9]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[2  -1]\n'
                    '[4   1]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [2 - λ  -1   ]\n'
                    '        [4      1 - λ]\n\n'
                    'det(A - λI) = (2 - λ)(1 - λ) - (-1 * 4)\n'
                    '             = (2 - λ)(1 - λ) + 4\n'
                    '             = 2 - 3λ + λ^2 + 4\n'
                    '             = λ^2 - 3λ + 6\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 3λ + 6 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (3 ± √(3^2 - 4*1*6)) / 2\n'
                    '                              λ = (3 ± √(9 - 24)) / 2\n'
                    '                              λ = (3 ± √(-15)) / 2\n'
                    'Since the discriminant is negative, there are no real eigenvalues.\n'
                    'Eigenvalues are complex.\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For complex eigenvalues, the corresponding eigenvectors can be found using the formula:\n'
                    'v = (A - λI)^(-1)u, where u is a non-zero vector.\n\n'
                    'Therefore, the eigenvectors corresponding to the complex eigenvalues can be calculated '
                    'using this formula.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[1  -1]\n'
                    '[4   2]',
                solution: 'Solution:\n\n'
                    'A matrix is diagonalizable if it has n linearly independent eigenvectors, where n is the size of the matrix.\n\n'
                    'From Problem 25, we found that the eigenvalues of the matrix are complex.\n'
                    'Since complex eigenvalues always come in conjugate pairs and the matrix is 2x2, '
                    'it must have 2 linearly independent eigenvectors.\n'
                    'Therefore, the matrix is diagonalizable.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nCalculate the product of the following matrices:\n\n'
                    '[2  -1  0]\n'
                    '[3   4  2]\n'
                    '[1   2  1]\n\n'
                    'and\n\n'
                    '[1  0  -1]\n'
                    '[2  1   0]\n'
                    '[3  2   1]',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply the matrices A and B by taking the dot product of each row of A '
                    'with each column of B:\n\n'
                    '[2  -1  0]   [1  0  -1]   [ (2*1 + (-1)*2 + 0*3)   (2*0 + (-1)*1 + 0*2)   (2*(-1) + (-1)*0 + 0*1)]   [ 2 - 2 + 0   0 - 1 + 0   -2 - 0 + 0]\n'
                    '[3   4  2] * [2  1   0] = [ (3*1 + 4*2 + 2*3)      (3*0 + 4*1 + 2*2)      (3*(-1) + 4*0 + 2*1)]  = [ 3 + 8 + 6   0 + 4 + 4   -3 + 0 + 2]\n'
                    '[1   2  1]   [3  2   1]   [ (1*1 + 2*2 + 1*3)      (1*0 + 2*1 + 1*2)      (1*(-1) + 2*0 + 1*1)]  = [ 1 + 4 + 3   0 + 2 + 2   -1 + 0 + 1]\n\n'
                    'The resulting matrix is:\n\n'
                    '[ 0 - 1 - 2]\n'
                    '[17   8   2]\n'
                    '[ 8   4   1]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[7  8  9]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nFind the determinant of the matrix:\n\n'
                    '[3  1  2]\n'
                    '[0  2  1]\n'
                    '[1  0  3]',
                solution: 'Solution:\n\n'
                    'Step 1: Expand the determinant along the first row:\n\n'
                    'det(A) = 3 * |[2  1]|\n'
                    '         - 1 * |[0  1]|\n'
                    '         + 2 * |[0  2]|\n\n'
                    'det(A) = 3 * (2 * 3 - 1 * 0)\n'
                    '         - 1 * (0 * 3 - 1 * 0)\n'
                    '         + 2 * (0 * 2 - 1 * 0)\n\n'
                    'det(A) = 3 * 6 - 1 * 0 + 2 * 0\n'
                    'det(A) = 18 - 0 + 0\n'
                    'det(A) = 18\n\n'
                    'Therefore, the determinant of the matrix is 18.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nFind the inverse of the matrix:\n\n'
                    '[1  2]\n'
                    '[3  4]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (1 * 4) - (2 * 3)\n'
                    '       = 4 - 6\n'
                    '       = -2\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [4  -2]\n'
                    '         [-3  1]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [4  -2] / (-2)\n'
                    '       [-3  1]\n\n'
                    'A^-1 = [4/-2  -2/-2]\n'
                    '       [-3/-2  1/-2]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ -2   1]\n'
                    '[3/2 -1/2]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nCalculate the rank of the matrix:\n\n'
                    '[1  0  0]\n'
                    '[0  2  0]\n'
                    '[0  0  3]',
                solution: 'Solution:\n\n'
                    'Step 1: The given matrix is already in row-echelon form.\n\n'
                    'Step 2: Count the number of non-zero rows.\n\n'
                    'There are 3 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[2  -1]\n'
                    '[1   2]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [2 - λ  -1   ]\n'
                    '        [1      2 - λ]\n\n'
                    'det(A - λI) = (2 - λ)(2 - λ) - (-1 * 1)\n'
                    '             = (2 - λ)(2 - λ) + 1\n'
                    '             = 4 - 4λ + λ^2 + 1\n'
                    '             = λ^2 - 4λ + 5\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 4λ + 5 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (4 ± √(4^2 - 4*1*5)) / 2\n'
                    '                              λ = (4 ± √(16 - 20)) / 2\n'
                    '                              λ = (4 ± √(-4)) / 2\n'
                    'Since the discriminant is negative, there are no real eigenvalues.\n'
                    'Eigenvalues are complex.\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For complex eigenvalues, the corresponding eigenvectors can be found using the formula:\n'
                    'v = (A - λI)^(-1)u, where u is a non-zero vector.\n\n'
                    'Therefore, the eigenvectors corresponding to the complex eigenvalues can be calculated '
                    'using this formula.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[1  -1]\n'
                    '[1   1]',
                solution: 'Solution:\n\n'
                    'A matrix is diagonalizable if it has n linearly independent eigenvectors, where n is the size of the matrix.\n\n'
                    'From Problem 32, we found that the eigenvalues of the matrix are complex.\n'
                    'Since complex eigenvalues always come in conjugate pairs and the matrix is 2x2, '
                    'it must have 2 linearly independent eigenvectors.\n'
                    'Therefore, the matrix is diagonalizable.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nCalculate the product of the following matrices:\n\n'
                    '[2  -1]\n'
                    '[3   4]\n\n'
                    'and\n\n'
                    '[1  0]\n'
                    '[2  1]',
                solution: 'Solution:\n\n'
                    'Step 1: Multiply the matrices A and B by taking the dot product of each row of A '
                    'with each column of B:\n\n'
                    '[2  -1]   [1  0]   [ (2*1 + (-1)*2)   (2*0 + (-1)*1)]   [ 2 - 2   0 - 1]\n'
                    '[3   4] * [2  1] = [ (3*1 + 4*2)       (3*0 + 4*1)    ] = [ 3 + 8   0 + 4]\n\n'
                    'The resulting matrix is:\n\n'
                    '[ 0 - 1]\n'
                    '[11   4]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nFind the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[0  0  0]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nFind the determinant of the matrix:\n\n'
                    '[2  1  0]\n'
                    '[0  3  1]\n'
                    '[1  2  3]',
                solution: 'Solution:\n\n'
                    'Step 1: Expand the determinant along the first row:\n\n'
                    'det(A) = 2 * |[3  1]|\n'
                    '         - 1 * |[0  1]|\n'
                    '         + 0 * |[0  3]|\n\n'
                    'det(A) = 2 * (3 * 3 - 1 * 2)\n'
                    '         - 1 * (0 * 3 - 1 * 0)\n'
                    '         + 0 * (0 * 2 - 3 * 0)\n\n'
                    'det(A) = 2 * (9 - 2)\n'
                    '         - 1 * (0 - 0)\n'
                    '         + 0 * (0 - 0)\n\n'
                    'det(A) = 2 * 7 - 1 * 0 + 0\n'
                    'det(A) = 14\n\n'
                    'Therefore, the determinant of the matrix is 14.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nFind the inverse of the matrix:\n\n'
                    '[1  2]\n'
                    '[3  5]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (1 * 5) - (2 * 3)\n'
                    '       = 5 - 6\n'
                    '       = -1\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [5  -2]\n'
                    '         [-3  1]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [5  -2] / (-1)\n'
                    '       [-3  1]\n\n'
                    'A^-1 = [-5   2]\n'
                    '       [ 3  -1]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ -5   2]\n'
                    '[  3  -1]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nCalculate the rank of the matrix:\n\n'
                    '[1  0  0]\n'
                    '[0  1  0]\n'
                    '[0  0  0]',
                solution: 'Solution:\n\n'
                    'Step 1: The given matrix is already in row-echelon form.\n\n'
                    'Step 2: Count the number of non-zero rows.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[3  -2]\n'
                    '[1   0]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [3 - λ  -2   ]\n'
                    '        [1      0 - λ]\n\n'
                    'det(A - λI) = (3 - λ)(0 - λ) - (-2 * 1)\n'
                    '             = (3 - λ)(0 - λ) + 2\n'
                    '             = 3λ - λ^2 + 2\n\n'
                    'Step 2: Solve the quadratic equation 3λ - λ^2 + 2 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (0 ± √((-3)^2 - 4*1*2)) / 2\n'
                    '                              λ = (0 ± √(9 - 8)) / 2\n'
                    '                              λ = (0 ± √1) / 2\n'
                    '                              λ₁ = (0 + 1) / 2 = 1\n'
                    '                              λ₂ = (0 - 1) / 2 = -1\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For λ₁ = 1:\n'
                    '[3 - 1  -2  ][x₁] = [0]\n'
                    '[1      0 - 1] [y₁] = [0]\n\n'
                    '[2  -2  ][x₁] = [0]\n'
                    '[1  -1] [y₁] = [0]\n\n'
                    'x₁ = y₁\n\n'
                    'x₁ = 1\n\n'
                    'For y₁ = 1, x₁ = 1\n\n'
                    'So, the eigenvector corresponding to λ₁ = 1 is [1, 1].\n\n'
                    'For λ₂ = -1:\n'
                    '[3 + 1  -2  ][x₂] = [0]\n'
                    '[1      0 + 1] [y₂] = [0]\n\n'
                    '[4  -2  ][x₂] = [0]\n'
                    '[1   1] [y₂] = [0]\n\n'
                    '2x₂ = 0\n'
                    'x₂ = 0\n\n'
                    'For y₂ = 1, x₂ = 0\n\n'
                    'So, the eigenvector corresponding to λ₂ = -1 is [0, 1].\n\n'
                    'Therefore, the eigenvalues are λ₁ = 1 with eigenvector [1, 1], and λ₂ = -1 with eigenvector [0, 1].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[1  -1]\n'
                    '[0   1]',
                solution: 'Solution:\n\n'
                    'A matrix is diagonalizable if it has n linearly independent eigenvectors, where n is the size of the matrix.\n\n'
                    'From Problem 39, we found that the matrix has two distinct eigenvalues, which are both real.\n'
                    'Since the matrix is 2x2 and has two distinct eigenvalues, it must have two linearly independent eigenvectors.\n'
                    'Therefore, the matrix is diagonalizable.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nFind the determinant of the matrix:\n\n'
                    '[4  0  2]\n'
                    '[1  3  1]\n'
                    '[2  0  5]',
                solution: 'Solution:\n\n'
                    'Step 1: Expand the determinant along the first row:\n\n'
                    'det(A) = 4 * |[3  1]|\n'
                    '         - 0 * |[1  1]|\n'
                    '         + 2 * |[1  3]|\n\n'
                    'det(A) = 4 * (3 * 5 - 1 * 0)\n'
                    '         - 0 * (1 * 5 - 1 * 0)\n'
                    '         + 2 * (1 * 3 - 3 * 1)\n\n'
                    'det(A) = 4 * (15)\n'
                    '         - 0 * (5)\n'
                    '         + 2 * (3 - 3)\n\n'
                    'det(A) = 60 - 0 + 0\n'
                    'det(A) = 60\n\n'
                    'Therefore, the determinant of the matrix is 60.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nFind the inverse of the matrix:\n\n'
                    '[2  1]\n'
                    '[3  2]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (2 * 2) - (1 * 3)\n'
                    '       = 4 - 3\n'
                    '       = 1\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [2  -1]\n'
                    '         [-3  2]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [2  -1] / 1\n'
                    '       [-3  2]\n\n'
                    'A^-1 = [2   -1]\n'
                    '       [-3   2]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ 2  -1]\n'
                    '[-3   2]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nCalculate the rank of the matrix:\n\n'
                    '[1  0  2]\n'
                    '[0  1  3]\n'
                    '[0  0  0]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  0  2]\n'
                    '[0  1  3]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[1  2]\n'
                    '[2  1]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [1 - λ  2   ]\n'
                    '        [2      1 - λ]\n\n'
                    'det(A - λI) = (1 - λ)(1 - λ) - (2 * 2)\n'
                    '             = (1 - λ)(1 - λ) - 4\n'
                    '             = 1 - 2λ + λ^2 - 4\n'
                    '             = λ^2 - 2λ - 3\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 2λ - 3 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (2 ± √(2^2 - 4*1*(-3))) / 2\n'
                    '                              λ = (2 ± √(4 + 12)) / 2\n'
                    '                              λ = (2 ± √16) / 2\n'
                    '                              λ₁ = (2 + 4) / 2 = 3\n'
                    '                              λ₂ = (2 - 4) / 2 = -1\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For λ₁ = 3:\n'
                    '[1 - 3  2][x₁] = [0]\n'
                    '[2      1 - 3] [y₁] = [0]\n\n'
                    '[-2  2][x₁] = [0]\n'
                    '[ 2 -2] [y₁] = [0]\n\n'
                    'x₁ = y₁\n\n'
                    'x₁ = 1\n\n'
                    'For y₁ = 1, x₁ = 1\n\n'
                    'So, the eigenvector corresponding to λ₁ = 3 is [1, 1].\n\n'
                    'For λ₂ = -1:\n'
                    '[1 + 1  2][x₂] = [0]\n'
                    '[2      1 + 1] [y₂] = [0]\n\n'
                    '[2  2][x₂] = [0]\n'
                    '[2  2] [y₂] = [0]\n\n'
                    'x₂ = -y₂\n\n'
                    'x₂ = -1\n\n'
                    'For y₂ = 1, x₂ = -1\n\n'
                    'So, the eigenvector corresponding to λ₂ = -1 is [-1, 1].\n\n'
                    'Therefore, the eigenvalues are λ₁ = 3 with eigenvector [1, 1], and λ₂ = -1 with eigenvector [-1, 1].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[1  1]\n'
                    '[0  1]',
                solution: 'Solution:\n\n'
                    'A matrix is diagonalizable if it has n linearly independent eigenvectors, where n is the size of the matrix.\n\n'
                    'From Problem 44, we found that the matrix has two distinct eigenvalues, which are both real.\n'
                    'Since the matrix is 2x2 and has two distinct eigenvalues, it must have two linearly independent eigenvectors.\n'
                    'Therefore, the matrix is diagonalizable.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nFind the determinant of the matrix:\n\n'
                    '[3  2  1]\n'
                    '[0  2  4]\n'
                    '[1  3  5]',
                solution: 'Solution:\n\n'
                    'Step 1: Expand the determinant along the first row:\n\n'
                    'det(A) = 3 * |[2  4]|\n'
                    '         - 2 * |[0  4]|\n'
                    '         + 1 * |[0  2]|\n\n'
                    'det(A) = 3 * (2 * 5 - 4 * 3)\n'
                    '         - 2 * (0 * 5 - 4 * 1)\n'
                    '         + 1 * (0 * 3 - 2 * 0)\n\n'
                    'det(A) = 3 * (10 - 12)\n'
                    '         - 2 * (0 - 4)\n'
                    '         + 1 * (0 - 0)\n\n'
                    'det(A) = 3 * (-2) - 2 * (-4) + 0\n'
                    'det(A) = -6 + 8\n'
                    'det(A) = 2\n\n'
                    'Therefore, the determinant of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nFind the inverse of the matrix:\n\n'
                    '[2  1]\n'
                    '[1  2]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A) = (2 * 2) - (1 * 1)\n'
                    '       = 4 - 1\n'
                    '       = 3\n\n'
                    'Step 2: If the determinant is not zero, the inverse exists.\n\n'
                    'Step 3: Find the adjugate of the matrix:\n\n'
                    'adj(A) = [2  -1]\n'
                    '         [-1  2]\n\n'
                    'Step 4: Calculate the inverse using the formula A^-1 = adj(A) / det(A):\n\n'
                    'A^-1 = adj(A) / det(A)\n'
                    'A^-1 = [2  -1] / 3\n'
                    '       [-1  2]\n\n'
                    'A^-1 = [2/3  -1/3]\n'
                    '       [-1/3  2/3]\n\n'
                    'Therefore, the inverse of the matrix is:\n\n'
                    '[ 2/3  -1/3]\n'
                    '[-1/3   2/3]\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nCalculate the rank of the matrix:\n\n'
                    '[1  2  3]\n'
                    '[4  5  6]\n'
                    '[2  4  6]',
                solution: 'Solution:\n\n'
                    'Step 1: Perform row operations to convert the matrix to row-echelon form.\n\n'
                    '[1  2  3]\n'
                    '[0 -3 -6]\n'
                    '[0  0  0]\n\n'
                    'Step 2: Count the number of non-zero rows in the row-echelon form.\n\n'
                    'There are 2 non-zero rows.\n\n'
                    'Step 3: The rank of the matrix is equal to the number of non-zero rows.\n\n'
                    'Therefore, the rank of the matrix is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nFind the eigenvalues and eigenvectors of the matrix:\n\n'
                    '[2  -1]\n'
                    '[1   4]',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the determinant of the matrix:\n\n'
                    'det(A - λI) = |A - λI| = 0\n\n'
                    'A - λI = [2 - λ  -1   ]\n'
                    '        [1      4 - λ]\n\n'
                    'det(A - λI) = (2 - λ)(4 - λ) - (-1 * 1)\n'
                    '             = (2 - λ)(4 - λ) + 1\n'
                    '             = 8 - 6λ + λ^2 + 1\n'
                    '             = λ^2 - 6λ + 9\n\n'
                    'Step 2: Solve the quadratic equation λ^2 - 6λ + 9 = 0 to find the eigenvalues:\n\n'
                    'Using the quadratic formula, λ = (6 ± √(6^2 - 4*1*9)) / 2\n'
                    '                              λ = (6 ± √(36 - 36)) / 2\n'
                    '                              λ = (6 ± √0) / 2\n'
                    '                              λ = 6 / 2 = 3\n\n'
                    'Step 3: For each eigenvalue, find the corresponding eigenvector by solving (A - λI)v = 0:\n\n'
                    'For λ = 3:\n'
                    '[2 - 3  -1  ][x] = [0]\n'
                    '[1      4 - 3] [y] = [0]\n\n'
                    '[-1  -1][x] = [0]\n'
                    '[ 1  -1] [y] = [0]\n\n'
                    '-x - y = 0\n'
                    'x = -y\n\n'
                    'For y = 1, x = -1\n\n'
                    'So, the eigenvector corresponding to λ = 3 is [-1, 1].\n\n'
                    'Therefore, the eigenvalue is λ = 3 with eigenvector [-1, 1].\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nDetermine whether the following matrix is diagonalizable:\n\n'
                    '[2  1]\n'
                    '[0  2]',
                solution: 'Solution:\n\n'
                    'Step 1: Find the eigenvalues and eigenvectors of the matrix:\n\n'
                    'We need to solve the characteristic equation det(A - λI) = 0 to find the eigenvalues:\n\n'
                    'A - λI = [2 - λ  1   ]\n'
                    '        [0      2 - λ]\n\n'
                    'det(A - λI) = (2 - λ)(2 - λ)\n'
                    '             = (2 - λ)^2\n'
                    '             = 0\n\n'
                    'λ = 2\n\n'
                    'For the eigenvalue λ = 2, we need to find the corresponding eigenvectors by solving (A - λI)v = 0:\n\n'
                    'For λ = 2:\n'
                    '[2 - 2  1  ][x] = [0]\n'
                    '[0      2 - 2] [y] = [0]\n\n'
                    '[0  1][x] = [0]\n'
                    '[0  0] [y] = [0]\n\n'
                    'y is a free variable\n'
                    'Let y = 1\n'
                    'From the first equation: x = 0\n\n'
                    'So, the eigenvector corresponding to λ = 2 is [0, 1].\n\n'
                    'Step 2: Determine if the matrix is diagonalizable:\n\n'
                    'Since the matrix has one distinct eigenvalue and one linearly independent eigenvector, it is diagonalizable.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
