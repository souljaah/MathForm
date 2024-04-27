import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class LimitsPage extends StatelessWidget {
  final Color chosenColor;
  LimitsPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Limits'),
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
                'Calculus Limits:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Limits are fundamental concepts in calculus that describe how a function behaves as its input approaches a specific value. They tell us what value a function approaches as its input gets arbitrarily close to a particular point. Limits are crucial for understanding rates of change and accumulation, forming the foundation for defining derivatives and integrals, which are essential in calculus for solving a wide range of mathematical and scientific problems.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Example: Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Step By Step Solution:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1: Factorize the numerator: x^2 - 4 = (x + 2)(x - 2).',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: Rewrite the function: f(x) = ((x + 2)(x - 2)) / (x - 2).',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: Cancel out the common factor (x - 2) from the numerator and denominator.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 4: Now the function is simplified: f(x) = x + 2.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 5: Finally, substitute x = 2 into the simplified function to find the limit:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nAnswer: lim (x -> 2) f(x) = lim (x -> 2) (x + 2) = 2 + 2 = 4.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = x^2 - 3x + 2 as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can substitute x = 2 into the function:\n'
                    '   f(2) = 2^2 - 3(2) + 2\n'
                    '        = 4 - 6 + 2\n'
                    '        = 0.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = sin(x) / x as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use L\'Hôpital\'s Rule.\n'
                    '2. Taking the derivative of both the numerator and the denominator:\n'
                    '   lim (x -> 0) sin(x) / x = lim (x -> 0) cos(x) / 1\n'
                    '                            = cos(0) / 1\n'
                    '                            = 1.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (3x^2 + 2x - 8) / (x + 2) as x approaches -2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches -2, we can directly substitute x = -2 into the function:\n'
                    '   f(-2) = (3(-2)^2 + 2(-2) - 8) / (-2 + 2)\n'
                    '         = (12 - 4 - 8) / 0\n'
                    '         = -4 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = sqrt(x + 4) as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can directly substitute x = 0 into the function:\n'
                    '   f(0) = sqrt(0 + 4)\n'
                    '        = sqrt(4)\n'
                    '        = 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator,\n'
                    '   we get f(x) = x^2 + 2x + 4.\n'
                    '3. Substituting x = 2 into the simplified function,\n'
                    '   we get f(2) = 2^2 + 2(2) + 4\n'
                    '             = 4 + 4 + 4\n'
                    '             = 12.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (e^x - 1) / x as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use L\'Hôpital\'s Rule.\n'
                    '2. Taking the derivative of both the numerator and the denominator,\n'
                    '   we get lim (x -> 0) (e^x - 1) / x = lim (x -> 0) e^x / 1\n'
                    '                                    = e^0 / 1\n'
                    '                                    = 1.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (1 - cos(x)) / x^2 as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use L\'Hôpital\'s Rule.\n'
                    '2. Taking the derivative of both the numerator and the denominator,\n'
                    '   we get lim (x -> 0) (1 - cos(x)) / x^2 = lim (x -> 0) sin(x) / (2x)\n'
                    '                                         = 0 / 0.\n'
                    '3. We can apply L\'Hôpital\'s Rule again, and after differentiation,\n'
                    '   we get lim (x -> 0) cos(x) / 2\n'
                    '           = 1 / 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (4x^3 + 3x^2 - 2x) / (2x^2 + 5x) as x approaches infinity.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches infinity,\n'
                    '   we can divide all terms by the highest power of x in the denominator:\n'
                    '   f(x) = (4x^3 / x^2 + 3x^2 / x^2 - 2x / x^2) / (2x^2 / x^2 + 5x / x^2).\n'
                    '2. This simplifies to f(x) = (4 + 3/x - 2/x^2) / (2 + 5/x).\n'
                    '3. As x approaches infinity, the terms with 1/x or 1/x^2 approach 0,\n'
                    '   so the limit simplifies to f(x) = (4 + 0 - 0) / (2 + 0)\n'
                    '                                    = 4 / 2\n'
                    '                                    = 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (e^x - 1) / (x^2) as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use L\'Hôpital\'s Rule.\n'
                    '2. Taking the derivative of both the numerator and the denominator, we get\n'
                    '   lim (x -> 0) (e^x - 1) / (x^2) = lim (x -> 0) e^x / (2x)\n'
                    '                                   = 1 / 0.\n'
                    '3. We apply L\'Hôpital\'s Rule again, and after differentiation, we get\n'
                    '   lim (x -> 0) e^x / 2\n'
                    '           = 1 / 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator,\n'
                    '   we get f(x) = x^2 + 2x + 4.\n'
                    '3. Substituting x = 2 into the simplified function,\n'
                    '   we get f(2) = 2^2 + 2(2) + 4\n'
                    '             = 4 + 4 + 4\n'
                    '             = 12.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (cos(x) - 1) / (x^2) as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use Taylor series expansion.\n'
                    '2. The Taylor series expansion for cos(x) is cos(x) = 1 - x^2/2! + x^4/4! - x^6/6! + ..., so cos(x) - 1 = -x^2/2! + x^4/4! - x^6/6! + ....\n'
                    '3. As x approaches 0, all terms after -x^2/2! become negligible,\n'
                    '   so the limit becomes lim (x -> 0) (-x^2/2!) / (x^2) = lim (x -> 0) -1/2 = -1/2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (tan(x) - sin(x)) / x^3 as x approaches 0.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 0, we can use Taylor series expansion.\n'
                    '2. The Taylor series expansion for tan(x) is tan(x) = x + x^3/3 + 2x^5/15 + ..., and for sin(x) is sin(x) = x - x^3/3! + x^5/5! - ....\n'
                    '3. Subtract sin(x) from tan(x) to get: tan(x) - sin(x) = (x + x^3/3 + 2x^5/15 + ...) - (x - x^3/3! + x^5/5! - ...).\n'
                    '4. Simplify this expression to get: tan(x) - sin(x) = x^3/3 + 2x^5/15 - x^3/3! + x^5/5! + ... = (x^3/3 - x^3/3!) + (2x^5/15 + x^5/5!) + ....\n'
                    '5. As x approaches 0, all terms after (x^3/3 - x^3/3!) become negligible.\n'
                    '6. So the limit becomes: lim (x -> 0) (x^3/3 - x^3/3!) / (x^3) = lim (x -> 0) 1/3 - 1/6 = 1/6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (2x^3 - 5x^2 + 3) / (4x^2 - 3x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = (2(1)^3 - 5(1)^2 + 3) / (4(1)^2 - 3(1) + 1)\n'
                    '        = (2 - 5 + 3) / (4 - 3 + 1)\n'
                    '        = 0 / 2\n'
                    '        = 0.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 3x + 1) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = (1^3 - 3(1) + 1) / (1^2 - 2(1) + 1)\n'
                    '        = (1 - 3 + 1) / (1 - 2 + 1)\n'
                    '        = -1 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^2 - 4 = (x - 2)(x + 2).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator,\n'
                    '   we get f(x) = x + 2.\n'
                    '3. Substituting x = 2 into the simplified function,\n'
                    '   we get f(2) = 2 + 2\n'
                    '             = 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 + 8) / (x + 2) as x approaches -2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches -2, we can directly substitute x = -2 into the function:\n'
                    '   f(-2) = ((-2)^3 + 8) / ((-2) + 2)\n'
                    '         = (-8 + 8) / 0\n'
                    '         = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x^2 - 4) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator and the denominator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4),\n'
                    '   x^2 - 4 = (x - 2)(x + 2).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator,\n'
                    '   we get f(x) = (x^2 + 2x + 4) / (x + 2).\n'
                    '3. Substituting x = 2 into the simplified function,\n'
                    '   we get f(2) = (2^2 + 2(2) + 4) / (2 + 2)\n'
                    '             = (4 + 4 + 4) / 4\n'
                    '             = 12 / 4\n'
                    '             = 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (2x^3 - 3x^2 + x - 1) / (x^2 - 4) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can directly substitute x = 2 into the function:\n'
                    '   f(2) = (2(2)^3 - 3(2)^2 + 2 - 1) / (2^2 - 4)\n'
                    '        = (16 - 12 + 2 - 1) / (4 - 4)\n'
                    '        = 5 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^4 - 1) / (x^3 - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can factorize the numerator and the denominator:\n'
                    '   x^4 - 1 = (x^2 + 1)(x + 1)(x - 1),\n'
                    '   x^3 - 1 = (x - 1)(x^2 + x + 1).\n'
                    '2. After canceling the common factor (x - 1) from the numerator and the denominator,\n'
                    '   we get f(x) = (x^2 + 1)(x + 1) / (x^2 + x + 1).\n'
                    '3. Substituting x = 1 into the simplified function,\n'
                    '   we get f(1) = (1^2 + 1)(1 + 1) / (1^2 + 1 + 1)\n'
                    '             = (2)(2) / (1 + 1 + 1)\n'
                    '             = 4 / 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 + 3x + 2) / (x^2 - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = (1^2 + 3(1) + 2) / (1^2 - 1)\n'
                    '        = (1 + 3 + 2) / (1 - 1)\n'
                    '        = 6 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 2x - 3) / (x^2 - 5x + 6) as x approaches 3.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 3, we can directly substitute x = 3 into the function:\n'
                    '   f(3) = (3^2 - 2(3) - 3) / (3^2 - 5(3) + 6)\n'
                    '        = (9 - 6 - 3) / (9 - 15 + 6)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 + 2x + 1) / (x^2 - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = (1^2 + 2(1) + 1) / (1^2 - 1)\n'
                    '        = (1 + 2 + 1) / (1 - 1)\n'
                    '        = 4 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^2 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can directly substitute x = 2 into the function:\n'
                    '   f(2) = ((2)^3 - 8) / ((2) - 2)\n'
                    '        = (8 - 8) / (2 - 2)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can directly substitute x = 2 into the function:\n'
                    '   f(2) = ((2)^2 - 4) / ((2) - 2)\n'
                    '        = (4 - 4) / (2 - 2)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^2 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can directly substitute x = 2 into the function:\n'
                    '   f(2) = ((2)^2 - 4) / ((2) - 2)\n'
                    '        = (4 - 4) / (2 - 2)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^2 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can directly substitute x = 2 into the function:\n'
                    '   f(2) = ((2)^2 - 4) / ((2) - 2)\n'
                    '        = (4 - 4) / (2 - 2)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^2 - 1) / ((1) - 1)\n'
                    '        = (1 - 1) / (1 - 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 2x^2 + x) / (x^2 - 2x + 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can directly substitute x = 1 into the function:\n'
                    '   f(1) = ((1)^3 - 2(1)^2 + 1) / ((1)^2 - 2(1) + 1)\n'
                    '        = (1 - 2 + 1) / (1 - 2 + 1)\n'
                    '        = 0 / 0.\n'
                    '2. The denominator is 0, indicating that the function approaches infinity.\n'
                    '   Therefore, the limit does not exist.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 4) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^2 - 4 = (x - 2)(x + 2).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator, we get:\n'
                    '   f(x) = x + 2.\n'
                    '3. Substituting x = 2 into the simplified function, we get:\n'
                    '   f(2) = 2 + 2 = 4.\n'
                    '   Therefore, the limit of f(x) as x approaches 2 is 4.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + 2x + 4.\n'
                    '3. Substituting x = 2 into the simplified function, we get:\n'
                    '   f(2) = 2^2 + 2(2) + 4 = 4 + 4 + 4 = 12.\n'
                    '   Therefore, the limit of f(x) as x approaches 2 is 12.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can factorize the numerator:\n'
                    '   x^2 - 1 = (x - 1)(x + 1).\n'
                    '2. After canceling the common factor (x - 1) from the numerator and the denominator, we get:\n'
                    '   f(x) = x + 1.\n'
                    '3. Substituting x = 1 into the simplified function, we get:\n'
                    '   f(1) = 1 + 1 = 2.\n'
                    '   Therefore, the limit of f(x) as x approaches 1 is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can factorize the numerator:\n'
                    '   x^3 - 1 = (x - 1)(x^2 + x + 1).\n'
                    '2. After canceling the common factor (x - 1) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + x + 1.\n'
                    '3. Substituting x = 1 into the simplified function, we get:\n'
                    '   f(1) = 1^2 + 1 + 1 = 1 + 1 + 1 = 3.\n'
                    '   Therefore, the limit of f(x) as x approaches 1 is 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + 2x + 4.\n'
                    '3. Substituting x = 2 into the simplified function, we get:\n'
                    '   f(2) = 2^2 + 2(2) + 4 = 4 + 4 + 4 = 12.\n'
                    '   Therefore, the limit of f(x) as x approaches 2 is 12.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 9) / (x - 3) as x approaches 3.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 3, we can factorize the numerator:\n'
                    '   x^2 - 9 = (x - 3)(x + 3).\n'
                    '2. After canceling the common factor (x - 3) from the numerator and the denominator, we get:\n'
                    '   f(x) = x + 3.\n'
                    '3. Substituting x = 3 into the simplified function, we get:\n'
                    '   f(3) = 3 + 3 = 6.\n'
                    '   Therefore, the limit of f(x) as x approaches 3 is 6.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 27) / (x - 3) as x approaches 3.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 3, we can factorize the numerator:\n'
                    '   x^3 - 27 = (x - 3)(x^2 + 3x + 9).\n'
                    '2. After canceling the common factor (x - 3) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + 3x + 9.\n'
                    '3. Substituting x = 3 into the simplified function, we get:\n'
                    '   f(3) = 3^2 + 3(3) + 9 = 9 + 9 + 9 = 27.\n'
                    '   Therefore, the limit of f(x) as x approaches 3 is 27.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^2 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can factorize the numerator:\n'
                    '   x^2 - 1 = (x - 1)(x + 1).\n'
                    '2. After canceling the common factor (x - 1) from the numerator and the denominator, we get:\n'
                    '   f(x) = x + 1.\n'
                    '3. Substituting x = 1 into the simplified function, we get:\n'
                    '   f(1) = 1 + 1 = 2.\n'
                    '   Therefore, the limit of f(x) as x approaches 1 is 2.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 1) / (x - 1) as x approaches 1.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 1, we can factorize the numerator:\n'
                    '   x^3 - 1 = (x - 1)(x^2 + x + 1).\n'
                    '2. After canceling the common factor (x - 1) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + x + 1.\n'
                    '3. Substituting x = 1 into the simplified function, we get:\n'
                    '   f(1) = 1^2 + 1 + 1 = 1 + 1 + 1 = 3.\n'
                    '   Therefore, the limit of f(x) as x approaches 1 is 3.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem:
                'Find the limit of f(x) = (x^3 - 8) / (x - 2) as x approaches 2.',
                solution:
                'Solution:\n'
                    '1. To find the limit of f(x) as x approaches 2, we can factorize the numerator:\n'
                    '   x^3 - 8 = (x - 2)(x^2 + 2x + 4).\n'
                    '2. After canceling the common factor (x - 2) from the numerator and the denominator, we get:\n'
                    '   f(x) = x^2 + 2x + 4.\n'
                    '3. Substituting x = 2 into the simplified function, we get:\n'
                    '   f(2) = 2^2 + 2(2) + 4 = 4 + 4 + 4 = 12.\n'
                    '   Therefore, the limit of f(x) as x approaches 2 is 12.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
