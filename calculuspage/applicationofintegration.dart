import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class ApplicationOfIntegrationPage extends StatelessWidget {
  final Color chosenColor;
  ApplicationOfIntegrationPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Application Of Integration'),
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
                'Calculus Application Of Integration',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Calculus Application of Integration is the process of finding the integral of a function. The integral represents the area under the curve of the function within a given interval. The application of integration encompasses various real-world scenarios where the accumulated effect of a continuous process needs to be determined. Here are some common applications of integration:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Area Under a Curve: One of the fundamental applications of integration is finding the area under a curve. By integrating a function over a given interval, you can determine the area enclosed by the curve and the x-axis. This is often used in geometry, physics, engineering, and economics to calculate areas of irregular shapes or to determine accumulated quantities.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Volumes of Solids: Integration is used to find the volumes of various three-dimensional solids, such as cylinders, cones, spheres, and more complex shapes. Methods like the disk method, shell method, and slicing method are employed to calculate volumes by integrating cross-sectional areas along a given axis.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Length of Curves: Integration can be used to find the length of a curve in two or three dimensions. This is achieved by integrating the arc length formula over a given interval. Applications include finding the length of curves in physics, engineering, and computer graphics.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Center of Mass and Moments of Inertia:Integration is utilized to determine the center of mass of an object or system, as well as its moments of inertia. These calculations are essential in physics and engineering for analyzing the balance and stability of structures, vehicles, and other physical systems.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '5. Probability and Statistics: Integration plays a crucial role in probability theory and statistics, particularly in determining probabilities of continuous random variables and calculating expected values. Probability density functions and cumulative distribution functions are often defined as integrals of certain functions.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '6. Work and Energy: Integration is employed in physics to calculate work done by a force over a given distance and to determine the potential energy stored in a system. These concepts are fundamental in mechanics and are used to analyze various physical phenomena, such as motion, collisions, and gravitational interactions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '7. Electromagnetism: Integration is extensively used in electromagnetism to calculate electric flux, magnetic flux, and electromagnetic induction. These calculations are crucial in understanding the behavior of electric and magnetic fields and their interactions with conductors and circuits.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '8. Fluid Mechanics: Integration is used to solve problems related to fluid flow, such as determining the flow rate, pressure distribution, and forces exerted by fluids on surfaces. Applications include designing pipelines, hydraulic systems, and aerodynamics.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nExample: Find the area enclosed by the curve y= x^2 and the x-axis over the interval [0,2].',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1: First, we need to define the function representing the curve and the limits of integration. Inthis case, the fucntion is y=x^2 and the interval is [0,2]',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: To find the area under the curve, we integrate the function y= x^2 with respect to x over the interval [0,2]',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: We integrate x^2 with respect to x:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n∫x^2dx=x^3/3+C',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nThen, we evalute the integratl from 0 to 2',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n[x^3/3]^2v0 = 2^3/3-0^3/3 = 8/3',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nAnswer: The area enclosed by the curve y=x^2 and the x-axis over the interval [0,2] is 8/3',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Calculate the volume of the solid obtained by revolving the region bounded by the curve y = x^2 and the lines y = 0 and x = 2 about the x-axis.',
                solution: 'Integration: π∫(x^4) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (π∫x^4 dx) from 0 to 2 = (π[1/5*x^5]) from 0 to 2 = (π*(2^5/5) - π*(0^5/5)) = (32π/5).\n\n'
                    'Final Answer: The volume of the solid obtained is (32π/5) cubic units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Determine the length of the curve y = √(1 + x^2) over the interval [0, 1].',
                solution: 'Integration: ∫(√(1 + x^2)) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫√(1 + x^2) dx) from 0 to 1 = [1/2*(x*√(1 + x^2) + ln(x + √(1 + x^2)))] from 0 to 1.\n\n'
                    'Final Answer: The length of the curve is approximately 1.298 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the centroid of the region bounded by the curve y = x^3 and the lines y = 0 and x = 2.',
                solution: 'Integration: x̄ = ∫(x * f(x)) dx / A, where A = ∫f(x) dx.\n\n'
                    'Evaluate the integrals: A = ∫(x^3) dx from 0 to 2 = [1/4*x^4] from 0 to 2 = (2^4/4) = 4.\n'
                    'x̄ = ∫(x * x^3) dx / 4 = ∫(x^4) dx / 4 from 0 to 2 = [1/5*x^5] from 0 to 2 = (2^5/5) = 32/5.\n\n'
                    'Final Answer: The centroid of the region is (32/5, 0).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Calculate the work done by a force F(x) = 2x + 3 (in Newtons) to move an object along the x-axis from x = 0 to x = 5 meters.',
                solution: 'Integration: W = ∫(F(x)) dx from 0 to 5.\n\n'
                    'Evaluate the integral: W = ∫(2x + 3) dx from 0 to 5 = [(x^2 + 3x)] from 0 to 5.\n'
                    'W = (5^2 + 3*5) - (0^2 + 3*0) = (25 + 15) - 0 = 40 J.\n\n'
                    'Final Answer: The work done is 40 Joules.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = 2x over the interval [0, 2].',
                solution: 'Integration: ∫(2x - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(2x - x^2) dx) from 0 to 2 = [(x^2 - x^3/3)] from 0 to 2.\n'
                    ' = [(2^2 - 2^3/3)] - [(0^2 - 0^3/3)].\n'
                    ' = [(4 - 8/3)] - 0.\n'
                    ' = [12/3 - 8/3].\n'
                    ' = 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = 2x over the interval [0, 2] is 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = x over the interval [0, 1].',
                solution: 'Integration: ∫(x - x^3) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x - x^3) dx) from 0 to 1 = [(x^2/2 - x^4/4)] from 0 to 1.\n'
                    ' = [(1/2 - 1/4)] - [(0 - 0)].\n'
                    ' = [1/2 - 1/4].\n'
                    ' = 1/4.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = x over the interval [0, 1] is 1/4 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/2].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from 0 to π/2.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from 0 to π/2 = [(sin(x) + cos(x))] from 0 to π/2.\n'
                    ' = [(1 + 0) - (0 + 1)].\n'
                    ' = 1 - 1.\n'
                    ' = 0.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/2] is 0 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e = [(e^x - xln(x) - x)] from 1 to e.\n'
                    ' = [(e^e - e^2 - e) - (e - 0 - 1)].\n'
                    ' = [e^e - e^2 - e - e + 1].\n'
                    ' = e^e - e^2 - 2e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e] is e^e - e^2 - 2e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = √x and y = x over the interval [0, 1].',
                solution: 'Integration: ∫(x - √x) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x - √x) dx) from 0 to 1 = [(x^2/2 - (2x^(3/2))/3)] from 0 to 1.\n'
                    ' = [(1/2 - 2/3) - (0 - 0)].\n'
                    ' = [1/2 - 2/3].\n'
                    ' = 1/6.\n\n'
                    'Final Answer: The area enclosed between the curves y = √x and y = x over the interval [0, 1] is 1/6 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = 1/x and y = x^2 over the interval [1, 2].',
                solution: 'Integration: ∫(x^2 - 1/x) dx from 1 to 2.\n\n'
                    'Evaluate the integral: (∫(x^2 - 1/x) dx) from 1 to 2 = [(x^3/3 - ln|x|)] from 1 to 2.\n'
                    ' = [(8/3 - ln(2)) - (1/3 - ln(1))].\n'
                    ' = [(8/3 - ln(2)) - 1/3].\n'
                    ' = (7 - 3ln(2))/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = 1/x and y = x^2 over the interval [1, 2] is (7 - 3ln(2))/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = x^2 over the interval [0, 1].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 1 = [(x^4/4 - x^3/3)] from 0 to 1.\n'
                    ' = [(1/4 - 1/3) - (0 - 0)].\n'
                    ' = [1/4 - 1/3].\n'
                    ' = 1/12.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = x^2 over the interval [0, 1] is 1/12 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = √x over the interval [0, 1].',
                solution: 'Integration: ∫(√x - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(√x - x^2) dx) from 0 to 1 = [(2x^(3/2)/3 - x^3/3)] from 0 to 1.\n'
                    ' = [(2/3 - 1/3) - (0 - 0)].\n'
                    ' = [2/3 - 1/3].\n'
                    ' = 1/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = √x over the interval [0, 1] is 1/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = e^(2x) over the interval [0, 1].',
                solution: 'Integration: ∫(e^(2x) - e^x) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(e^(2x) - e^x) dx) from 0 to 1 = [(e^(2x)/2 - e^x)] from 0 to 1.\n'
                    ' = [(e^2/2 - e) - (1/2 - 1)].\n'
                    ' = [e^2/2 - e - 1/2 + 1].\n'
                    ' = e^2/2 - e + 1/2.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = e^(2x) over the interval [0, 1] is e^2/2 - e + 1/2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = 1/x and y = ln(x) over the interval [1, e].',
                solution: 'Integration: ∫(ln(x) - 1/x) dx from 1 to e.\n\n'
                    'Evaluate the integral: (∫(ln(x) - 1/x) dx) from 1 to e = [(xln(x) - x)] from 1 to e.\n'
                    ' = [(e - e) - (0 - 1)].\n'
                    ' = 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = 1/x and y = ln(x) over the interval [1, e] is 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = cos(x) and y = 2sin(x) over the interval [0, π/2].',
                solution: 'Integration: ∫(2sin(x) - cos(x)) dx from 0 to π/2.\n\n'
                    'Evaluate the integral: (∫(2sin(x) - cos(x)) dx) from 0 to π/2 = [(-2cos(x) - sin(x))] from 0 to π/2.\n'
                    ' = [(-2(0) - 1) - (-2(1) - 0)].\n'
                    ' = [-1 - (-2)].\n'
                    ' = 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = cos(x) and y = 2sin(x) over the interval [0, π/2] is 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = x^4 over the interval [0, 1].',
                solution: 'Integration: ∫(x^4 - x^3) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x^4 - x^3) dx) from 0 to 1 = [(x^5/5 - x^4/4)] from 0 to 1.\n'
                    ' = [(1/5 - 1/4) - (0 - 0)].\n'
                    ' = [1/5 - 1/4].\n'
                    ' = 1/20.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = x^4 over the interval [0, 1] is 1/20 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = e^(2x) over the interval [0, 2].',
                solution: 'Integration: ∫(e^(2x) - e^x) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(e^(2x) - e^x) dx) from 0 to 2 = [(e^(2x)/2 - e^x)] from 0 to 2.\n'
                    ' = [(e^4/2 - e^2) - (1/2 - 1)].\n'
                    ' = [e^4/2 - e^2 - 1/2 + 1].\n'
                    ' = e^4/2 - e^2 + 1/2.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = e^(2x) over the interval [0, 2] is e^4/2 - e^2 + 1/2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 1].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 1 = [(x^4/4 - x^3/3)] from 0 to 1.\n'
                    ' = [(1/4 - 1/3) - (0 - 0)].\n'
                    ' = [1/4 - 1/3].\n'
                    ' = 1/12.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 1] is 1/12 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = √x and y = x^2 over the interval [0, 1].',
                solution: 'Integration: ∫(x^2 - √x) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x^2 - √x) dx) from 0 to 1 = [(x^3/3 - 2x^(3/2)/3)] from 0 to 1.\n'
                    ' = [(1/3 - 2/3) - (0 - 0)].\n'
                    ' = [1/3 - 2/3].\n'
                    ' = -1/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = √x and y = x^2 over the interval [0, 1] is -1/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e = [(e^x - xln(x) - x)] from 1 to e.\n'
                    ' = [(e^e - e^2 - e) - (e - 0 - 1)].\n'
                    ' = [e^e - e^2 - e - e + 1].\n'
                    ' = e^e - e^2 - 2e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e] is e^e - e^2 - 2e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from 0 to π.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from 0 to π = [(sin(x) + cos(x))] from 0 to π.\n'
                    ' = [(0 + (-1)) - (0 + 1)].\n'
                    ' = -2.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π] is -2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = √x over the interval [0, 1].',
                solution: 'Integration: ∫(√x - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(√x - x^2) dx) from 0 to 1 = [(2x^(3/2)/3 - x^3/3)] from 0 to 1.\n'
                    ' = [(2/3 - 1/3) - (0 - 0)].\n'
                    ' = [2/3 - 1/3].\n'
                    ' = 1/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = √x over the interval [0, 1] is 1/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e].',
                solution: 'Integration: ∫(ln(x) - e^x) dx from 1 to e.\n\n'
                    'Evaluate the integral: (∫(ln(x) - e^x) dx) from 1 to e = [(xln(x) - e^x)] from 1 to e.\n'
                    ' = [(e - e^e) - (1 - e)].\n'
                    ' = [e - e^e - 1 + e].\n'
                    ' = 2e - e^e - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e] is 2e - e^e - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/4].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from 0 to π/4.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from 0 to π/4 = [(sin(x) + cos(x))] from 0 to π/4.\n'
                    ' = [(√2/2 + √2/2) - (0 + 1)].\n'
                    ' = √2 - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/4] is √2 - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = x^4 over the interval [0, 1].',
                solution: 'Integration: ∫(x^4 - x^3) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(x^4 - x^3) dx) from 0 to 1 = [(x^5/5 - x^4/4)] from 0 to 1.\n'
                    ' = [(1/5 - 1/4) - (0 - 0)].\n'
                    ' = [1/5 - 1/4].\n'
                    ' = 1/20.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = x^4 over the interval [0, 1] is 1/20 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/4, π/2].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/4 to π/2.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/4 to π/2 = [(sin(x) + cos(x))] from π/4 to π/2.\n'
                    ' = [(√2/2 - √2/2) - (√2/2 + √2/2)].\n'
                    ' = 0.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/4, π/2] is 0 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 1].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 1 = [(e^x - x^3/3)] from 0 to 1.\n'
                    ' = [(e - 1/3) - (1 - 0)].\n'
                    ' = [e - 1/3 - 1].\n'
                    ' = e - 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 1] is e - 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 2 = [(x^4/4 - x^3/3)] from 0 to 2.\n'
                    ' = [(16/4 - 8/3) - (0 - 0)].\n'
                    ' = [4 - 8/3].\n'
                    ' = 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2] is 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, 2].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to 2.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to 2 = [(e^x - xln(x) - x)] from 1 to 2.\n'
                    ' = [(e^2 - 2ln(2) - 2) - (e - ln(1) - 1)].\n'
                    ' = [e^2 - 2ln(2) - 2 - e + 1].\n'
                    ' = e^2 - e - 2ln(2) - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, 2] is e^2 - e - 2ln(2) - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 1].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 1 = [(2x^(3/2)/3 - x^4/4)] from 0 to 1.\n'
                    ' = [(2/3 - 1/4) - (0 - 0)].\n'
                    ' = [2/3 - 1/4].\n'
                    ' = 5/12.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 1] is 5/12 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/6, π/3].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/6 to π/3.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/6 to π/3 = [(sin(x) + cos(x))] from π/6 to π/3.\n'
                    ' = [(√3/2 + 1/2) - (1/2 + √3/2)].\n'
                    ' = √3 - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/6, π/3] is √3 - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 2].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 2 = [(e^x - x^3/3)] from 0 to 2.\n'
                    ' = [(e^2 - 8/3) - (1 - 0)].\n'
                    ' = [e^2 - 8/3 - 1].\n'
                    ' = e^2 - 11/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 2] is e^2 - 11/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 2 = [(x^4/4 - x^3/3)] from 0 to 2.\n'
                    ' = [(16/4 - 8/3) - (0 - 0)].\n'
                    ' = [4 - 8/3].\n'
                    ' = 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2] is 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^2].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^2.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^2 = [(e^x - xln(x) - x)] from 1 to e^2.\n'
                    ' = [(e^(e^2) - 2ln(e^2) - e^2) - (e - ln(1) - 1)].\n'
                    ' = [e^(e^2) - 2 - e^2 - e + 1].\n'
                    ' = e^(e^2) - e^2 - e + 1 - 2.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^2] is e^(e^2) - e^2 - e - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 2].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 2 = [(2x^(3/2)/3 - x^4/4)] from 0 to 2.\n'
                    ' = [(2/3 - 16/3) - (0 - 0)].\n'
                    ' = [-14/3].\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 2] is -14/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/3, π/2].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/3 to π/2.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/3 to π/2 = [(sin(x) + cos(x))] from π/3 to π/2.\n'
                    ' = [(1/2 + 0) - (√3/2 - 1/2)].\n'
                    ' = (1/2 - √3/2 + 1/2).\n'
                    ' = -√3/2.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/3, π/2] is -√3/2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 1].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 1.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 1 = [(e^x - x^3/3)] from 0 to 1.\n'
                    ' = [(e - 1/3) - (1 - 0)].\n'
                    ' = [e - 1/3 - 1].\n'
                    ' = e - 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 1] is e - 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 2 = [(x^4/4 - x^3/3)] from 0 to 2.\n'
                    ' = [(16/4 - 8/3) - (0 - 0)].\n'
                    ' = [4 - 8/3].\n'
                    ' = 4/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 2] is 4/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^2].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^2.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^2 = [(e^x - xln(x) - x)] from 1 to e^2.\n'
                    ' = [(e^(e^2) - 2ln(e^2) - e^2) - (e - ln(1) - 1)].\n'
                    ' = [e^(e^2) - 2 - e^2 - e + 1].\n'
                    ' = e^(e^2) - e^2 - e - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^2] is e^(e^2) - e^2 - e - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 2].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 2 = [(2x^(3/2)/3 - x^4/4)] from 0 to 2.\n'
                    ' = [(2/3 - 16/3) - (0 - 0)].\n'
                    ' = [-14/3].\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 2] is -14/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/4, 3π/4].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/4 to 3π/4.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/4 to 3π/4 = [(sin(x) + cos(x))] from π/4 to 3π/4.\n'
                    ' = [((√2/2) - (-√2/2)) - ((√2/2) + (√2/2))].\n'
                    ' = √2 - 2√2.\n'
                    ' = -√2.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/4, 3π/4] is -√2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 2].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 2.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 2 = [(e^x - x^3/3)] from 0 to 2.\n'
                    ' = [(e^2 - 8/3) - (1 - 0)].\n'
                    ' = [e^2 - 8/3 - 1].\n'
                    ' = e^2 - 11/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 2] is e^2 - 11/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 3].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 3.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 3 = [(x^4/4 - x^3/3)] from 0 to 3.\n'
                    ' = [(81/4 - 27/3) - (0 - 0)].\n'
                    ' = [81/4 - 27/3].\n'
                    ' = 81/4 - 9.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 3] is 81/4 - 9 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^3].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^3.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^3 = [(e^x - xln(x) - x)] from 1 to e^3.\n'
                    ' = [(e^(e^3) - 3ln(e^3) - e^3) - (e - ln(1) - 1)].\n'
                    ' = [e^(e^3) - 3e^3 - e^3 - e + 1].\n'
                    ' = e^(e^3) - 4e^3 - e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^3] is e^(e^3) - 4e^3 - e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 3].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 3.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 3 = [(2x^(3/2)/3 - x^4/4)] from 0 to 3.\n'
                    ' = [(2 - 81/4) - (0 - 0)].\n'
                    ' = [2 - 81/4].\n'
                    ' = 8 - 81/4.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 3] is 8 - 81/4 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/6, π/2].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/6 to π/2.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/6 to π/2 = [(sin(x) + cos(x))] from π/6 to π/2.\n'
                    ' = [(1/2 + √3/2) - (√2/2 + √2/2)].\n'
                    ' = √3/2 - √2.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/6, π/2] is √3/2 - √2 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 3].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 3.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 3 = [(e^x - x^3/3)] from 0 to 3.\n'
                    ' = [(e^3 - 27/3) - (1 - 0)].\n'
                    ' = [e^3 - 9 - 1].\n'
                    ' = e^3 - 10.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 3] is e^3 - 10 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 4].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 4.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 4 = [(x^4/4 - x^3/3)] from 0 to 4.\n'
                    ' = [(256/4 - 64/3) - (0 - 0)].\n'
                    ' = [64 - 64/3].\n'
                    ' = 128/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 4] is 128/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^4].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^4.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^4 = [(e^x - xln(x) - x)] from 1 to e^4.\n'
                    ' = [(e^(e^4) - 4ln(e^4) - e^4) - (e - ln(1) - 1)].\n'
                    ' = [e^(e^4) - 4e^4 - e^4 - e + 1].\n'
                    ' = e^(e^4) - 5e^4 - e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^4] is e^(e^4) - 5e^4 - e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 4].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 4.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 4 = [(2x^(3/2)/3 - x^4/4)] from 0 to 4.\n'
                    ' = [(16/3 - 256/4) - (0 - 0)].\n'
                    ' = [16/3 - 64].\n'
                    ' = -112/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 4] is -112/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/4].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from 0 to π/4.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from 0 to π/4 = [(sin(x) + cos(x))] from 0 to π/4.\n'
                    ' = [(1/√2 + 1/√2) - (0 + 1)].\n'
                    ' = √2/2 - 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [0, π/4] is √2/2 - 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 4].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 4.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 4 = [(e^x - x^3/3)] from 0 to 4.\n'
                    ' = [(e^4 - 64/3) - (1 - 0)].\n'
                    ' = [e^4 - 64/3 - 1].\n'
                    ' = e^4 - 67/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 4] is e^4 - 67/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 5].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 5.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 5 = [(x^4/4 - x^3/3)] from 0 to 5.\n'
                    ' = [(625/4 - 125/3) - (0 - 0)].\n'
                    ' = [625/4 - 125/3].\n'
                    ' = 1875/12 - 125/3.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 5] is 1875/12 - 125/3 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^5].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^5.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^5 = [(e^x - xln(x) - x)] from 1 to e^5.\n'
                    ' = [(e^(e^5) - 5ln(e^5) - e^5) - (e - ln(1) - 1)].\n'
                    ' = [e^(e^5) - 5e^5 - e^5 - e + 1].\n'
                    ' = e^(e^5) - 6e^5 - e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^5] is e^(e^5) - 6e^5 - e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 5].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 5.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 5 = [(2x^(3/2)/3 - x^4/4)] from 0 to 5.\n'
                    ' = [(50/3 - 625/4) - (0 - 0)].\n'
                    ' = [50/3 - 625/4].\n'
                    ' = 200/3 - 625/4.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 5] is 200/3 - 625/4 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/3, 2π/3].',
                solution: 'Integration: ∫(cos(x) - sin(x)) dx from π/3 to 2π/3.\n\n'
                    'Evaluate the integral: (∫(cos(x) - sin(x)) dx) from π/3 to 2π/3 = [(sin(x) + cos(x))] from π/3 to 2π/3.\n'
                    ' = [(√3/2 + 1/2) - (1/2 + √3/2)].\n'
                    ' = √3/2 - √3/2.\n'
                    ' = 0.\n\n'
                    'Final Answer: The area enclosed between the curves y = sin(x) and y = cos(x) over the interval [π/3, 2π/3] is 0 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = e^x over the interval [0, 6].',
                solution: 'Integration: ∫(e^x - x^2) dx from 0 to 6.\n\n'
                    'Evaluate the integral: (∫(e^x - x^2) dx) from 0 to 6 = [(e^x - x^3/3)] from 0 to 6.\n'
                    ' = [(e^6 - 216/3) - (1 - 0)].\n'
                    ' = [e^6 - 72 - 1].\n'
                    ' = e^6 - 73.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = e^x over the interval [0, 6] is e^6 - 73 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 6].',
                solution: 'Integration: ∫(x^3 - x^2) dx from 0 to 6.\n\n'
                    'Evaluate the integral: (∫(x^3 - x^2) dx) from 0 to 6 = [(x^4/4 - x^3/3)] from 0 to 6.\n'
                    ' = [(1296/4 - 216/3) - (0 - 0)].\n'
                    ' = [324 - 72].\n'
                    ' = 252.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^2 and y = x^3 over the interval [0, 6] is 252 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^6].',
                solution: 'Integration: ∫(e^x - ln(x)) dx from 1 to e^6.\n\n'
                    'Evaluate the integral: (∫(e^x - ln(x)) dx) from 1 to e^6 = [(e^x - xln(x) - x)] from 1 to e^6.\n'
                    ' = [(e^6 - 6ln(e^6) - e^6) - (e - ln(1) - 1)].\n'
                    ' = [e^6 - 6*6 - e^6 - e + 1].\n'
                    ' = e^6 - 37 - e + 1.\n\n'
                    'Final Answer: The area enclosed between the curves y = e^x and y = ln(x) over the interval [1, e^6] is e^6 - 37 - e + 1 square units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Find the area enclosed between the curves y = x^3 and y = √x over the interval [0, 6].',
                solution: 'Integration: ∫(√x - x^3) dx from 0 to 6.\n\n'
                    'Evaluate the integral: (∫(√x - x^3) dx) from 0 to 6 = [(2x^(3/2)/3 - x^4/4)] from 0 to 6.\n'
                    ' = [(72/3 - 1296/4) - (0 - 0)].\n'
                    ' = [24 - 1296/4].\n'
                    ' = 24 - 324.\n'
                    ' = -300.\n\n'
                    'Final Answer: The area enclosed between the curves y = x^3 and y = √x over the interval [0, 6] is -300 square units.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
