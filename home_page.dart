import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:MathForm/differential_calculus.dart';
import 'color_picker_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'menupage/backgroundcolorpage.dart';
import 'menupage/historypage.dart';
import 'menupage/favoritespage.dart';
import 'menupage/aboutpage.dart';
import 'menupage/helppage.dart';
import 'menupage/exitpage.dart';
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  String _searchText = '';
  Color _chosenColor = Colors.black;
  Set<String> _favorites = Set<String>();
  List<String> _history = [];


  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _chosenColor = Color(prefs.getInt('chosenColor') ?? Colors.black.value);
      _favorites = (prefs.getStringList('favorites') ?? []).toSet();
      _history = prefs.getStringList('history') ?? [];
    });
  }

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('chosenColor', _chosenColor.value);
    await prefs.setStringList('favorites', _favorites.toList());
    await prefs.setStringList('history', _history);
  }

  @override
  void dispose() {
    _saveData();
    super.dispose();
  }

  void _updateHistory(String topic) {
    setState(() {
      if (!_history.contains(topic)) {
        _history.add(topic);
      }
    });
    _saveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Bar'),
        backgroundColor: _chosenColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: _chosenColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text('History', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(
                      chosenColor: _chosenColor,
                      historyTopics: _history,
                      onTapTopic: (topic) {
                        _navigateToPage(topic);
                      },
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.color_lens, color: Colors.white),
              title: Text('Background Color', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BackgroundColorPage(
                      chosenColor: _chosenColor,
                      onColorSelected: (color) {
                        setState(() {
                          _chosenColor = color;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined, color: Colors.white),
              title: Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(
                      favoriteTopics: _favorites,
                      onTapTopic: (topic) {
                        _navigateToPage(topic);
                      },
                      chosenColor: _chosenColor,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined, color: Colors.white),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage(chosenColor: _chosenColor,)),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded, color: Colors.white),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage(chosenColor: _chosenColor)),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text('Exit'),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: _chosenColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) {
                        setState(() {
                          _searchText = value;
                        });
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildList(),
            SizedBox(height: 20),
            ColorPickerButton(
              onColorSelected: (color) {
                setState(() {
                  _chosenColor = color;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    final List<String> topics = [
      'Geometry',
      'Basic Geometry Shapes ',
      'Perimeter & Area',
      'Volume & Surface Area',
      'Similarity & Congruence',
      'Pythagorean Theorem',
      'Trigonometry',
      'Trigonometric Function ',
      'Trigonometric Identities',
      'Trigonometric Equations',
      'Law of Sines',
      'Law of Cosines',
      'Algebra',
      'Basic Operation ',
      'Exponent & Radicals',
      'Factoring',
      'Equation & Inequalities',
      'Systems of Equations',
      'Polynomials',
      'Rational Expressions',
      'Functions & Relations',
      'Logarithms & Exponential Function',
      'Linear Algebra',
      'Vectors',
      'Matrices',
      'Systems of Linear Equations',
      'Eigenvalues & Eigenvectors',
      'Probability & Statistics',
      'Probability Rules & Distributions',
      'Measures of Central Tendency',
      'Measures of Dispersion ',
      'Probability Distributions ',
      'Statistical & Hypothesis Tests',
      'Differential Equation',
      'Ordinary Differential Equations',
      'Partial Differential Equations',
      'First-Order Differential Equations',
      'Second-Order Differential Equations',
      'Linear & Nonlinear DE',
      'Boundary Value Problems',
      'Initial Value Problems',
      'Calculus',
      'Limits',
      'Differentiation (Derivatives)',
      'Integration',
      'Application of Derivatives',
      'Application of Integration',
    ];

    final filteredTopics = topics
        .where((topic) => topic.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Expanded(
      child: ListView.builder(
        itemCount: filteredTopics.length,
        itemBuilder: (context, index) {
          final topic = filteredTopics[index];
          final isFavorite = _favorites.contains(topic);

          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(topic),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        if (isFavorite) {
                          _favorites.remove(topic);
                        } else {
                          _favorites.add(topic);
                        }
                      });
                    },
                  ),
                ],
              ),
              onTap: () {
                _navigateToPage(topic);
                _updateHistory(topic);
              },
            ),
          );
        },
      ),
    );
  }

  void _navigateToPage(String topic) {
    setState(() {
      _history.add(topic);
    });
    switch (topic) {
      case 'Geometry':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GeometryPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Basic Geometry Shapes ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasicGeometry(chosenColor: _chosenColor,)),
        );
        break;
      case 'Perimeter & Area':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Perimeter(chosenColor: _chosenColor,)),
        );
        break;
      case 'Volume & Surface Area':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Volume(chosenColor: _chosenColor,)),
        );
        break;
      case 'Similarity & Congruence':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Similarity(chosenColor: _chosenColor,)),
        );
        break;
      case 'Pythagorean Theorem':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pythagorean(chosenColor: _chosenColor,)),
        );
        break;
      case 'Trigonometry':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrigonometryPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Trigonometric Function ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrigoFunction(chosenColor: _chosenColor,)),
        );
        break;
      case 'Trigonometric Identities':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrigoIdentities(chosenColor: _chosenColor,)),
        );
        break;
      case 'Trigonometric Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrigoEquations(chosenColor: _chosenColor,)),
        );
        break;
      case 'Law of Sines':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LawofSines(chosenColor: _chosenColor,)),
        );
        break;
      case 'Law of Cosines':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LawofCosines(chosenColor: _chosenColor,)),
        );
        break;
      case 'Algebra':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AlgebraPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Basic Operation ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasicPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Exponent & Radicals':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExponentPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Factoring':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FactoringPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Equation & Inequalities':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EquationPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Systems of Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SystemsPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Polynomials':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PolynomialsPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Rational Expressions':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RationalPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Functions & Relations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FunctionsPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Logarithms & Exponential Function':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Probability & Statistics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProbabilityandStatisticsPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Probability Rules & Distributions':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProbabilityRules(chosenColor: _chosenColor,)),
        );
        break;
      case 'Measures of Central Tendency':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MeanMedianMode(chosenColor: _chosenColor,)),
        );
        break;
      case 'Measures of Dispersion ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RangeVariance(chosenColor: _chosenColor,)),
        );
        break;
      case 'Probability Distributions ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BinomialNormal(chosenColor: _chosenColor,)),
        );
        break;
      case 'Statistical & Hypothesis Tests':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StatisticalTest(chosenColor: _chosenColor,)),
        );
        break;
      case 'Differential Equation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DifferentialEquationPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Ordinary Differential Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ODEs(chosenColor: _chosenColor,)),
        );
        break;
      case 'Partial Differential Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PDEs(chosenColor: _chosenColor,)),
        );
        break;
      case 'First-Order Differential Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstOrder(chosenColor: _chosenColor,)),
        );
        break;
      case 'Second-Order Differential Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondOrder(chosenColor: _chosenColor,)),
        );
        break;
      case 'Linear & Nonlinear DE':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LinearNonlinear(chosenColor: _chosenColor,)),
        );
        break;
      case 'Boundary Value Problems':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Boundary(chosenColor: _chosenColor,)),
        );
        break;
      case 'Initial Value Problems':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InitialValue(chosenColor: _chosenColor,)),
        );
        break;
      case 'Calculus':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalculusPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Limits':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LimitsPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Differentiation (Derivatives)':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DifferentiationPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Integration':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IntegrationPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Application of Derivatives':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ApplicationOfDerivativesPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Application of Integration':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ApplicationOfIntegrationPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Vectors':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Vectors(chosenColor: _chosenColor,)),
        );
        break;
      case 'Matrices':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Matrices(chosenColor: _chosenColor,)),
        );
        break;
      case 'Systems of Linear Equations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LinearEquations(chosenColor: _chosenColor,)),
        );
        break;
      case 'Eigenvalues & Eigenvectors':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Eigenvalues(chosenColor: _chosenColor,)),
        );
        break;
      case 'Linear Algebra':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LinearAlgebraPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'History':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HistoryPage(chosenColor: _chosenColor, historyTopics: [], onTapTopic: (String ) {  },)),
        );
        break;
      case 'Help & Support':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelpPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'About':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutPage(chosenColor: _chosenColor,)),
        );
        break;
      case 'Exit':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExitPage(chosenColor: _chosenColor,)),
        );
        break;
    }
  }
}