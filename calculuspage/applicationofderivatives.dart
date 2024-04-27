import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class ApplicationOfDerivativesPage extends StatelessWidget {
  final Color chosenColor;
  ApplicationOfDerivativesPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculus Application Of Derivatives'),
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
                'Calculus Application Of Derivatives:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Calculus is a branch of mathematics that deals with rates of change and accumulation of quantities. Application of derivatives is a crucial concept within calculus that involves using derivatives (the rate of change of a function) to solve various real-world problems. Here are some common applications of derivatives:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Optimization: Derivatives are used to find maximum and minimum values of functions. In optimization problems, you aim to maximize or minimize some quantity, such as profit, cost, area, volume, etc. Applications include maximizing profit in business, minimizing cost in engineering, maximizing area of enclosed regions given a fixed amount of material, etc.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Rate of Change: Derivatives represent rates of change. Therefore, they are useful for analyzing and modeling phenomena involving change over time or space. Examples include determining the rate at which a population grows or declines, the speed of a moving object, the rate of flow of a liquid, etc.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '3. Physics: Many principles in physics can be described using calculus and derivatives. For instance, derivatives are used to calculate velocity and acceleration from position functions, to determine the rate of change of temperature in a cooling object, to analyze the motion of objects under the influence of forces, and to solve problems related to electricity and magnetism.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '4. Economics: Economics often involves analyzing relationships between variables that change over time. Derivatives are used to model and analyze concepts such as marginal cost, marginal revenue, elasticity of demand, and optimization of utility functions.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '5. Biology and Medicine: Calculus is applied in various biological and medical fields to model and analyze phenomena such as population growth, spread of diseases, drug concentrations in the body, rates of reaction in biochemical processes, and many more.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '6. Engineering: Engineers use calculus extensively in designing and analyzing systems. For example, derivatives are used in mechanics to analyze stresses and strains in structures, in electrical engineering to analyze circuits and signals, in chemical engineering to model reaction rates and design processes, and in many other engineering disciplines.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Maximizing Profit',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Suppose you own a small business that sells a product. The profit you make depends on the price at which you sell the product and the number of units you sell. Let`s say the profit function P(x) (where x represents the number of units sold) is given by:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nP(x)= -2x^2+100x-100',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                'This function represents the total profit in dollars based on the number of units sold. Now, you want to find the optimal number of units to sell in order to maximize your profit.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 1: Find the derivative of P`(x)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 2: P`(x) = d/dx(-2x^2 + 100x-100)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 3: P`(x) = -4x+100',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 4: Set P`(x) equal to zero and solve for x',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n-4x+100 = 0',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\n4x=100',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nx= 100/4 = 25',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 5: Determine the nature of the critical point',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nTo determine whether the critical point at x =25 corresponds to a maximum or minimum, we use the second derivative test.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nP``(x) = d^2/dx^2(-2x^2+100x -100)',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nP``(x) = -4',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nStep 5b: Evaluate the second derivative at x=25',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nP``(x) = d^2/dx^2(-2x^2+100x -100)',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nP``(25)=-4',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nSince P``(25)=-4 is negative, the critical point at x = 25 corresponds to a maximum',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                '\n\nAnswer: So, the optimal number of units to sell in order to maximize profit is 25 units.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '1. A car travels along a straight road according to the position function s(t) = 3t^2 - 4t + 10, where t is the time in seconds. Find the velocity of the car at t = 4 seconds.',
                solution: 'Differentiate the position function s(t) to find the velocity function v(t), then evaluate v(4).\n\n'
                    'Given s(t) = 3t^2 - 4t + 10,\n'
                    'v(t) = ds/dt = 6t - 4.\n'
                    'At t = 4 seconds,\n'
                    'v(4) = 6(4) - 4 = 20 m/s.\n'
                    'Therefore, the velocity of the car at t = 4 seconds is 20 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '2. The temperature T of a cup of coffee cools over time according to the function T(t) = 80e^(-0.1t), where t is the time in minutes. Find the rate at which the temperature is changing after 5 minutes.',
                solution: 'Find the derivative dT/dt to get the rate of change of temperature, then evaluate it at t = 5.\n\n'
                    'Given T(t) = 80e^(-0.1t),\n'
                    'dT/dt = -8e^(-0.1t).\n'
                    'At t = 5 minutes,\n'
                    'dT/dt = -8e^(-0.1 * 5) = -8e^(-0.5) ≈ -4.98.\n'
                    'Therefore, the rate of change of temperature after 5 minutes is approximately -4.98.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '3. A ladder is leaning against a wall. The length of the ladder is 10 meters, and the base of the ladder is sliding away from the wall at a rate of 2 meters per second. How fast is the top of the ladder sliding down the wall when the base of the ladder is 6 meters away from the wall?',
                solution: 'Use related rates to find the rate of change of the height of the ladder with respect to time.\n\n'
                    'Given: Ladder length (l) = 10 m, Rate of change of base (dx/dt) = 2 m/s, Distance from wall (x) = 6 m.\n'
                    'We need to find: Rate of change of height (dy/dt).\n\n'
                    'Using Pythagoras theorem: l^2 = x^2 + y^2.\n'
                    'Differentiating both sides with respect to time, we get: 0 = 2x(dx/dt) + 2y(dy/dt).\n'
                    'Substitute given values and solve for dy/dt: 0 = 2(6)(2) + 2y(dy/dt), dy/dt = -12/√(y^2 - 36).\n'
                    'Using the Pythagoras theorem again, we can find y = √(l^2 - x^2) = √(10^2 - 6^2) = 8 m.\n'
                    'Therefore, dy/dt = -12/√(8^2 - 36) = -12/√(28) ≈ -2.28 m/s.\n'
                    'Hence, the top of the ladder is sliding down the wall at a rate of approximately 2.28 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '4. A cylindrical tank is being filled with water at a constant rate of 5 cubic meters per minute. The radius of the tank is 3 meters, and the height is 10 meters. How fast is the water level rising when the height of the water is 5 meters?',
                solution: 'Use related rates to find the rate of change of the height of water in the tank with respect to time.\n\n'
                    'Given: Rate of change of volume (dV/dt) = 5 m³/min, Radius (r) = 3 m, Height (h) = 5 m.\n'
                    'We need to find: Rate of change of height (dh/dt).\n\n'
                    'The volume (V) of a cylinder is given by V = πr²h.\n'
                    'Differentiating both sides with respect to time, we get: dV/dt = π(2rh)(dr/dt) + πr²(dh/dt).\n'
                    'Substitute given values and solve for dh/dt: 5 = π(2(3)(5))(0) + π(3²)(dh/dt), dh/dt = 5/(9π) ≈ 0.177 m/min.\n'
                    'Hence, the water level is rising at a rate of approximately 0.177 meters per minute.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '5. A company\'s profit function is given by P(x) = 3x^2 - 20x + 15, where x represents the number of units sold. Find the rate of change of profit with respect to the number of units sold when x = 10.',
                solution: 'Find the derivative dP/dx to get the rate of change of profit, then evaluate it at x = 10.\n\n'
                    'Given P(x) = 3x^2 - 20x + 15,\n'
                    'dP/dx = 6x - 20.\n'
                    'At x = 10 units sold,\n'
                    'dP/dx = 6(10) - 20 = 40.\n'
                    'Therefore, the rate of change of profit when x = 10 is 40.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '6. A rectangular box with a square base is constructed so that its width is increasing at a rate of 3 centimeters per second and its height is increasing at a rate of 4 centimeters per second. If the volume of the box is 1000 cubic centimeters, how fast is the length of the box increasing when the width is 10 centimeters and the height is 5 centimeters?',
                solution: 'Let V be the volume of the box, and let l, w, and h be its length, width, and height, respectively.\n\n'
                    'The volume V of the box is given by V = lwh.\n'
                    'Given dw/dt = 3 cm/s, dh/dt = 4 cm/s, w = 10 cm, h = 5 cm, V = 1000 cm^3,\n'
                    'Substituting these values into the volume equation, we get 1000 = l(10)(5).\n'
                    'Solving for l, we find l = 20 cm.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = wdh/dt + h dw/dt + l dw/dt.\n'
                    'Substituting the known values, we can solve for dl/dt: 0 = (10)(4) + (5)(3) + (20)(3) dl/dt.\n'
                    'Solving for dl/dt, we find dl/dt = -16/3 cm/s.\n'
                    'Therefore, the length of the box is decreasing at a rate of 16/3 cm/s when the width is 10 centimeters and the height is 5 centimeters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '7. A particle moves along the x-axis according to the equation x(t) = 3t^2 - 12t + 5, where x is in meters and t is in seconds. Find the time at which the particle changes direction.',
                solution: 'To find when the particle changes direction, we need to find the points where its velocity changes sign.\n\n'
                    'Given x(t) = 3t^2 - 12t + 5,\n'
                    'Velocity v(t) = dx/dt = 6t - 12.\n'
                    'The particle changes direction when v(t) = 0.\n'
                    'Setting 6t - 12 = 0, we find t = 2 seconds.\n'
                    'Therefore, the particle changes direction at t = 2 seconds.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '8. The height of a right circular cone is increasing at a rate of 2 centimeters per minute, while the radius of its base is increasing at a rate of 3 centimeters per minute. At what rate is the volume of the cone increasing when the height is 10 centimeters and the radius is 4 centimeters?',
                solution: 'Let V be the volume of the cone, h be its height, and r be the radius of its base.\n\n'
                    'The volume V of a cone with radius r and height h is given by V = (1/3)πr^2h.\n'
                    'Given dh/dt = 2 cm/min, dr/dt = 3 cm/min, h = 10 cm, r = 4 cm,\n'
                    'Substituting these values into the volume equation, we get V = (1/3)π(4)^2(10) = (320/3)π.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = (1/3)π(2rh + r^2dh/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = (1/3)π(2(4)(10) + (4)^2(2)).\n'
                    'Solving for dV/dt, we find dV/dt = 160π cm^3/min.\n'
                    'Therefore, the volume of the cone is increasing at a rate of 160π cm^3/min when the height is 10 centimeters and the radius is 4 centimeters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '9. A boat is pulled into a dock by a rope attached to the bow of the boat. If the rope is being pulled in at a rate of 2 feet per second, how fast is the boat approaching the dock when it is 10 feet from the dock?',
                solution: 'Let y be the distance between the boat and the dock, and let x be the length of the rope.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = d^2, where d is the distance between the boat and the dock.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 2 ft/s, x = 10 ft,\n'
                    'Substituting x = 10 into x^2 + y^2 = d^2, we find y = √(d^2 - 100).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(10)(2) + 2√(d^2 - 100)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -4√(d^2 - 100)/√(d^2 - 100) = -4 ft/s.\n'
                    'Therefore, the boat is approaching the dock at a rate of 4 ft/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '10. The height of a rocket above the ground is given by the equation h(t) = 100t - 4.9t^2, where h is in meters and t is in seconds. Find the maximum height reached by the rocket and the time it takes to reach this height.',
                solution: 'To find the maximum height reached by the rocket, we need to find the vertex of the parabolic function.\n\n'
                    'Given h(t) = 100t - 4.9t^2,\n'
                    'The vertex of the parabola h(t) = -b/2a = -100/(2*(-4.9)) = 10.204 seconds.\n'
                    'Substituting t = 10.204 into h(t), we find h(10.204) ≈ 510.204 meters.\n'
                    'Therefore, the maximum height reached by the rocket is approximately 510.204 meters, and it takes approximately 10.204 seconds to reach this height.',
              ),
          SizedBox(height: 20),
          ProblemSolvingWidget(
            problem: '11. The length of a rectangle is increasing at a rate of 4 centimeters per second, while the width is decreasing at a rate of 3 centimeters per second. If the length is 10 centimeters and the width is 5 centimeters, what is the rate of change of the area of the rectangle?',
            solution: 'Let A be the area of the rectangle, and let l and w be its length and width, respectively.\n\n'
                'The area A of the rectangle is given by A = lw.\n'
                'Given dl/dt = 4 cm/s, dw/dt = -3 cm/s, l = 10 cm, w = 5 cm,\n'
                'Substituting these values into the area equation, we get A = (10)(5) = 50 cm^2.\n'
                'Differentiating both sides of the area equation with respect to time t, we get dA/dt = l(dw/dt) + w(dl/dt).\n'
                'Substituting the known values, we can solve for dA/dt: dA/dt = (10)(-3) + (5)(4).\n'
                'Solving for dA/dt, we find dA/dt = 20 cm^2/s.\n'
                'Therefore, the area of the rectangle is increasing at a rate of 20 cm^2/s.',
          ),

          SizedBox(height: 20),
          ProblemSolvingWidget(
            problem: '12. A ladder 12 meters long is leaning against a wall. The bottom of the ladder is pulled away from the wall at a rate of 0.1 meters per second. How fast is the top of the ladder sliding down the wall when the bottom of the ladder is 5 meters from the wall?',
            solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                'Using the Pythagorean theorem, we have x^2 + y^2 = 12^2.\n'
                'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                'Given dx/dt = 0.1 m/s, x = 5 meters,\n'
                'Substituting x = 5 into x^2 + y^2 = 12^2, we find y = √(12^2 - 5^2).\n'
                'Substituting the known values, we can solve for dy/dt: 2(5)(0.1) + 2√(12^2 - 5^2)(dy/dt) = 0.\n'
                'Solving for dy/dt, we find dy/dt = -1.6 m/s.\n'
                'Therefore, the top of the ladder is sliding down the wall at a rate of 1.6 m/s.',
          ),
          SizedBox(height: 20),
          ProblemSolvingWidget(
              problem: '13. A particle moves along the x-axis with velocity v(t) = t^2 - 4t + 3, where t is in seconds. Find the acceleration of the particle when the velocity is zero.',
              solution: 'To find the acceleration of the particle when the velocity is zero, we need to find the derivative of the velocity function.\n\n'
                  'Given v(t) = t^2 - 4t + 3,\n'
                  'Acceleration a(t) = dv/dt = 2t - 4.\n'
                  'The particle`s velocity is zero when v(t) = 0.\n'
                  'Setting t^2 - 4t + 3 = 0, we find t = 1 or t = 3.\n'
                  'Substituting t = 1 into a(t), we get a(1) = 2(1) - 4 = -2 m/s^2.\n'
                  'Substituting t = 3 into a(t), we get a(3) = 2(3) - 4 = 2 m/s^2.\n'
                  'Therefore, the acceleration of the particle when the velocity is zero is -2 m/s^2 and 2 m/s^2.',
        ),
        SizedBox(height: 20),
        ProblemSolvingWidget(
          problem: '14. A cylindrical tank with a radius of 5 meters is being filled with water at a rate of 3 cubic meters per minute. How fast is the height of the water increasing?',
          solution: 'Let V be the volume of water in the tank, and let r and h be the radius and height of the water, respectively.\n\n'
              'The volume V of water in the tank is given by V = πr^2h.\n'
              'Given dV/dt = 3 m^3/min, r = 5 meters,\n'
              'Substituting these values into the volume equation, we get 3 = π(5)^2 dh/dt.\n'
              'Solving for dh/dt, we find dh/dt = 3/(25π) meters per minute.\n'
              'Therefore, the height of the water is increasing at a rate of 3/(25π) meters per minute.',
        ),
        SizedBox(height: 20),
        ProblemSolvingWidget(
          problem: '15. A particle moves along the x-axis according to the equation x(t) = 4t^3 - 18t^2 + 27t - 8, where x is in meters and t is in seconds. Find the distance traveled by the particle from t = 0 to t = 3 seconds.',
          solution: 'To find the distance traveled by the particle, we need to find the total distance traveled along the x-axis from t = 0 to t = 3 seconds.\n\n'
              'Given x(t) = 4t^3 - 18t^2 + 27t - 8,\n'
              'Velocity v(t) = dx/dt = 12t^2 - 36t + 27.\n'
              'To find the distance traveled, we need to find the total displacement and then take the absolute value.\n'
              'The displacement Δx from t = 0 to t = 3 seconds is given by Δx = x(3) - x(0).\n'
              'Substituting t = 3 and t = 0 into x(t), we get x(3) = 91 and x(0) = -8.\n'
              'Therefore, the displacement Δx = 91 - (-8) = 99 meters.\n'
              'The total distance traveled is the absolute value of the displacement, so the distance traveled is 99 meters.',
        ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '16. A car is traveling along a straight road. Its position, in meters, at time t seconds is given by the function s(t) = t^3 - 6t^2 + 9t + 2. Find the acceleration of the car at t = 2 seconds.',
                solution: 'To find the acceleration of the car, we need to differentiate the position function twice.\n\n'
                    'Given s(t) = t^3 - 6t^2 + 9t + 2,\n'
                    'Velocity v(t) = ds/dt = 3t^2 - 12t + 9.\n'
                    'Acceleration a(t) = dv/dt = 6t - 12.\n'
                    'At t = 2 seconds,\n'
                    'Acceleration a(2) = 6(2) - 12 = 6 m/s^2.\n'
                    'Therefore, the acceleration of the car at t = 2 seconds is 6 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '17. A particle moves along a line so that its position at time t is given by the function s(t) = t^3 - 6t^2 + 9t. At what time does the particle change direction?',
                solution: 'To find when the particle changes direction, we need to find the points where its velocity changes sign.\n\n'
                    'Given s(t) = t^3 - 6t^2 + 9t,\n'
                    'Velocity v(t) = ds/dt = 3t^2 - 12t + 9.\n'
                    'The particle changes direction when v(t) = 0.\n'
                    'Setting 3t^2 - 12t + 9 = 0, we find t = 1 or t = 3.\n'
                    'Therefore, the particle changes direction at t = 1 second and t = 3 seconds.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '18. The edge length of a cube is increasing at a rate of 2 centimeters per second. At what rate is the volume increasing when the edge length is 10 centimeters?',
                solution: 'Let V be the volume of the cube and let x be the length of its edge.\n\n'
                    'The volume V of a cube with edge length x is given by V = x^3.\n'
                    'Given dx/dt = 2 cm/s, x = 10 cm,\n'
                    'Substituting the known values into the volume equation, we get V = (10)^3 = 1000 cm^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = 3x^2(dx/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = 3(10)^2(2).\n'
                    'Therefore, the volume of the cube is increasing at a rate of 600 cm^3/s when the edge length is 10 centimeters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '19. A cylindrical tank with a radius of 4 meters is being filled with water at a rate of 2 cubic meters per minute. How fast is the height of the water increasing?',
                solution: 'Let V be the volume of water in the tank, and let r and h be the radius and height of the water, respectively.\n\n'
                    'The volume V of water in the tank is given by V = πr^2h.\n'
                    'Given dV/dt = 2 m^3/min, r = 4 meters,\n'
                    'Substituting these values into the volume equation, we get 2 = π(4)^2 dh/dt.\n'
                    'Solving for dh/dt, we find dh/dt = 2/(16π) meters per minute.\n'
                    'Therefore, the height of the water is increasing at a rate of 2/(16π) meters per minute.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '20. A particle moves along the x-axis according to the equation x(t) = t^3 - 6t^2 + 12t - 8, where x is in meters and t is in seconds. Find the displacement of the particle from t = 1 to t = 3 seconds.',
                solution: 'To find the displacement of the particle, we need to find the difference between its position at t = 3 and t = 1 seconds.\n\n'
                    'Given x(t) = t^3 - 6t^2 + 12t - 8,\n'
                    'Substituting t = 3 and t = 1 into x(t), we get x(3) = 9 - 18 + 36 - 8 = 19 and x(1) = 1 - 6 + 12 - 8 = -1.\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 3 seconds is 19 - (-1) = 20 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '21. A particle moves along the x-axis with velocity v(t) = 2t^3 - 12t^2 + 18t - 4, where t is in seconds. Find the displacement of the particle from t = 1 to t = 3 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = 2t^3 - 12t^2 + 18t - 4,\n'
                    'The antiderivative of v(t) is x(t) = ∫(2t^3 - 12t^2 + 18t - 4) dt = (1/4)t^4 - 4t^3 + (9/2)t^2 - 4t + C.\n'
                    'Substituting t = 3 and t = 1 into x(t) and taking the difference, we get x(3) - x(1) = (1/4)(3^4) - 4(3^3) + (9/2)(3^2) - 4(3) - [(1/4)(1^4) - 4(1^3) + (9/2)(1^2) - 4(1)].\n'
                    'Simplifying, we find x(3) - x(1) = (81/4) - 108 + (81/2) - 12 - (1/4 + 4 + 9/2 - 4).\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 3 seconds is 20 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '22. The radius of a circle is increasing at a rate of 0.1 centimeters per second. At what rate is the area of the circle increasing when the radius is 5 centimeters?',
                solution: 'Let A be the area of the circle and let r be its radius.\n\n'
                    'The area A of a circle with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.1 cm/s, r = 5 cm,\n'
                    'Substituting the known values into the area equation, we get A = π(5)^2 = 25π cm^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(5)(0.1).\n'
                    'Therefore, the area of the circle is increasing at a rate of 1π cm^2/s when the radius is 5 centimeters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '23. A particle moves along the x-axis with velocity v(t) = 3t^2 - 12t + 9, where t is in seconds. Determine the acceleration of the particle when t = 2 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 3t^2 - 12t + 9,\n'
                    'Acceleration a(t) = dv/dt = 6t - 12.\n'
                    'At t = 2 seconds,\n'
                    'Acceleration a(2) = 6(2) - 12 = 6 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 2 seconds is 6 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '24. The height of a right circular cone is increasing at a rate of 4 meters per minute, while the radius of its base is decreasing at a rate of 2 meters per minute. At what rate is the volume of the cone changing when the height is 10 meters and the radius is 6 meters?',
                solution: 'Let V be the volume of the cone and h be its height, and let r be the radius of its base.\n\n'
                    'The volume V of a cone with radius r and height h is given by V = (1/3)πr^2h.\n'
                    'Given dh/dt = 4 m/min, dr/dt = -2 m/min, h = 10 meters, r = 6 meters,\n'
                    'Substituting these values into the volume equation, we get V = (1/3)π(6)^2(10) = 120π m^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = (1/3)π(2rh + r^2dh/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = (1/3)π(2(6)(10) + (6)^2(-2)).\n'
                    'Therefore, the volume of the cone is changing at a rate of -40π m^3/min when the height is 10 meters and the radius is 6 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '25. A ladder 15 meters long is leaning against a wall. If the bottom of the ladder slides away from the wall at a rate of 0.2 meters per second, how fast is the top of the ladder sliding down the wall when the bottom of the ladder is 9 meters from the wall?',
                solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = 15^2.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 0.2 m/s, x = 9 meters,\n'
                    'Substituting x = 9 into x^2 + y^2 = 15^2, we find y = √(15^2 - 9^2).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(9)(0.2) + 2√(15^2 - 9^2)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -1.2 m/s.\n'
                    'Therefore, the top of the ladder is sliding down the wall at a rate of 1.2 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '26. The length of a rectangle is decreasing at a rate of 2 centimeters per second, while the width is increasing at a rate of 3 centimeters per second. If the length is 15 centimeters and the width is 10 centimeters, what is the rate of change of the area of the rectangle?',
                solution: 'Let A be the area of the rectangle, and let l and w be its length and width, respectively.\n\n'
                    'The area A of the rectangle is given by A = lw.\n'
                    'Given dl/dt = -2 cm/s, dw/dt = 3 cm/s, l = 15 cm, w = 10 cm,\n'
                    'Substituting these values into the area equation, we get A = (15)(10) = 150 cm^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = l(dw/dt) + w(dl/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = (15)(3) + (10)(-2).\n'
                    'Solving for dA/dt, we find dA/dt = 35 cm^2/s.\n'
                    'Therefore, the area of the rectangle is changing at a rate of 35 cm^2/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '27. A particle moves along a straight line with velocity v(t) = t^2 - 4t + 5, where t is in seconds. Find the displacement of the particle from t = 1 to t = 4 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = t^2 - 4t + 5,\n'
                    'The antiderivative of v(t) is x(t) = ∫(t^2 - 4t + 5) dt = (1/3)t^3 - 2t^2 + 5t + C.\n'
                    'Substituting t = 4 and t = 1 into x(t) and taking the difference, we get x(4) - x(1) = (1/3)(4^3) - 2(4^2) + 5(4) - [(1/3)(1^3) - 2(1^2) + 5(1)].\n'
                    'Simplifying, we find x(4) - x(1) = (64/3) - 32 + 20 - (1/3 - 2 + 5).\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 4 seconds is 43 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '28. A rectangular tank with a square base is being filled with water at a rate of 2 cubic meters per minute. If the tank is 5 meters long and the water is 2 meters deep, how fast is the water level rising?',
                solution: 'Let V be the volume of water in the tank, and let l and h be the length and height of the water, respectively.\n\n'
                    'The volume V of water in the tank is given by V = l^2h.\n'
                    'Given dV/dt = 2 m^3/min, l = 5 meters, h = 2 meters,\n'
                    'Substituting these values into the volume equation, we get 2 = (5^2) dh/dt.\n'
                    'Solving for dh/dt, we find dh/dt = 2/(25) meters per minute.\n'
                    'Therefore, the water level is rising at a rate of 2/25 meters per minute.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '29. A particle moves along the x-axis with velocity v(t) = 4t^3 - 12t^2 + 9t - 3, where t is in seconds. Find the acceleration of the particle when t = 3 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 4t^3 - 12t^2 + 9t - 3,\n'
                    'Acceleration a(t) = dv/dt = 12t^2 - 24t + 9.\n'
                    'At t = 3 seconds,\n'
                    'Acceleration a(3) = 12(3)^2 - 24(3) + 9 = 27 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 3 seconds is 27 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '30. The radius of a circle is increasing at a rate of 0.3 centimeters per second. At what rate is the area of the circle increasing when the radius is 8 centimeters?',
                solution: 'Let A be the area of the circle and let r be its radius.\n\n'
                    'The area A of a circle with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.3 cm/s, r = 8 cm,\n'
                    'Substituting the known values into the area equation, we get A = π(8)^2 = 64π cm^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(8)(0.3).\n'
                    'Therefore, the area of the circle is increasing at a rate of 38.4π cm^2/s when the radius is 8 centimeters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '31. A particle moves along the x-axis with velocity v(t) = 2t^3 - 12t^2 + 18t - 4, where t is in seconds. Find the displacement of the particle from t = 1 to t = 4 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = 2t^3 - 12t^2 + 18t - 4,\n'
                    'The antiderivative of v(t) is x(t) = ∫(2t^3 - 12t^2 + 18t - 4) dt = (1/2)t^4 - 4t^3 + (9/2)t^2 - 4t + C.\n'
                    'Substituting t = 4 and t = 1 into x(t) and taking the difference, we get x(4) - x(1) = (1/2)(4^4) - 4(4^3) + (9/2)(4^2) - 4(4) - [(1/2)(1^4) - 4(1^3) + (9/2)(1^2) - 4(1)].\n'
                    'Simplifying, we find x(4) - x(1) = 32 - 256 + 72 - 16 - (1/2 - 4 + 9/2 - 4).\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 4 seconds is -149 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '32. The radius of a circular disk is increasing at a rate of 0.2 meters per second. At what rate is the area of the disk increasing when the radius is 10 meters?',
                solution: 'Let A be the area of the disk and let r be its radius.\n\n'
                    'The area A of a disk with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.2 m/s, r = 10 meters,\n'
                    'Substituting the known values into the area equation, we get A = π(10)^2 = 100π m^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(10)(0.2).\n'
                    'Therefore, the area of the disk is increasing at a rate of 40π m^2/s when the radius is 10 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '33. A particle moves along a straight line with velocity v(t) = 3t^2 - 6t + 5, where t is in seconds. Determine the acceleration of the particle when t = 2 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 3t^2 - 6t + 5,\n'
                    'Acceleration a(t) = dv/dt = 6t - 6.\n'
                    'At t = 2 seconds,\n'
                    'Acceleration a(2) = 6(2) - 6 = 6 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 2 seconds is 6 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '34. The radius of a sphere is increasing at a rate of 0.5 meters per minute. At what rate is the volume of the sphere increasing when the radius is 4 meters?',
                solution: 'Let V be the volume of the sphere and let r be its radius.\n\n'
                    'The volume V of a sphere with radius r is given by V = (4/3)πr^3.\n'
                    'Given dr/dt = 0.5 m/min, r = 4 meters,\n'
                    'Substituting these values into the volume equation, we get V = (4/3)π(4)^3 = 256π/3 m^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = 4πr^2(dr/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = 4π(4)^2(0.5).\n'
                    'Therefore, the volume of the sphere is increasing at a rate of 32π m^3/min when the radius is 4 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '35. A ladder 20 meters long is leaning against a wall. If the bottom of the ladder slides away from the wall at a rate of 0.3 meters per second, how fast is the top of the ladder sliding down the wall when the bottom of the ladder is 15 meters from the wall?',
                solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = 20^2.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 0.3 m/s, x = 15 meters,\n'
                    'Substituting x = 15 into x^2 + y^2 = 20^2, we find y = √(20^2 - 15^2).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(15)(0.3) + 2√(20^2 - 15^2)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -0.6 m/s.\n'
                    'Therefore, the top of the ladder is sliding down the wall at a rate of 0.6 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '36. A particle moves along the x-axis with velocity v(t) = 4t^3 - 12t^2 + 9t - 3, where t is in seconds. Find the displacement of the particle from t = 2 to t = 5 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = 4t^3 - 12t^2 + 9t - 3,\n'
                    'The antiderivative of v(t) is x(t) = ∫(4t^3 - 12t^2 + 9t - 3) dt = t^4 - 4t^3 + (9/2)t^2 - 3t + C.\n'
                    'Substituting t = 5 and t = 2 into x(t) and taking the difference, we get x(5) - x(2) = (5^4) - 4(5^3) + (9/2)(5^2) - 3(5) - [(2^4) - 4(2^3) + (9/2)(2^2) - 3(2)].\n'
                    'Simplifying, we find x(5) - x(2) = 625 - 500 + 112.5 - 15 - (16 - 32 + 18 - 6).\n'
                    'Therefore, the displacement of the particle from t = 2 to t = 5 seconds is 219.5 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '37. The radius of a circular disk is increasing at a rate of 0.1 meters per second. At what rate is the area of the disk increasing when the radius is 6 meters?',
                solution: 'Let A be the area of the disk and let r be its radius.\n\n'
                    'The area A of a disk with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.1 m/s, r = 6 meters,\n'
                    'Substituting the known values into the area equation, we get A = π(6)^2 = 36π m^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(6)(0.1).\n'
                    'Therefore, the area of the disk is increasing at a rate of 3.6π m^2/s when the radius is 6 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '38. A particle moves along a straight line with velocity v(t) = 2t^2 - 6t + 9, where t is in seconds. Determine the acceleration of the particle when t = 3 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 2t^2 - 6t + 9,\n'
                    'Acceleration a(t) = dv/dt = 4t - 6.\n'
                    'At t = 3 seconds,\n'
                    'Acceleration a(3) = 4(3) - 6 = 6 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 3 seconds is 6 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '39. The radius of a sphere is increasing at a rate of 0.2 meters per minute. At what rate is the volume of the sphere increasing when the radius is 5 meters?',
                solution: 'Let V be the volume of the sphere and let r be its radius.\n\n'
                    'The volume V of a sphere with radius r is given by V = (4/3)πr^3.\n'
                    'Given dr/dt = 0.2 m/min, r = 5 meters,\n'
                    'Substituting these values into the volume equation, we get V = (4/3)π(5)^3 = 500π/3 m^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = 4πr^2(dr/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = 4π(5)^2(0.2).\n'
                    'Therefore, the volume of the sphere is increasing at a rate of 100π m^3/min when the radius is 5 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '40. A ladder 25 meters long is leaning against a wall. If the bottom of the ladder slides away from the wall at a rate of 0.4 meters per second, how fast is the top of the ladder sliding down the wall when the bottom of the ladder is 20 meters from the wall?',
                solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = 25^2.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 0.4 m/s, x = 20 meters,\n'
                    'Substituting x = 20 into x^2 + y^2 = 25^2, we find y = √(25^2 - 20^2).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(20)(0.4) + 2√(25^2 - 20^2)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -0.6 m/s.\n'
                    'Therefore, the top of the ladder is sliding down the wall at a rate of 0.6 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '41. A particle moves along the x-axis with velocity v(t) = 3t^2 - 12t + 9, where t is in seconds. Find the displacement of the particle from t = 1 to t = 5 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = 3t^2 - 12t + 9,\n'
                    'The antiderivative of v(t) is x(t) = ∫(3t^2 - 12t + 9) dt = t^3 - 6t^2 + 9t + C.\n'
                    'Substituting t = 5 and t = 1 into x(t) and taking the difference, we get x(5) - x(1) = (5^3) - 6(5^2) + 9(5) - [(1^3) - 6(1^2) + 9(1)].\n'
                    'Simplifying, we find x(5) - x(1) = 125 - 150 + 45 - (1 - 6 + 9).\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 5 seconds is 202 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '42. The radius of a circular disk is increasing at a rate of 0.2 meters per second. At what rate is the area of the disk increasing when the radius is 4 meters?',
                solution: 'Let A be the area of the disk and let r be its radius.\n\n'
                    'The area A of a disk with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.2 m/s, r = 4 meters,\n'
                    'Substituting the known values into the area equation, we get A = π(4)^2 = 16π m^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(4)(0.2).\n'
                    'Therefore, the area of the disk is increasing at a rate of 1.6π m^2/s when the radius is 4 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '43. A particle moves along a straight line with velocity v(t) = 4t^2 - 12t + 9, where t is in seconds. Determine the acceleration of the particle when t = 2 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 4t^2 - 12t + 9,\n'
                    'Acceleration a(t) = dv/dt = 8t - 12.\n'
                    'At t = 2 seconds,\n'
                    'Acceleration a(2) = 8(2) - 12 = 4 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 2 seconds is 4 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '44. The radius of a sphere is increasing at a rate of 0.3 meters per minute. At what rate is the volume of the sphere increasing when the radius is 6 meters?',
                solution: 'Let V be the volume of the sphere and let r be its radius.\n\n'
                    'The volume V of a sphere with radius r is given by V = (4/3)πr^3.\n'
                    'Given dr/dt = 0.3 m/min, r = 6 meters,\n'
                    'Substituting these values into the volume equation, we get V = (4/3)π(6)^3 = 288π m^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = 4πr^2(dr/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = 4π(6)^2(0.3).\n'
                    'Therefore, the volume of the sphere is increasing at a rate of 259.2π m^3/min when the radius is 6 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '45. A ladder 30 meters long is leaning against a wall. If the bottom of the ladder slides away from the wall at a rate of 0.4 meters per second, how fast is the top of the ladder sliding down the wall when the bottom of the ladder is 25 meters from the wall?',
                solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = 30^2.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 0.4 m/s, x = 25 meters,\n'
                    'Substituting x = 25 into x^2 + y^2 = 30^2, we find y = √(30^2 - 25^2).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(25)(0.4) + 2√(30^2 - 25^2)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -0.6 m/s.\n'
                    'Therefore, the top of the ladder is sliding down the wall at a rate of 0.6 m/s.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '46. A particle moves along the x-axis with velocity v(t) = 2t^3 - 9t^2 + 12t - 4, where t is in seconds. Find the displacement of the particle from t = 1 to t = 4 seconds.',
                solution: 'To find the displacement of the particle, we need to find the antiderivative of its velocity function.\n\n'
                    'Given v(t) = 2t^3 - 9t^2 + 12t - 4,\n'
                    'The antiderivative of v(t) is x(t) = ∫(2t^3 - 9t^2 + 12t - 4) dt = (1/2)t^4 - (3/3)t^3 + (6/2)t^2 - 4t + C.\n'
                    'Substituting t = 4 and t = 1 into x(t) and taking the difference, we get x(4) - x(1) = (1/2)(4^4) - (3/3)(4^3) + (6/2)(4^2) - 4(4) - [(1/2)(1^4) - (3/3)(1^3) + (6/2)(1^2) - 4(1)].\n'
                    'Simplifying, we find x(4) - x(1) = 64 - 48 + 32 - 16 - (1/2 - 1 + 3 - 4).\n'
                    'Therefore, the displacement of the particle from t = 1 to t = 4 seconds is 29 units.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '47. The radius of a circular disk is increasing at a rate of 0.15 meters per second. At what rate is the area of the disk increasing when the radius is 8 meters?',
                solution: 'Let A be the area of the disk and let r be its radius.\n\n'
                    'The area A of a disk with radius r is given by A = πr^2.\n'
                    'Given dr/dt = 0.15 m/s, r = 8 meters,\n'
                    'Substituting the known values into the area equation, we get A = π(8)^2 = 64π m^2.\n'
                    'Differentiating both sides of the area equation with respect to time t, we get dA/dt = 2πr(dr/dt).\n'
                    'Substituting the known values, we can solve for dA/dt: dA/dt = 2π(8)(0.15).\n'
                    'Therefore, the area of the disk is increasing at a rate of 24π m^2/s when the radius is 8 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '48. A particle moves along a straight line with velocity v(t) = 4t^2 - 8t + 7, where t is in seconds. Determine the acceleration of the particle when t = 3 seconds.',
                solution: 'To find the acceleration of the particle, we need to differentiate the velocity function.\n\n'
                    'Given v(t) = 4t^2 - 8t + 7,\n'
                    'Acceleration a(t) = dv/dt = 8t - 8.\n'
                    'At t = 3 seconds,\n'
                    'Acceleration a(3) = 8(3) - 8 = 16 m/s^2.\n'
                    'Therefore, the acceleration of the particle at t = 3 seconds is 16 m/s^2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '49. The radius of a sphere is increasing at a rate of 0.25 meters per minute. At what rate is the volume of the sphere increasing when the radius is 10 meters?',
                solution: 'Let V be the volume of the sphere and let r be its radius.\n\n'
                    'The volume V of a sphere with radius r is given by V = (4/3)πr^3.\n'
                    'Given dr/dt = 0.25 m/min, r = 10 meters,\n'
                    'Substituting these values into the volume equation, we get V = (4/3)π(10)^3 = 4000π/3 m^3.\n'
                    'Differentiating both sides of the volume equation with respect to time t, we get dV/dt = 4πr^2(dr/dt).\n'
                    'Substituting the known values, we can solve for dV/dt: dV/dt = 4π(10)^2(0.25).\n'
                    'Therefore, the volume of the sphere is increasing at a rate of 100π m^3/min when the radius is 10 meters.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: '50. A ladder 40 meters long is leaning against a wall. If the bottom of the ladder slides away from the wall at a rate of 0.5 meters per second, how fast is the top of the ladder sliding down the wall when the bottom of the ladder is 30 meters from the wall?',
                solution: 'Let x be the distance of the bottom of the ladder from the wall, and let y be the height of the ladder on the wall.\n\n'
                    'Using the Pythagorean theorem, we have x^2 + y^2 = 40^2.\n'
                    'Differentiating both sides with respect to time t, we get 2x(dx/dt) + 2y(dy/dt) = 0.\n'
                    'Given dx/dt = 0.5 m/s, x = 30 meters,\n'
                    'Substituting x = 30 into x^2 + y^2 = 40^2, we find y = √(40^2 - 30^2).\n'
                    'Substituting the known values, we can solve for dy/dt: 2(30)(0.5) + 2√(40^2 - 30^2)(dy/dt) = 0.\n'
                    'Solving for dy/dt, we find dy/dt = -0.6 m/s.\n'
                    'Therefore, the top of the ladder is sliding down the wall at a rate of 0.6 m/s.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
