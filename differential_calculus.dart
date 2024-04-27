import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'geometrypage/basicgeometrypage.dart';
import 'geometrypage/perimeterpage.dart';
import 'geometrypage/pythagoreanpage.dart';
import 'geometrypage/similaritypage.dart';
import 'geometrypage/volumepage.dart';
import 'differentialequationpage/odes.dart';
import 'differentialequationpage/pdes.dart';
import 'differentialequationpage/firstorder.dart';
import 'differentialequationpage/secondorder.dart';
import 'differentialequationpage/linearnonlinear.dart';
import 'differentialequationpage/boundary.dart';
import 'differentialequationpage/initialvalue.dart';
import 'probabilityandstatisticspage/probabilityrules.dart';
import 'probabilityandstatisticspage/meanmedianmode.dart';
import 'probabilityandstatisticspage/rangevariance.dart';
import 'probabilityandstatisticspage/binomialnormal.dart';
import 'probabilityandstatisticspage/statisticaltest.dart';
import 'calculuspage/limit.dart';
import 'calculuspage/differentiation.dart';
import 'calculuspage/integration.dart';
import 'calculuspage/applicationofderivatives.dart';
import 'calculuspage/applicationofintegration.dart';
import 'algebrapage/basic.dart';
import 'algebrapage/exponent.dart';
import 'algebrapage/factoring.dart';
import 'algebrapage/equation.dart';
import 'algebrapage/system.dart';
import 'algebrapage/polynomial.dart';
import 'algebrapage/rational.dart';
import 'algebrapage/functions.dart';
import 'algebrapage/log.dart';
import 'trigonometrypage/trigofunction.dart';
import 'trigonometrypage/trigoidentities.dart';
import 'trigonometrypage/trigoequations.dart';
import 'trigonometrypage/lawofsines.dart';
import 'trigonometrypage/lawofcosines.dart';
import 'linearalgebrapage/vectors.dart';
import 'linearalgebrapage/matrices.dart';
import 'linearalgebrapage/linearequations.dart';
import 'linearalgebrapage/eigenvalues.dart';

// Calculus Page
class CalculusPage extends StatelessWidget {
  final Color chosenColor;
  CalculusPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Limits'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LimitsPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Differentiation (Derivatives)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DifferentiationPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Integration'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntegrationPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Application of Derivatives (Optimization, Related Rates)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApplicationOfDerivativesPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Application of Integration (Area under curves, Volume of Solids)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApplicationOfIntegrationPage(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

class ProblemSolvingWidget extends StatefulWidget {
  final String problem;
  final String solution;

  const ProblemSolvingWidget({
    Key? key,
    required this.problem,
    required this.solution,
  }) : super(key: key);

  @override
  _ProblemSolvingWidgetState createState() => _ProblemSolvingWidgetState();
}

class _ProblemSolvingWidgetState extends State<ProblemSolvingWidget> {
  bool showSolution = false;

  void toggleSolutionVisibility() {
    setState(() {
      showSolution = !showSolution;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\n\nProblem: ${widget.problem}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: toggleSolutionVisibility,
          child: Text('Solution'),
        ),
        SizedBox(height: 10),
        if (showSolution)
          Text(
            'Solution: ${widget.solution}',
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
          ),
        SizedBox(height: 20),
      ],
    );
  }
}

// Algebra Page

class AlgebraPage extends StatelessWidget {
  final Color chosenColor;
  AlgebraPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algebra'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Basic Operation (Addition, Subtraction, Multiplication, Division)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Exponent And Radicals'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExponentPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Factoring'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FactoringPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Equation and Inequalities'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EquationPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Systems of Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SystemsPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('6. Polynomials'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PolynomialsPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('7. Rational Expressions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RationalPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('8. Functions and Relations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FunctionsPage(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('9. Logarithms and Exponential Function'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogPage(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

// Trigo Page
class TrigonometryPage extends StatelessWidget {
  final Color chosenColor;
  TrigonometryPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trigometry'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Trigonometric Function (Sine, Cosine, Tangent, Cosecant, Secant, Cotangent)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrigoFunction(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Trigonometric Identities'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrigoIdentities(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Trigonometric Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrigoEquations(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Law of Sines'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LawofSines(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Law of Cosines'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LawofCosines(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

// Linear Algebra Page
class LinearAlgebraPage extends StatelessWidget {
  final Color chosenColor;
  LinearAlgebraPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linear Algebra'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Vectors'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Vectors(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Matrices'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Matrices(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Systems of Linear Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LinearEquations(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Eigenvalues and Eigenvectors'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Eigenvalues(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

// Probability And Statistics Page
class ProbabilityandStatisticsPage extends StatelessWidget {
  final Color chosenColor;
  ProbabilityandStatisticsPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Probability and Statistics'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Probability Rules and Distributions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProbabilityRules(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Measures of Central Tendency(Mean, Median, Mode)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MeanMedianMode(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Measures of Dispersion (Range, Variance, Standard Deviation)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RangeVariance(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Probability Distributions (Binomial, Normal, Poisson)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BinomialNormal(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Statistical Tests and Hypothesis Testing'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StatisticalTest(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

// Differential Equation Page
class DifferentialEquationPage extends StatelessWidget {
  final Color chosenColor;
  DifferentialEquationPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Differential Equations'),
        backgroundColor: chosenColor,
      ),
    body: Container(
    color: chosenColor,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Ordinary Differential Equations (ODEs)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ODEs(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Partial Differential Equations (PDEs)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PDEs(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. First-Order Differential Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstOrder(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Second-Order Differential Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondOrder(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Linear and Nonlinear Differential Equations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LinearNonlinear(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('6. Boundary Value Problems'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Boundary(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('7.  Initial Value Problems'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InitialValue(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
    ),
    );
  }
}

// Geometry Page
class GeometryPage extends StatelessWidget {
  final Color chosenColor;
  GeometryPage ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geometry'),
        backgroundColor: chosenColor,
      ),
      body: Container(
        color: chosenColor,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('1. Basic Geometry Shapes (Points, Lines, Angles, Triangles, Quadrilaterals, Circles)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicGeometry(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('2. Perimeter and Area'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perimeter(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('3. Volume and Surface Area'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Volume(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('4. Similarity and Congruence'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Similarity(chosenColor: chosenColor,)),
              );
            },
          ),
          ListTile(
            title: Text('5. Pythagorean Theorem'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pythagorean(chosenColor: chosenColor,)),
              );
            },
          ),
        ],
      ),
      ),
    );
  }
}


