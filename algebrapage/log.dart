import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class LogPage extends StatelessWidget {
  final Color chosenColor;
  LogPage ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logarithms and Exponential Function'),
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
                'Logarithms and Exponential Function',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Algebra Logarithms and Exponential functions are closely related concepts that deal with the behavior of exponential growth and decay.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Exponential Functions: An exponential function is a mathematical function in the form f(x) =a⋅b^x, where a and b are constants and b is the base of the exponential expression. These functions model scenarios where a quantity increases or decreases at a constant percentage rate over time. Exponential functions are characterized by rapid growth (if b>1) or decay (if 0 <b < 1).',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Logarithms: Logarithms are the inverse operations of exponentiation. The logarithm of a number is the exponent to which a given base must be raised to produce that number. The logarithm function with base b is denoted as log base b(x), where x is the value for which the logarithm is calculated.\n\nLogarithms are useful for solving exponential equations and for expressing exponential relationships in a more manageable form. ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Exponential Functions:\n\nExponential functions grow or decay at an increasing or decreasing rate, respectively.\n\nThey have horizontal asymptotes depending on the value of a in the function.\n\nExponential growth occurs when b>1 and exponential decay occurs when  0<b<1.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Logarithms:\n\nLogarithms are defined only for positive numbers.\n\nThe logarithm of 1 to any base is always 0.\n\nThe logarithm of the base itself is always 1.\n\nLogarithmic functions have vertical asymptotes depending on the base of the logarithm.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Applications:Exponential functions and logarithms have numerous applications in various fields such as finance, biology, physics, and computer science. Some common applications include modeling population growth, radioactive decay, compound interest, and signal processing.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Consider the exponential function f(x) = 2^x.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 1: Understanding the exponential function:\n\nThe given function is f(x) =2^x.\n\nThis function represents exponential growth because the base 2 is greater than 1.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 2: Finding specific values:\n\nWe can calculate the value of the function for specific values of x.\n\nWhen x = 0, f(0)=2^0 = 1.\n\nWhen x= 1, f(1) = 2^1 =2.\n\nWhen x=2,f(2) =2^2=4.\n\nWhen x =-1, f(-1) =2^-1 = 1/2.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Graphing the function:\n\nWe can plot these points on a graph to visualize the function.\n\nAs x increases, the function f(x) grows exponentially.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 4: Using logarithms to solve equations:\n\nIf we want to find the value of x for a given f(x), we can use logarithms.\n\nFor example, if f(x) = 8, we want to find x such that 2^x = 8.\n\nTaking the logartihm of both sides, we get log base 2(2^x) = log base 2 (8).\n\nUsing the properly of logarithms, x ⋅ log base 2(2) = log base 2 (8).\n\nSince log base 2 (2) = 1, we have x = log base 2 (8).\n\nSolving, x = 3.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nConclusion:\n\nThe exponential function f(x) =2^x represents exponential growth with a base of 2.\n\nThe graph of the function increases rapidly as x increases.\n\nLogarithms can be used to solve equations involving exponential functions.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nGiven the function f(x) = 3^x, determine the range of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function.\n\n'
                    'Step 2: Find the behavior of the function:\n\n'
                    'Exponential functions grow rapidly as x increases.\n\n'
                    'Step 3: Analyze the behavior:\n\n'
                    'Since the base of the exponential function is 3, the function grows exponentially.\n'
                    'Therefore, the range of the function is all positive real numbers.\n\n'
                    'Final Answer: The range of the function f(x) = 3^x is all positive real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nConsider the function f(x) = log_5(x), determine the domain of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a logarithmic function with base 5.\n\n'
                    'Step 2: Find the behavior of the function:\n\n'
                    'Logarithmic functions increase slowly as x increases.\n\n'
                    'Step 3: Analyze the behavior:\n\n'
                    'Since logarithmic functions are defined only for positive values of x,\n'
                    'the domain of the function is all positive real numbers.\n\n'
                    'Final Answer: The domain of the function f(x) = log_5(x) is all positive real numbers.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nGiven the function f(x) = e^x, find the value of x when f(x) = e^2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base e.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = e^2.\n'
                    'So, we have e^x = e^2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Since the base of the exponential function is e, we can equate the exponents.\n'
                    'So, x = 2.\n\n'
                    'Final Answer: The value of x when f(x) = e^2 is x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nConsider the function f(x) = log_3(x + 2), determine the domain of the function.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is a logarithmic function with base 3.\n\n'
                    'Step 2: Find the behavior of the function:\n\n'
                    'Logarithmic functions increase slowly as x increases.\n\n'
                    'Step 3: Analyze the behavior:\n\n'
                    'Since logarithmic functions are defined only for positive values of x,\n'
                    'we need to ensure that x + 2 > 0.\n'
                    'So, x > -2.\n\n'
                    'Final Answer: The domain of the function f(x) = log_3(x + 2) is all real numbers greater than -2.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nGiven the function f(x) = 2^(-x), find the value of x when f(x) = 1/8.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 2 and a negative exponent.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/8.\n'
                    'So, we have 2^(-x) = 1/8.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/8 as 2^(-3), we have 2^(-x) = 2^(-3).\n'
                    'So, -x = -3.\n'
                    'Therefore, x = 3.\n\n'
                    'Final Answer: The value of x when f(x) = 1/8 is x = 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nGiven the function f(x) = 10^(x + 2), find the value of x when f(x) = 10000.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 10 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 10000.\n'
                    'So, we have 10^(x + 2) = 10000.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 10000 as 10^4, we have 10^(x + 2) = 10^4.\n'
                    'So, x + 2 = 4.\n'
                    'Therefore, x = 2.\n\n'
                    'Final Answer: The value of x when f(x) = 10000 is x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nGiven the function f(x) = 3^(2x - 1), find the value of x when f(x) = 81.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 3 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 81.\n'
                    'So, we have 3^(2x - 1) = 81.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 81 as 3^4, we have 3^(2x - 1) = 3^4.\n'
                    'So, 2x - 1 = 4.\n'
                    'Therefore, 2x = 5 and x = 5/2.\n\n'
                    'Final Answer: The value of x when f(x) = 81 is x = 5/2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nGiven the function f(x) = log_5(x), find the value of x when f(x) = 25.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 5.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 25.\n'
                    'So, we have log_5(x) = 25.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 25 as 5^2, we have log_5(x) = log_5(5^2).\n'
                    'So, x = 5^2.\n'
                    'Therefore, x = 25.\n\n'
                    'Final Answer: The value of x when f(x) = 25 is x = 25.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nGiven the function f(x) = log_4(x - 1), find the value of x when f(x) = 1/16.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 4 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/16.\n'
                    'So, we have log_4(x - 1) = 1/16.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/16 as 4^(-2), we have log_4(x - 1) = log_4(4^(-2)).\n'
                    'So, x - 1 = 4^(-2).\n'
                    'Therefore, x = 1 + 4^(-2).\n\n'
                    'Final Answer: The value of x when f(x) = 1/16 is x = 1 + 4^(-2).',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nGiven the function f(x) = ln(2x), find the value of x when f(x) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1.\n'
                    'So, we have ln(2x) = 1.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x = e^1.\n'
                    'So, x = e / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 1 is x = e / 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nGiven the function f(x) = e^(3x), find the value of x when f(x) = 20.0855.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 20.0855.\n'
                    'So, we have e^(3x) = 20.0855.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 3x = ln(20.0855).\n'
                    'So, x = ln(20.0855) / 3.\n\n'
                    'Final Answer: The value of x when f(x) = 20.0855 is approximately x ≈ 1.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nGiven the function f(x) = 4^(x - 2), find the value of x when f(x) = 1/16.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 4 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/16.\n'
                    'So, we have 4^(x - 2) = 1/16.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/16 as 4^(-2), we have 4^(x - 2) = 4^(-2).\n'
                    'So, x - 2 = -2.\n'
                    'Therefore, x = 0.\n\n'
                    'Final Answer: The value of x when f(x) = 1/16 is x = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nGiven the function f(x) = log_3(2x), find the value of x when f(x) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 3.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1.\n'
                    'So, we have log_3(2x) = 1.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x = 3^1.\n'
                    'So, x = 3 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 1 is x = 3 / 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nGiven the function f(x) = ln(x - 1), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 1) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 1 = e^0.\n'
                    'So, x - 1 = 1.\n'
                    'Therefore, x = 2.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nGiven the function f(x) = log_2(3x + 1), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 2 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_2(3x + 1) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 3x + 1 = 2^2.\n'
                    'So, 3x + 1 = 4.\n'
                    'Therefore, 3x = 3 and x = 1.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nGiven the function f(x) = e^(2x), find the value of x when f(x) = 7.389.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 7.389.\n'
                    'So, we have e^(2x) = 7.389.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 2x = ln(7.389).\n'
                    'So, x = ln(7.389) / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 7.389 is approximately x ≈ 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nGiven the function f(x) = 5^(x - 3), find the value of x when f(x) = 1/25.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 5 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/25.\n'
                    'So, we have 5^(x - 3) = 1/25.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/25 as 5^(-2), we have 5^(x - 3) = 5^(-2).\n'
                    'So, x - 3 = -2.\n'
                    'Therefore, x = 1.\n\n'
                    'Final Answer: The value of x when f(x) = 1/25 is x = 1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nGiven the function f(x) = log_6(2x + 1), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 6 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_6(2x + 1) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x + 1 = 6^2.\n'
                    'So, 2x + 1 = 36.\n'
                    'Therefore, 2x = 35 and x = 35 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 35 / 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nGiven the function f(x) = ln(x + 2), find the value of x when f(x) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1.\n'
                    'So, we have ln(x + 2) = 1.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x + 2 = e^1.\n'
                    'So, x + 2 = e.\n'
                    'Therefore, x = e - 2.\n\n'
                    'Final Answer: The value of x when f(x) = 1 is x = e - 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nGiven the function f(x) = log_2(4x + 3), find the value of x when f(x) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 2 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 3.\n'
                    'So, we have log_2(4x + 3) = 3.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 4x + 3 = 2^3.\n'
                    'So, 4x + 3 = 8.\n'
                    'Therefore, 4x = 5 and x = 5 / 4.\n\n'
                    'Final Answer: The value of x when f(x) = 3 is x = 5 / 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nGiven the function f(x) = e^(x + 1), find the value of x when f(x) = 20.0855.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 20.0855.\n'
                    'So, we have e^(x + 1) = 20.0855.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have x + 1 = ln(20.0855).\n'
                    'So, x = ln(20.0855) - 1.\n\n'
                    'Final Answer: The value of x when f(x) = 20.0855 is approximately x ≈ 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nGiven the function f(x) = 7^(x - 4), find the value of x when f(x) = 1/49.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 7 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/49.\n'
                    'So, we have 7^(x - 4) = 1/49.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/49 as 7^(-2), we have 7^(x - 4) = 7^(-2).\n'
                    'So, x - 4 = -2.\n'
                    'Therefore, x = 2.\n\n'
                    'Final Answer: The value of x when f(x) = 1/49 is x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nGiven the function f(x) = log_7(3x + 4), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 7 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_7(3x + 4) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 3x + 4 = 7^2.\n'
                    'So, 3x + 4 = 49.\n'
                    'Therefore, 3x = 45 and x = 45 / 3.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 15.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nGiven the function f(x) = ln(x - 2), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 2) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 2 = e^0.\n'
                    'So, x - 2 = 1.\n'
                    'Therefore, x = 3.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nGiven the function f(x) = log_3(2x + 2), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 3 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_3(2x + 2) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x + 2 = 3^2.\n'
                    'So, 2x + 2 = 9.\n'
                    'Therefore, 2x = 7 and x = 7 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 7 / 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nGiven the function f(x) = e^(2x), find the value of x when f(x) = 54.598.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 54.598.\n'
                    'So, we have e^(2x) = 54.598.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 2x = ln(54.598).\n'
                    'So, x = ln(54.598) / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 54.598 is approximately x ≈ 2.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nGiven the function f(x) = 8^(x - 1), find the value of x when f(x) = 1/64.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 8 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1/64.\n'
                    'So, we have 8^(x - 1) = 1/64.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 1/64 as 8^(-2), we have 8^(x - 1) = 8^(-2).\n'
                    'So, x - 1 = -2.\n'
                    'Therefore, x = -1.\n\n'
                    'Final Answer: The value of x when f(x) = 1/64 is x = -1.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nGiven the function f(x) = log_8(4x + 5), find the value of x when f(x) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 8 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 3.\n'
                    'So, we have log_8(4x + 5) = 3.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 4x + 5 = 8^3.\n'
                    'So, 4x + 5 = 512.\n'
                    'Therefore, 4x = 507 and x = 507 / 4.\n\n'
                    'Final Answer: The value of x when f(x) = 3 is x = 507 / 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29:\nGiven the function f(x) = ln(x - 3), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 3) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 3 = e^0.\n'
                    'So, x - 3 = 1.\n'
                    'Therefore, x = 4.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nGiven the function f(x) = log_4(2x + 4), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 4 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_4(2x + 4) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x + 4 = 4^2.\n'
                    'So, 2x + 4 = 16.\n'
                    'Therefore, 2x = 12 and x = 12 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 6.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nGiven the function f(x) = e^(3x), find the value of x when f(x) = 148.413.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 148.413.\n'
                    'So, we have e^(3x) = 148.413.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 3x = ln(148.413).\n'
                    'So, x = ln(148.413) / 3.\n\n'
                    'Final Answer: The value of x when f(x) = 148.413 is approximately x ≈ 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nGiven the function f(x) = 10^(x - 2), find the value of x when f(x) = 0.01.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 10 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.01.\n'
                    'So, we have 10^(x - 2) = 0.01.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 0.01 as 10^(-2), we have 10^(x - 2) = 10^(-2).\n'
                    'So, x - 2 = -2.\n'
                    'Therefore, x = 0.\n\n'
                    'Final Answer: The value of x when f(x) = 0.01 is x = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nGiven the function f(x) = log_10(5x + 6), find the value of x when f(x) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 10 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 3.\n'
                    'So, we have log_10(5x + 6) = 3.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 5x + 6 = 10^3.\n'
                    'So, 5x + 6 = 1000.\n'
                    'Therefore, 5x = 994 and x = 994 / 5.\n\n'
                    'Final Answer: The value of x when f(x) = 3 is x = 198.8.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nGiven the function f(x) = ln(x - 4), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 4) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 4 = e^0.\n'
                    'So, x - 4 = 1.\n'
                    'Therefore, x = 5.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nGiven the function f(x) = log_5(3x + 5), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 5 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_5(3x + 5) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 3x + 5 = 5^2.\n'
                    'So, 3x + 5 = 25.\n'
                    'Therefore, 3x = 20 and x = 20 / 3.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is approximately x ≈ 6.67.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nGiven the function f(x) = e^(4x), find the value of x when f(x) = 54.598.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 54.598.\n'
                    'So, we have e^(4x) = 54.598.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 4x = ln(54.598).\n'
                    'So, x = ln(54.598) / 4.\n\n'
                    'Final Answer: The value of x when f(x) = 54.598 is approximately x ≈ 1.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nGiven the function f(x) = 5^(x - 3), find the value of x when f(x) = 0.008.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 5 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.008.\n'
                    'So, we have 5^(x - 3) = 0.008.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 0.008 as 5^(-3), we have 5^(x - 3) = 5^(-3).\n'
                    'So, x - 3 = -3.\n'
                    'Therefore, x = 0.\n\n'
                    'Final Answer: The value of x when f(x) = 0.008 is x = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nGiven the function f(x) = log_5(4x + 6), find the value of x when f(x) = 1.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 5 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 1.\n'
                    'So, we have log_5(4x + 6) = 1.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 4x + 6 = 5^1.\n'
                    'So, 4x + 6 = 5.\n'
                    'Therefore, 4x = -1 and x = -1 / 4.\n\n'
                    'Final Answer: The value of x when f(x) = 1 is x = -0.25.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nGiven the function f(x) = ln(x - 2), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 2) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 2 = e^0.\n'
                    'So, x - 2 = 1.\n'
                    'Therefore, x = 3.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 3.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nGiven the function f(x) = log_2(3x + 4), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 2 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_2(3x + 4) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 3x + 4 = 2^2.\n'
                    'So, 3x + 4 = 4.\n'
                    'Therefore, 3x = 0 and x = 0.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nGiven the function f(x) = e^(5x), find the value of x when f(x) = 148.413.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 148.413.\n'
                    'So, we have e^(5x) = 148.413.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 5x = ln(148.413).\n'
                    'So, x = ln(148.413) / 5.\n\n'
                    'Final Answer: The value of x when f(x) = 148.413 is approximately x ≈ 1.6.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nGiven the function f(x) = 7^(x - 2), find the value of x when f(x) = 0.0001.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 7 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.0001.\n'
                    'So, we have 7^(x - 2) = 0.0001.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 0.0001 as 7^(-4), we have 7^(x - 2) = 7^(-4).\n'
                    'So, x - 2 = -4.\n'
                    'Therefore, x = -2.\n\n'
                    'Final Answer: The value of x when f(x) = 0.0001 is x = -2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nGiven the function f(x) = log_7(2x + 5), find the value of x when f(x) = 3.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 7 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 3.\n'
                    'So, we have log_7(2x + 5) = 3.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x + 5 = 7^3.\n'
                    'So, 2x + 5 = 343.\n'
                    'Therefore, 2x = 338 and x = 338 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 3 is x = 169.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nGiven the function f(x) = ln(x - 1), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 1) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 1 = e^0.\n'
                    'So, x - 1 = 1.\n'
                    'Therefore, x = 2.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 2.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nGiven the function f(x) = log_6(3x + 2), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 6 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_6(3x + 2) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 3x + 2 = 6^2.\n'
                    'So, 3x + 2 = 36.\n'
                    'Therefore, 3x = 34 and x = 34 / 3.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is approximately x ≈ 11.33.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nGiven the function f(x) = e^(6x), find the value of x when f(x) = 403.429.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural exponential function.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 403.429.\n'
                    'So, we have e^(6x) = 403.429.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the natural logarithm to solve, we have 6x = ln(403.429).\n'
                    'So, x = ln(403.429) / 6.\n\n'
                    'Final Answer: The value of x when f(x) = 403.429 is approximately x ≈ 1.8.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nGiven the function f(x) = 8^(x - 3), find the value of x when f(x) = 0.125.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is an exponential function with base 8 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.125.\n'
                    'So, we have 8^(x - 3) = 0.125.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Rewriting 0.125 as 8^(-3), we have 8^(x - 3) = 8^(-3).\n'
                    'So, x - 3 = -3.\n'
                    'Therefore, x = 0.\n\n'
                    'Final Answer: The value of x when f(x) = 0.125 is x = 0.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nGiven the function f(x) = log_8(2x + 7), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 8 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_8(2x + 7) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 2x + 7 = 8^2.\n'
                    'So, 2x + 7 = 64.\n'
                    'Therefore, 2x = 57 and x = 57 / 2.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 28.5.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nGiven the function f(x) = ln(x - 3), find the value of x when f(x) = 0.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the natural logarithm function with a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 0.\n'
                    'So, we have ln(x - 3) = 0.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have x - 3 = e^0.\n'
                    'So, x - 3 = 1.\n'
                    'Therefore, x = 4.\n\n'
                    'Final Answer: The value of x when f(x) = 0 is x = 4.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nGiven the function f(x) = log_3(4x + 5), find the value of x when f(x) = 2.',
                solution: 'Solution:\n\n'
                    'Step 1: Understand the function:\n\n'
                    'The given function is the logarithm function with base 3 and a shifted graph.\n\n'
                    'Step 2: Set up the equation:\n\n'
                    'We want to find x such that f(x) = 2.\n'
                    'So, we have log_3(4x + 5) = 2.\n\n'
                    'Step 3: Solve for x:\n\n'
                    'Using the properties of logarithms, we have 4x + 5 = 3^2.\n'
                    'So, 4x + 5 = 9.\n'
                    'Therefore, 4x = 4 and x = 4 / 4.\n\n'
                    'Final Answer: The value of x when f(x) = 2 is x = 1.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
