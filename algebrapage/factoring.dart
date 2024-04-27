import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class FactoringPage extends StatelessWidget {
  final Color chosenColor;
  FactoringPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factoring'),
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
                'Factoring',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebra factoring is a fundamental concept that involves breaking down algebraic expressions into simpler forms by finding common factors. It`s a crucial skill in algebra and is used in various areas, including simplifying expressions, solving equations, and graphing functions. Factoring helps us identify patterns and relationships within expressions, making it easier to manipulate and solve them.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'In essence, factoring involves rewriting an expression as a product of its factors. These factors are typically simpler expressions that, when multiplied together, yield the original expression. The process of factoring is essentially the reverse of the distributive property.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Importance of Factoring:\n1. Simplification: Factoring allows us to simplify complex expressions into more manageable forms.\n2. Solving Equations: Factoring helps in solving equations by identifying solutions more easily.\n3. Graphing Functions: Factoring can help identify critical points, intercepts, and other features of functions.\n4. Identifying Patterns: Factoring helps us recognize common algebraic patterns and relationships.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Common Factoring Techniques:\n1. Greatest Common Factor (GCF): Identifying and factoring out the greatest common factor of the terms in an expression.\n2. Difference of Squares: Factoring expressions that are the difference of two perfect squares.\n Trinomial Factoring: Factoring quadratic trinomials of the form ax^2+bx+c into two binomial factors.\n4. Factoring by Grouping: Grouping terms in an expression and factoring out common factors from each group.\n5. Speical Cases: Factoring expressions that involve special patterns, such as perfect square trinomials and sum or difference of cubes.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nProblem: Factor the quadratic expression x^2 + 6x+9.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nTo factor the quadratic expression x^ 2 + 6x + 9, we need to find two binomial factors whose product equals the original expression.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Identify the pattern: Recognize that the expression resembles a perfect square trinomial pattern:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n a^2 + 2ab+b^2 = (a+b)^2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Apply the perfect square trinomial pattern: Rewrite the expression using the pattern.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nx^2+6x+9=(x+3)^2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Verify: Verify that the factors obtained multiply back to the original expression.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n(x+3)^2=(x+3)(x+3)=x^2+3x+3x+9=x^2+6x+9',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nFinal Answer: The quadratic expression x^2+6x+9 as (x+3)^2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '1. Factor the expression: x^2 - 4x + 4.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the perfect square trinomial pattern: a^2 - 2ab + b^2 = (a - b)^2.\n\n'
                    'We rewrite the expression using the perfect square trinomial pattern: x^2 - 4x + 4 = (x - 2)^2.\n\n'
                    'Verifying the factors, we have (x - 2)^2 = (x - 2)(x - 2) = x^2 - 2x - 2x + 4 = x^2 - 4x + 4.\n\n'
                    'Final Answer: The expression x^2 - 4x + 4 factors as (x - 2)^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '2. Factor the expression: x^2 - 9.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 9 = (x + 3)(x - 3).\n\n'
                    'Verifying the factors, we have (x + 3)(x - 3) = x^2 - 3x + 3x - 9 = x^2 - 9.\n\n'
                    'Final Answer: The expression x^2 - 9 factors as (x + 3)(x - 3).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '3. Factor the expression: x^2 + 10x + 25.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the perfect square trinomial pattern: a^2 + 2ab + b^2 = (a + b)^2.\n\n'
                    'We rewrite the expression using the perfect square trinomial pattern: x^2 + 10x + 25 = (x + 5)^2.\n\n'
                    'Verifying the factors, we have (x + 5)^2 = (x + 5)(x + 5) = x^2 + 5x + 5x + 25 = x^2 + 10x + 25.\n\n'
                    'Final Answer: The expression x^2 + 10x + 25 factors as (x + 5)^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '4. Factor the expression: x^2 - 6x + 9.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the perfect square trinomial pattern: a^2 - 2ab + b^2 = (a - b)^2.\n\n'
                    'We rewrite the expression using the perfect square trinomial pattern: x^2 - 6x + 9 = (x - 3)^2.\n\n'
                    'Verifying the factors, we have (x - 3)^2 = (x - 3)(x - 3) = x^2 - 3x - 3x + 9 = x^2 - 6x + 9.\n\n'
                    'Final Answer: The expression x^2 - 6x + 9 factors as (x - 3)^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '5. Factor the expression: x^2 - 25.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 25 = (x + 5)(x - 5).\n\n'
                    'Verifying the factors, we have (x + 5)(x - 5) = x^2 - 5x + 5x - 25 = x^2 - 25.\n\n'
                    'Final Answer: The expression x^2 - 25 factors as (x + 5)(x - 5).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '6. Factor the expression: x^2 - 81.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 81 = (x + 9)(x - 9).\n\n'
                    'Verifying the factors, we have (x + 9)(x - 9) = x^2 - 9x + 9x - 81 = x^2 - 81.\n\n'
                    'Final Answer: The expression x^2 - 81 factors as (x + 9)(x - 9).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '7. Factor the expression: x^2 - 100.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 100 = (x + 10)(x - 10).\n\n'
                    'Verifying the factors, we have (x + 10)(x - 10) = x^2 - 10x + 10x - 100 = x^2 - 100.\n\n'
                    'Final Answer: The expression x^2 - 100 factors as (x + 10)(x - 10).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '8. Factor the expression: x^2 - 121.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 121 = (x + 11)(x - 11).\n\n'
                    'Verifying the factors, we have (x + 11)(x - 11) = x^2 - 11x + 11x - 121 = x^2 - 121.\n\n'
                    'Final Answer: The expression x^2 - 121 factors as (x + 11)(x - 11).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '9. Factor the expression: x^2 - 144.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 144 = (x + 12)(x - 12).\n\n'
                    'Verifying the factors, we have (x + 12)(x - 12) = x^2 - 12x + 12x - 144 = x^2 - 144.\n\n'
                    'Final Answer: The expression x^2 - 144 factors as (x + 12)(x - 12).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '10. Factor the expression: x^2 - 169.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 169 = (x + 13)(x - 13).\n\n'
                    'Verifying the factors, we have (x + 13)(x - 13) = x^2 - 13x + 13x - 169 = x^2 - 169.\n\n'
                    'Final Answer: The expression x^2 - 169 factors as (x + 13)(x - 13).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '11. Factor the expression: x^2 - 196.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 196 = (x + 14)(x - 14).\n\n'
                    'Verifying the factors, we have (x + 14)(x - 14) = x^2 - 14x + 14x - 196 = x^2 - 196.\n\n'
                    'Final Answer: The expression x^2 - 196 factors as (x + 14)(x - 14).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '12. Factor the expression: x^2 - 225.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 225 = (x + 15)(x - 15).\n\n'
                    'Verifying the factors, we have (x + 15)(x - 15) = x^2 - 15x + 15x - 225 = x^2 - 225.\n\n'
                    'Final Answer: The expression x^2 - 225 factors as (x + 15)(x - 15).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '13. Factor the expression: x^2 - 256.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 256 = (x + 16)(x - 16).\n\n'
                    'Verifying the factors, we have (x + 16)(x - 16) = x^2 - 16x + 16x - 256 = x^2 - 256.\n\n'
                    'Final Answer: The expression x^2 - 256 factors as (x + 16)(x - 16).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '14. Factor the expression: x^2 - 289.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 289 = (x + 17)(x - 17).\n\n'
                    'Verifying the factors, we have (x + 17)(x - 17) = x^2 - 17x + 17x - 289 = x^2 - 289.\n\n'
                    'Final Answer: The expression x^2 - 289 factors as (x + 17)(x - 17).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '15. Factor the expression: x^2 - 324.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 324 = (x + 18)(x - 18).\n\n'
                    'Verifying the factors, we have (x + 18)(x - 18) = x^2 - 18x + 18x - 324 = x^2 - 324.\n\n'
                    'Final Answer: The expression x^2 - 324 factors as (x + 18)(x - 18).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '16. Factor the expression: x^2 - 361.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 361 = (x + 19)(x - 19).\n\n'
                    'Verifying the factors, we have (x + 19)(x - 19) = x^2 - 19x + 19x - 361 = x^2 - 361.\n\n'
                    'Final Answer: The expression x^2 - 361 factors as (x + 19)(x - 19).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '17. Factor the expression: x^2 - 400.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 400 = (x + 20)(x - 20).\n\n'
                    'Verifying the factors, we have (x + 20)(x - 20) = x^2 - 20x + 20x - 400 = x^2 - 400.\n\n'
                    'Final Answer: The expression x^2 - 400 factors as (x + 20)(x - 20).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '18. Factor the expression: x^2 - 441.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 441 = (x + 21)(x - 21).\n\n'
                    'Verifying the factors, we have (x + 21)(x - 21) = x^2 - 21x + 21x - 441 = x^2 - 441.\n\n'
                    'Final Answer: The expression x^2 - 441 factors as (x + 21)(x - 21).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '19. Factor the expression: x^2 - 484.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 484 = (x + 22)(x - 22).\n\n'
                    'Verifying the factors, we have (x + 22)(x - 22) = x^2 - 22x + 22x - 484 = x^2 - 484.\n\n'
                    'Final Answer: The expression x^2 - 484 factors as (x + 22)(x - 22).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '20. Factor the expression: x^2 - 529.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 529 = (x + 23)(x - 23).\n\n'
                    'Verifying the factors, we have (x + 23)(x - 23) = x^2 - 23x + 23x - 529 = x^2 - 529.\n\n'
                    'Final Answer: The expression x^2 - 529 factors as (x + 23)(x - 23).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '21. Factor the expression: x^2 - 576.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 576 = (x + 24)(x - 24).\n\n'
                    'Verifying the factors, we have (x + 24)(x - 24) = x^2 - 24x + 24x - 576 = x^2 - 576.\n\n'
                    'Final Answer: The expression x^2 - 576 factors as (x + 24)(x - 24).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '22. Factor the expression: x^2 - 625.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 625 = (x + 25)(x - 25).\n\n'
                    'Verifying the factors, we have (x + 25)(x - 25) = x^2 - 25x + 25x - 625 = x^2 - 625.\n\n'
                    'Final Answer: The expression x^2 - 625 factors as (x + 25)(x - 25).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '23. Factor the expression: x^2 - 676.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 676 = (x + 26)(x - 26).\n\n'
                    'Verifying the factors, we have (x + 26)(x - 26) = x^2 - 26x + 26x - 676 = x^2 - 676.\n\n'
                    'Final Answer: The expression x^2 - 676 factors as (x + 26)(x - 26).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '24. Factor the expression: x^2 - 729.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 729 = (x + 27)(x - 27).\n\n'
                    'Verifying the factors, we have (x + 27)(x - 27) = x^2 - 27x + 27x - 729 = x^2 - 729.\n\n'
                    'Final Answer: The expression x^2 - 729 factors as (x + 27)(x - 27).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '25. Factor the expression: x^2 - 784.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 784 = (x + 28)(x - 28).\n\n'
                    'Verifying the factors, we have (x + 28)(x - 28) = x^2 - 28x + 28x - 784 = x^2 - 784.\n\n'
                    'Final Answer: The expression x^2 - 784 factors as (x + 28)(x - 28).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '26. Factor the expression: x^2 - 841.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 841 = (x + 29)(x - 29).\n\n'
                    'Verifying the factors, we have (x + 29)(x - 29) = x^2 - 29x + 29x - 841 = x^2 - 841.\n\n'
                    'Final Answer: The expression x^2 - 841 factors as (x + 29)(x - 29).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '27. Factor the expression: x^2 - 900.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 900 = (x + 30)(x - 30).\n\n'
                    'Verifying the factors, we have (x + 30)(x - 30) = x^2 - 30x + 30x - 900 = x^2 - 900.\n\n'
                    'Final Answer: The expression x^2 - 900 factors as (x + 30)(x - 30).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '28. Factor the expression: x^2 - 961.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 961 = (x + 31)(x - 31).\n\n'
                    'Verifying the factors, we have (x + 31)(x - 31) = x^2 - 31x + 31x - 961 = x^2 - 961.\n\n'
                    'Final Answer: The expression x^2 - 961 factors as (x + 31)(x - 31).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '29. Factor the expression: x^2 - 1024.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1024 = (x + 32)(x - 32).\n\n'
                    'Verifying the factors, we have (x + 32)(x - 32) = x^2 - 32x + 32x - 1024 = x^2 - 1024.\n\n'
                    'Final Answer: The expression x^2 - 1024 factors as (x + 32)(x - 32).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '30. Factor the expression: x^2 - 1089.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1089 = (x + 33)(x - 33).\n\n'
                    'Verifying the factors, we have (x + 33)(x - 33) = x^2 - 33x + 33x - 1089 = x^2 - 1089.\n\n'
                    'Final Answer: The expression x^2 - 1089 factors as (x + 33)(x - 33).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '31. Factor the expression: x^2 - 1156.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1156 = (x + 34)(x - 34).\n\n'
                    'Verifying the factors, we have (x + 34)(x - 34) = x^2 - 34x + 34x - 1156 = x^2 - 1156.\n\n'
                    'Final Answer: The expression x^2 - 1156 factors as (x + 34)(x - 34).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '32. Factor the expression: x^2 - 1225.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1225 = (x + 35)(x - 35).\n\n'
                    'Verifying the factors, we have (x + 35)(x - 35) = x^2 - 35x + 35x - 1225 = x^2 - 1225.\n\n'
                    'Final Answer: The expression x^2 - 1225 factors as (x + 35)(x - 35).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '33. Factor the expression: x^2 - 1296.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1296 = (x + 36)(x - 36).\n\n'
                    'Verifying the factors, we have (x + 36)(x - 36) = x^2 - 36x + 36x - 1296 = x^2 - 1296.\n\n'
                    'Final Answer: The expression x^2 - 1296 factors as (x + 36)(x - 36).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '34. Factor the expression: x^2 - 1369.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1369 = (x + 37)(x - 37).\n\n'
                    'Verifying the factors, we have (x + 37)(x - 37) = x^2 - 37x + 37x - 1369 = x^2 - 1369.\n\n'
                    'Final Answer: The expression x^2 - 1369 factors as (x + 37)(x - 37).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '35. Factor the expression: x^2 - 1444.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1444 = (x + 38)(x - 38).\n\n'
                    'Verifying the factors, we have (x + 38)(x - 38) = x^2 - 38x + 38x - 1444 = x^2 - 1444.\n\n'
                    'Final Answer: The expression x^2 - 1444 factors as (x + 38)(x - 38).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '36. Factor the expression: x^2 - 1521.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1521 = (x + 39)(x - 39).\n\n'
                    'Verifying the factors, we have (x + 39)(x - 39) = x^2 - 39x + 39x - 1521 = x^2 - 1521.\n\n'
                    'Final Answer: The expression x^2 - 1521 factors as (x + 39)(x - 39).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '37. Factor the expression: x^2 - 1600.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1600 = (x + 40)(x - 40).\n\n'
                    'Verifying the factors, we have (x + 40)(x - 40) = x^2 - 40x + 40x - 1600 = x^2 - 1600.\n\n'
                    'Final Answer: The expression x^2 - 1600 factors as (x + 40)(x - 40).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '38. Factor the expression: x^2 - 1681.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1681 = (x + 41)(x - 41).\n\n'
                    'Verifying the factors, we have (x + 41)(x - 41) = x^2 - 41x + 41x - 1681 = x^2 - 1681.\n\n'
                    'Final Answer: The expression x^2 - 1681 factors as (x + 41)(x - 41).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '39. Factor the expression: x^2 - 1764.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1764 = (x + 42)(x - 42).\n\n'
                    'Verifying the factors, we have (x + 42)(x - 42) = x^2 - 42x + 42x - 1764 = x^2 - 1764.\n\n'
                    'Final Answer: The expression x^2 - 1764 factors as (x + 42)(x - 42).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '40. Factor the expression: x^2 - 1849.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1849 = (x + 43)(x - 43).\n\n'
                    'Verifying the factors, we have (x + 43)(x - 43) = x^2 - 43x + 43x - 1849 = x^2 - 1849.\n\n'
                    'Final Answer: The expression x^2 - 1849 factors as (x + 43)(x - 43).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '41. Factor the expression: x^2 - 1936.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 1936 = (x + 44)(x - 44).\n\n'
                    'Verifying the factors, we have (x + 44)(x - 44) = x^2 - 44x + 44x - 1936 = x^2 - 1936.\n\n'
                    'Final Answer: The expression x^2 - 1936 factors as (x + 44)(x - 44).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '42. Factor the expression: x^2 - 2025.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2025 = (x + 45)(x - 45).\n\n'
                    'Verifying the factors, we have (x + 45)(x - 45) = x^2 - 45x + 45x - 2025 = x^2 - 2025.\n\n'
                    'Final Answer: The expression x^2 - 2025 factors as (x + 45)(x - 45).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '43. Factor the expression: x^2 - 2116.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2116 = (x + 46)(x - 46).\n\n'
                    'Verifying the factors, we have (x + 46)(x - 46) = x^2 - 46x + 46x - 2116 = x^2 - 2116.\n\n'
                    'Final Answer: The expression x^2 - 2116 factors as (x + 46)(x - 46).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '44. Factor the expression: x^2 - 2209.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2209 = (x + 47)(x - 47).\n\n'
                    'Verifying the factors, we have (x + 47)(x - 47) = x^2 - 47x + 47x - 2209 = x^2 - 2209.\n\n'
                    'Final Answer: The expression x^2 - 2209 factors as (x + 47)(x - 47).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '45. Factor the expression: x^2 - 2304.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2304 = (x + 48)(x - 48).\n\n'
                    'Verifying the factors, we have (x + 48)(x - 48) = x^2 - 48x + 48x - 2304 = x^2 - 2304.\n\n'
                    'Final Answer: The expression x^2 - 2304 factors as (x + 48)(x - 48).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '46. Factor the expression: x^2 - 2401.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2401 = (x + 49)(x - 49).\n\n'
                    'Verifying the factors, we have (x + 49)(x - 49) = x^2 - 49x + 49x - 2401 = x^2 - 2401.\n\n'
                    'Final Answer: The expression x^2 - 2401 factors as (x + 49)(x - 49).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '47. Factor the expression: x^2 - 2500.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2500 = (x + 50)(x - 50).\n\n'
                    'Verifying the factors, we have (x + 50)(x - 50) = x^2 - 50x + 50x - 2500 = x^2 - 2500.\n\n'
                    'Final Answer: The expression x^2 - 2500 factors as (x + 50)(x - 50).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '48. Factor the expression: x^2 - 2601.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2601 = (x + 51)(x - 51).\n\n'
                    'Verifying the factors, we have (x + 51)(x - 51) = x^2 - 51x + 51x - 2601 = x^2 - 2601.\n\n'
                    'Final Answer: The expression x^2 - 2601 factors as (x + 51)(x - 51).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '49. Factor the expression: x^2 - 2704.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2704 = (x + 52)(x - 52).\n\n'
                    'Verifying the factors, we have (x + 52)(x - 52) = x^2 - 52x + 52x - 2704 = x^2 - 2704.\n\n'
                    'Final Answer: The expression x^2 - 2704 factors as (x + 52)(x - 52).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '50. Factor the expression: x^2 - 2809.',
                solution: 'Solution:\n\n'
                    'Recognize that the expression fits the difference of squares pattern: a^2 - b^2 = (a + b)(a - b).\n\n'
                    'We rewrite the expression using the difference of squares pattern: x^2 - 2809 = (x + 53)(x - 53).\n\n'
                    'Verifying the factors, we have (x + 53)(x - 53) = x^2 - 53x + 53x - 2809 = x^2 - 2809.\n\n'
                    'Final Answer: The expression x^2 - 2809 factors as (x + 53)(x - 53).',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
