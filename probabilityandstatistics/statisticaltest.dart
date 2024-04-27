import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class StatisticalTest extends StatelessWidget {
  final Color chosenColor;
  StatisticalTest ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistical Tests and Hypothesis Testing'),
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
                'Statistical Tests and Hypothesis Testing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Statistical Tests and Hypothesis Testing are crucial tools used to make inferences about populations based on sample data. These tests allow researchers to determine whether observed differences or relationships in data are statistically significant or simply due to random chance.\n\nHere`s a brief overview of statistical tests and hypothesis testing:\n\n1. Statistical Tests: Statistical tests are procedures used to make decisions about a population parameter based on sample data. These tests help determine whether there is enough evidence to reject or fail to reject a null hypothesis.\n\n2. Hypothesis Testing: Hypothesis testing is a formal procedure for evaluating two competing hypotheses about a population parameter. The process involves:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Formulating hypotheses: This step involves stating a null hypothesis (H0) and an alternative hypothesis (H1 or Ha).\n\nChoosing a significance level: The significance level (α) is the probability of rejecting the null hypothesis when it is true. Common significance levels include 0.05 and 0.01.\n\nCollecting data and computing a test statistic: Data is collected from a sample, and a test statistic is computed based on the sample data and the hypothesized population parameter.\n\nMaking a decision: The decision is made by comparing the test statistic to a critical value or by calculating a p-value. If the test statistic falls in the critical region (or if the p-value is less than the significance level), the null hypothesis is rejected in favor of the alternative hypothesis. Otherwise, the null hypothesis is not rejected.',
                style: TextStyle(fontSize: 16),
              ),SizedBox(height: 10),
              Text(
                '3. Types of Statistical Tests: There are various types of statistical tests, each suited for different types of data and research questions. Some common statistical tests include:\n\nParametric tests: These tests assume that the data follow a specific probability distribution (e.g., normal distribution) and involve population parameters (e.g., means, variances).\n\nNon-parametric tests: These tests are distribution-free and make fewer assumptions about the population.\n\nT-tests: Used to compare means between two groups.\n\nANOVA (Analysis of Variance): Used to compare means across multiple groups.\n\nChi-square tests: Used for categorical data analysis.\n\nRegression analysis: Used to assess relationships between variables.\n\nCorrelation analysis: Used to measure the strength and direction of the relationship between two variables.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Example:\n\nA manufacturing company produces light bulbs, and the average lifespan of these bulbs is claimed to be 1000 hours. However, the quality control department suspects that the actual average lifespan may be different. To test this claim, they take a random sample of 50 light bulbs and measure their lifespans. The sample mean is found to be 980 hours with a standard deviation of 50 hours. Perform a hypothesis test at a significance level of 0.05 to determine if there is sufficient evidence to reject the company`s claim.\n\nSolution:\n\nStep 1: Formulate hypotheses:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Null Hypothesis (H0): The average lifespan of the light bulbs is 1000 hours. (μ = 1000)\n\nAlternative Hypothesis (H1): The average lifespan of the light bulbs is different from 1000 hours. (μ ≠ 1000)\n\nStep 2: Choose significance level (α):\n\nα = 0.05\n\nStep 3: Compute the test statistic:\n\nWe will use the formula for the t-statistic:\n\nt = xˉ−μ/8/√n\n\nwhere\n\nˉ is the sample mean (980 hours)\n\nμ is the hypothesized population mean (1000 hours)\n\ns is the sample standard deviation (50 hours)\n\nn is the sample size (50 bulbs)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Substituting the given values:\n\nt= 980-1000/50/√50\n\nt= -20/50√50\n\nt≈−2.83\n\nStep 4: Determine the degrees of freedom (df):\n\nDegrees of freedom (df) for a one-sample t-test is n−1=50−1=49.\n\nStep 5: Determine the critical value or p-value:\n\nWe`ll use a two-tailed test, so the critical values for a significance level of 0.05 and 49 degrees of freedom are approximately ±2.009 from the t-distribution table.\n\nStep 6: Make a decision:\n\nSince the absolute value of our calculated t-statistic (2.83) is greater than the critical value (2.009) for a two-tailed test, we reject the null hypothesis.\n\nStep 7: Interpret the results:\n\nThere is sufficient evidence to conclude that the average lifespan of the light bulbs is different from 1000 hours at a significance level of 0.05.\n\n\n\nThis example demonstrates how to perform a hypothesis test for the mean and interpret the results based on the calculated test statistic and critical value.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Hypothesis Testing\n\n'
                    'A pharmaceutical company claims that the mean concentration '
                    'of a drug in its medication is 20 mg/mL. To test this claim, '
                    'a random sample of 25 medication doses is selected, and their '
                    'concentrations are measured. The sample mean is 19.5 mg/mL '
                    'with a standard deviation of 2 mg/mL. At a significance level '
                    'of 0.05, can we conclude that the mean concentration of the '
                    'drug is different from 20 mg/mL?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The mean concentration of the drug is 20 mg/mL. (μ = 20)\n'
                    '- Alternative Hypothesis (H1): The mean concentration of the drug is different from 20 mg/mL. (μ ≠ 20)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- z = (x̄ - μ0) / (σ / √n)\n'
                    'Where:\n'
                    '  x̄ is the sample mean,\n'
                    '  μ0 is the hypothesized population mean under the null hypothesis,\n'
                    '  σ is the population standard deviation,\n'
                    '  n is the sample size.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05, the critical values for a two-tailed test from the standard normal distribution table are approximately -1.96 and 1.96.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical values, or p-value, we conclude that the mean concentration of the drug is not significantly different from 20 mg/mL at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Hypothesis Testing\n\n'
                    'An airline claims that the mean arrival time of its flights '
                    'is 15 minutes. To test this claim, a random sample of 30 '
                    'flights is selected, and their arrival times are recorded. '
                    'The sample mean arrival time is 14.8 minutes with a standard '
                    'deviation of 1.5 minutes. At a significance level of 0.01, '
                    'can we conclude that the mean arrival time of the flights '
                    'is less than 15 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The mean arrival time of the flights is 15 minutes. (μ = 15)\n'
                    '- Alternative Hypothesis (H1): The mean arrival time of the flights is less than 15 minutes. (μ < 15)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.01\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- z = (x̄ - μ0) / (σ / √n)\n'
                    'Where:\n'
                    '  x̄ is the sample mean,\n'
                    '  μ0 is the hypothesized population mean under the null hypothesis,\n'
                    '  σ is the population standard deviation,\n'
                    '  n is the sample size.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.01, the critical value for a one-tailed test from the standard normal distribution table is approximately -2.33.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls below the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we conclude that the mean arrival time of the flights is less than 15 minutes at a significance level of 0.01.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: One-Sample z-test\n\n'
                    'A car manufacturer claims that the average fuel efficiency of its new hybrid model '
                    'is at least 50 miles per gallon (mpg). A sample of 100 vehicles is tested, and '
                    'the average fuel efficiency is found to be 48 mpg with a standard deviation of 5 mpg. '
                    'Perform a one-sample z-test to determine if the manufacturer\'s claim is supported by the data.',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The average fuel efficiency of the hybrid model is 50 mpg or higher. (μ ≥ 50)\n'
                    '- Alternative Hypothesis (H1): The average fuel efficiency of the hybrid model is less than 50 mpg. (μ < 50)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Calculate the z-statistic using the formula: z = (x̄ - μ0) / (σ / √n)\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- Look up the critical value from the standard normal distribution table or calculate the p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is less than the critical value or if the p-value is less than α, reject the null hypothesis.\n'
                    '- Otherwise, fail to reject the null hypothesis.\n'
                    'Final Answer: Based on the results of the one-sample z-test, we conclude whether the manufacturer\'s claim is supported by the data.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Two-Sample t-test\n\n'
                    'A study is conducted to compare the mean exam scores of two groups of students '
                    'who received different teaching methods. Group A consists of 30 students taught '
                    'with Method 1, and Group B consists of 25 students taught with Method 2. The mean '
                    'exam score for Group A is 85 with a standard deviation of 8, while the mean exam score '
                    'for Group B is 82 with a standard deviation of 7. Perform a two-sample t-test to '
                    'determine if there is a significant difference in the mean exam scores between the two groups.',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in mean exam scores between the two teaching methods. (μ1 = μ2)\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in mean exam scores between the two teaching methods. (μ1 ≠ μ2)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Calculate the pooled standard deviation and the t-statistic.\n\n'
                    'Step 4: Determine the degrees of freedom and the critical value or p-value:\n'
                    '- Look up the critical value from the t-distribution table or calculate the p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic exceeds the critical value or if the p-value is less than α, reject the null hypothesis.\n'
                    '- Otherwise, fail to reject the null hypothesis.\n'
                    'Final Answer: Based on the results of the two-sample t-test, we conclude whether there is a significant difference in mean exam scores between the two teaching methods.',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: One-Sample t-test\n\n'
                    'A teacher believes that the average score of her students on a math test '
                    'is 75. To test this claim, she takes a random sample of 30 students and '
                    'records their scores. The sample mean is 72 with a standard deviation of '
                    '5. At a significance level of 0.01, can she conclude that the average score '
                    'is different from 75?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The average score of the students is 75. (μ = 75)\n'
                    '- Alternative Hypothesis (H1): The average score of the students is different from 75. (μ ≠ 75)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.01\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- t = (x̄ - μ0) / (s / √n)\n'
                    'Where:\n'
                    '  x̄ is the sample mean,\n'
                    '  μ0 is the hypothesized population mean under the null hypothesis,\n'
                    '  s is the sample standard deviation,\n'
                    '  n is the sample size.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.01 and degrees of freedom (df) = n - 1 = 29, the critical values from the t-distribution table are approximately ±2.761.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical values, or p-value, the teacher cannot conclude that the average score is significantly different from 75 at a significance level of 0.01.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6: Paired t-test\n\n'
                    'A pharmaceutical company is testing a new drug to reduce blood pressure. '
                    'They measure the blood pressure of 20 patients before administering the drug '
                    'and then measure it again after the treatment. The results are as follows:\n'
                    'Before: [135, 138, 142, 130, 127, 140, 134, 139, 132, 136, 145, 137, 128, 133, 129, 143, 131, 144, 141, 126]\n'
                    'After: [130, 135, 138, 127, 124, 137, 131, 136, 128, 133, 142, 134, 125, 130, 126, 139, 127, 140, 138, 123]\n'
                    'At a significance level of 0.05, is there a significant difference in blood pressure before and after the treatment?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in blood pressure before and after the treatment. (μd = 0)\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in blood pressure before and after the treatment. (μd ≠ 0)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- t = (x̄d - μd) / (s / √n)\n'
                    'Where:\n'
                    '  x̄d is the mean of the differences between paired observations,\n'
                    '  μd is the hypothesized mean difference under the null hypothesis,\n'
                    '  s is the sample standard deviation of the differences,\n'
                    '  n is the number of pairs.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = n - 1 = 19, the critical values from the t-distribution table are approximately ±2.093.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical values, or p-value, we reject the null hypothesis and conclude that there is a significant difference in blood pressure before and after the treatment at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7: One-Way ANOVA\n\n'
                    'A researcher wants to compare the effectiveness of three different teaching methods '
                    'in improving students\' performance in a standardized test. They select random samples '
                    'of students and assign them to three groups: Group A, Group B, and Group C. After '
                    'implementing the teaching methods, they record the test scores of each group as follows:\n\n'
                    'Group A: [85, 88, 92, 78, 90, 82, 87, 86, 89, 84]\n'
                    'Group B: [80, 84, 88, 79, 82, 85, 81, 83, 87, 86]\n'
                    'Group C: [75, 79, 83, 76, 78, 80, 77, 82, 81, 84]\n\n'
                    'At a significance level of 0.05, is there a significant difference in the mean test scores '
                    'of the three teaching methods?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in the mean test scores of the three teaching methods. (μ1 = μ2 = μ3)\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in the mean test scores of the three teaching methods. (At least one mean is different)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- F = (MSbetween / MSwithin)\n'
                    'Where:\n'
                    '  MSbetween is the mean square between groups,\n'
                    '  MSwithin is the mean square within groups.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05, degrees of freedom (dfbetween) = k - 1 = 3 - 1 = 2 and degrees of freedom (dfwithin) = N - k = 30 - 3 = 27, '
                    'the critical value from the F-distribution table is approximately 3.354.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in the mean test scores of the three teaching methods at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8: Chi-Square Test for Independence\n\n'
                    'A researcher wants to investigate whether there is a relationship between gender '
                    'and preference for a certain type of food. They survey a random sample of 200 individuals '
                    'and record their gender (Male/Female) and food preference (Type A/Type B). The results '
                    'are summarized in the following table:\n\n'
                    '|          | Type A | Type B | Total |\n'
                    '|----------|--------|--------|-------|\n'
                    '| Male     |   50   |   30   |   80  |\n'
                    '| Female   |   40   |   80   |  120  |\n'
                    '| Total    |   90   |  110   |  200  |\n\n'
                    'At a significance level of 0.05, is there a significant relationship between gender and food preference?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant relationship between gender and food preference.\n'
                    '- Alternative Hypothesis (H1): There is a significant relationship between gender and food preference.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the chi-square formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = (number of rows - 1) * (number of columns - 1) = (2 - 1) * (2 - 1) = 1, '
                    'the critical value from the chi-square distribution table is approximately 3.841.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant relationship between gender and food preference at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9: Mann-Whitney U Test\n\n'
                    'A researcher wants to compare the effectiveness of two different training methods '
                    'in improving employees\' performance. They conduct a study where employees are randomly '
                    'assigned to either Training Method A or Training Method B. After the training, they '
                    'measure the performance scores of the employees. The results are as follows:\n\n'
                    'Training Method A: [85, 88, 92, 78, 90, 82, 87, 86, 89, 84]\n'
                    'Training Method B: [80, 84, 88, 79, 82, 85, 81, 83, 87, 86]\n\n'
                    'At a significance level of 0.05, is there a significant difference in the performance scores '
                    'of employees trained with Method A compared to Method B?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in the performance scores of employees trained with Method A compared to Method B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in the performance scores of employees trained with Method A compared to Method B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Mann-Whitney U test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and based on the sample sizes and ranks, use the Mann-Whitney U table to find the critical value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is less than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in the performance scores of employees trained with Method A compared to Method B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10: Kruskal-Wallis Test\n\n'
                    'A researcher wants to compare the effectiveness of three different treatments '
                    'in reducing pain levels among patients with chronic back pain. They randomly '
                    'assign patients to one of the three treatment groups: Group X, Group Y, and '
                    'Group Z. After the treatment period, patients rate their pain levels on a scale '
                    'from 1 to 10, with 10 being the highest pain level. The results are as follows:\n\n'
                    'Group X: [8, 6, 7, 7, 9, 5, 6, 8, 6, 7]\n'
                    'Group Y: [7, 5, 6, 5, 8, 4, 5, 6, 5, 7]\n'
                    'Group Z: [6, 4, 5, 4, 7, 3, 4, 5, 4, 6]\n\n'
                    'At a significance level of 0.05, is there a significant difference in pain levels '
                    'among the three treatment groups?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in pain levels among the three treatment groups.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in pain levels among the three treatment groups.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Kruskal-Wallis test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'the critical value from the chi-square distribution table is approximately 5.991.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in pain levels among the three treatment groups at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11: Chi-Square Goodness of Fit Test\n\n'
                    'A researcher wants to determine whether the distribution of blood types '
                    'in a population follows the expected distribution based on national data. '
                    'The expected distribution of blood types is as follows:\n\n'
                    'Blood Type A: 40%\n'
                    'Blood Type B: 30%\n'
                    'Blood Type O: 20%\n'
                    'Blood Type AB: 10%\n\n'
                    'The researcher collects data from a sample of 200 individuals and finds '
                    'the following distribution of blood types:\n\n'
                    'Blood Type A: 80\n'
                    'Blood Type B: 60\n'
                    'Blood Type O: 40\n'
                    'Blood Type AB: 20\n\n'
                    'At a significance level of 0.05, is there a significant difference between '
                    'the observed and expected distributions of blood types?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The observed distribution of blood types is consistent with the expected distribution.\n'
                    '- Alternative Hypothesis (H1): The observed distribution of blood types is different from the expected distribution.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the chi-square goodness of fit test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 4 - 1 = 3, '
                    'the critical value from the chi-square distribution table is approximately 7.815.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference between the observed and expected distributions of blood types at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12: McNemar Test\n\n'
                    'A researcher wants to evaluate whether there is a significant difference '
                    'in the effectiveness of two different treatments for a medical condition. '
                    'They collect data from 50 patients who received both treatments at different '
                    'times and record whether each treatment was successful or not. The results '
                    'are summarized in the following table:\n\n'
                    '|                | Treatment A Success | Treatment A Failure |\n'
                    '|----------------|---------------------|---------------------|\n'
                    '| Treatment B Success |          20           |            5            |\n'
                    '| Treatment B Failure |          7             |          18            |\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in the effectiveness of the two treatments?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in the effectiveness of the two treatments.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in the effectiveness of the two treatments.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the McNemar test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = 1, '
                    'the critical value from the chi-square distribution table is approximately 3.841.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in the effectiveness of the two treatments at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13: Friedman Test\n\n'
                    'A researcher wants to compare the performance of three different algorithms '
                    'in solving a particular computational problem. They conduct an experiment '
                    'where each algorithm is tested on the same set of instances, and the time '
                    'taken to solve each instance is recorded. The results for 10 instances '
                    'are as follows:\n\n'
                    'Algorithm 1: [20, 25, 18, 22, 24, 19, 21, 23, 27, 26]\n'
                    'Algorithm 2: [23, 27, 21, 24, 26, 22, 25, 29, 28, 30]\n'
                    'Algorithm 3: [25, 30, 24, 28, 29, 23, 26, 31, 32, 27]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in the performance of the three algorithms?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in the performance of the three algorithms.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in the performance of the three algorithms.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Friedman test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'the critical value from the chi-square distribution table is approximately 5.991.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in the performance of the three algorithms at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14: Paired t-test\n\n'
                    'A researcher wants to determine whether a new teaching method improves '
                    'students\' performance in a subject. They collect test scores from 20 '
                    'students before and after implementing the new teaching method. The '
                    'results are as follows:\n\n'
                    'Before: [78, 82, 75, 79, 80, 77, 81, 76, 79, 82, 74, 78, 80, 75, 77, 79, 81, 76, 78, 80]\n'
                    'After: [82, 85, 79, 83, 84, 81, 84, 80, 82, 85, 77, 81, 83, 78, 80, 82, 84, 79, 81, 83]\n\n'
                    'At a significance level of 0.05, is there a significant improvement '
                    'in students\' performance after implementing the new teaching method?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant improvement in students\' performance after implementing the new teaching method. (μ_before = μ_after)\n'
                    '- Alternative Hypothesis (H1): There is a significant improvement in students\' performance after implementing the new teaching method. (μ_before < μ_after)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the paired t-test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = n - 1 = 20 - 1 = 19, '
                    'the critical value from the t-distribution table is approximately -1.729.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant improvement in students\' performance after implementing the new teaching method at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15: Two-Sample t-test for Independent Samples\n\n'
                    'A company wants to test whether there is a significant difference '
                    'in the productivity of two departments (Department A and Department B). '
                    'They collect productivity data from a random sample of employees '
                    'from each department. The results are as follows:\n\n'
                    'Department A: [45, 50, 42, 48, 55, 47, 51, 44, 49, 46]\n'
                    'Department B: [40, 43, 38, 41, 48, 42, 44, 39, 46, 43]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in productivity between the two departments?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in productivity between Department A and Department B. (μ_A = μ_B)\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in productivity between Department A and Department B. (μ_A ≠ μ_B)\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the two-sample t-test formula for independent samples to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = n1 + n2 - 2 = 10 + 10 - 2 = 18, '
                    'the critical value from the t-distribution table is approximately ±2.101.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in productivity between Department A and Department B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16: Analysis of Variance (ANOVA)\n\n'
                    'A researcher wants to determine whether there is a significant difference '
                    'in the average scores of students from three different schools (School A, '
                    'School B, and School C). They collect test scores from a random sample '
                    'of students from each school. The results are as follows:\n\n'
                    'School A: [80, 85, 78, 82, 87, 81, 83, 79, 86, 84]\n'
                    'School B: [75, 79, 82, 76, 80, 77, 81, 78, 83, 79]\n'
                    'School C: [70, 72, 68, 73, 71, 75, 74, 69, 76, 72]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in the average scores of students from the three schools?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in the average scores of students from the three schools. (μ_A = μ_B = μ_C)\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in the average scores of students from the three schools.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the ANOVA test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'the critical value from the F-distribution table is approximately 3.885.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in the average scores of students from the three schools at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17: Chi-Square Test of Independence\n\n'
                    'A survey was conducted to study the relationship between gender and '
                    'voting preference in an election. A sample of 200 voters was selected, '
                    'and they were asked about their voting preference (Candidate A or Candidate B) '
                    'and their gender (Male or Female). The results are summarized in the table below:\n\n'
                    '|                 | Candidate A | Candidate B |\n'
                    '|-----------------|-------------|-------------|\n'
                    '| Male            |      70     |      30     |\n'
                    '| Female          |      60     |      40     |\n\n'
                    'At a significance level of 0.05, is there a significant relationship '
                    'between gender and voting preference?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant relationship between gender and voting preference.\n'
                    '- Alternative Hypothesis (H1): There is a significant relationship between gender and voting preference.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the chi-square test of independence formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = (r - 1) * (c - 1) = 1 * 1 = 1, '
                    'the critical value from the chi-square distribution table is approximately 3.841.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant relationship between gender and voting preference at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18: Mann-Whitney U Test\n\n'
                    'A researcher wants to compare the effectiveness of two different study '
                    'methods (Method A and Method B) in improving students\' test scores. '
                    'They collect test scores from two groups of students: one group using Method A '
                    'and the other group using Method B. The results are as follows:\n\n'
                    'Method A: [75, 80, 70, 78, 82, 76, 73, 79, 81, 77]\n'
                    'Method B: [80, 82, 85, 76, 78, 84, 79, 81, 83, 77]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in test scores between the two study methods?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in test scores between Method A and Method B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in test scores between Method A and Method B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Mann-Whitney U test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05, consult the Mann-Whitney U test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in test scores between Method A and Method B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19: Kruskal-Wallis Test\n\n'
                    'A researcher wants to compare the effectiveness of four different '
                    'types of fertilizers (Fertilizer A, B, C, and D) in promoting plant growth. '
                    'They conduct an experiment where each fertilizer is applied to a random '
                    'sample of plants, and the growth rates are measured after a certain period. '
                    'The growth rates (in cm) for each fertilizer are as follows:\n\n'
                    'Fertilizer A: [10, 12, 11, 9, 13, 11, 12, 10, 13, 12]\n'
                    'Fertilizer B: [11, 10, 12, 9, 10, 11, 10, 12, 11, 10]\n'
                    'Fertilizer C: [9, 8, 10, 7, 9, 8, 10, 9, 8, 10]\n'
                    'Fertilizer D: [12, 13, 11, 14, 12, 13, 11, 14, 12, 13]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in plant growth rates among the four fertilizers?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in plant growth rates among the four fertilizers.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in plant growth rates among the four fertilizers.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Kruskal-Wallis test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 4 - 1 = 3, '
                    'consult the Kruskal-Wallis critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in plant growth rates among the four fertilizers at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20: Wilcoxon Signed-Rank Test\n\n'
                    'A researcher wants to determine whether there is a significant difference '
                    'in the reaction times of participants before and after a training program. '
                    'They collect reaction time data from a sample of participants both before '
                    'and after the training program. The results are as follows:\n\n'
                    'Before: [42, 38, 40, 45, 41, 39, 43, 44, 42, 39]\n'
                    'After: [38, 36, 37, 41, 39, 37, 40, 42, 39, 37]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in reaction times before and after the training program?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in reaction times before and after the training program.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in reaction times before and after the training program.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Wilcoxon signed-rank test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05, consult the Wilcoxon signed-rank test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in reaction times before and after the training program at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21: Chi-Square Goodness of Fit Test\n\n'
                    'A genetics researcher wants to determine whether the observed ratios '
                    'of different genotypes in a population match the expected ratios based '
                    'on Mendelian genetics. They collect data on the genotypes of 300 individuals '
                    'and compare them to the expected ratios. The results are as follows:\n\n'
                    'Observed: AA - 120, Aa - 140, aa - 40\n'
                    'Expected: AA - 100, Aa - 150, aa - 50\n\n'
                    'At a significance level of 0.05, do the observed and expected ratios '
                    'differ significantly?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference between the observed and expected ratios.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference between the observed and expected ratios.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the chi-square goodness of fit test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'consult the chi-square distribution table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference between the observed and expected ratios at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22: Paired t-test\n\n'
                    'A psychologist wants to investigate whether a new therapy technique '
                    'is effective in reducing anxiety levels among patients. They select '
                    'a sample of 20 patients and measure their anxiety levels before and '
                    'after receiving the therapy. The results are as follows (anxiety scores):\n\n'
                    'Before: [60, 65, 70, 55, 62, 58, 63, 67, 59, 61, 64, 68, 57, 66, 54, 60, 62, 56, 65, 58]\n'
                    'After: [50, 55, 60, 45, 52, 48, 53, 57, 49, 51, 54, 58, 47, 56, 44, 50, 52, 46, 55, 48]\n\n'
                    'At a significance level of 0.05, is there a significant reduction '
                    'in anxiety levels after receiving the therapy?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant reduction in anxiety levels after receiving the therapy.\n'
                    '- Alternative Hypothesis (H1): There is a significant reduction in anxiety levels after receiving the therapy.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the paired t-test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = n - 1 = 20 - 1 = 19, '
                    'consult the t-distribution table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant reduction in anxiety levels after receiving the therapy at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23: McNemar\'s Test\n\n'
                    'A researcher wants to determine whether there is a significant change '
                    'in students\' performance before and after implementing a new teaching method. '
                    'They collect data from a sample of 50 students who took a pre-test '
                    'and post-test. The results are as follows:\n\n'
                    'Pre-test: Pass - 35, Fail - 15\n'
                    'Post-test: Pass - 40, Fail - 10\n\n'
                    'At a significance level of 0.05, is there a significant improvement '
                    'in students\' performance after implementing the new teaching method?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant improvement in students\' performance after implementing the new teaching method.\n'
                    '- Alternative Hypothesis (H1): There is a significant improvement in students\' performance after implementing the new teaching method.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the McNemar\'s test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05, consult the McNemar\'s test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant improvement in students\' performance after implementing the new teaching method at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24: Friedman Test\n\n'
                    'A researcher wants to compare the performance of three different '
                    'algorithms (Algo A, Algo B, and Algo C) in solving a computational problem. '
                    'They conduct an experiment where each algorithm is tested on the same set '
                    'of problems, and the performance scores are recorded. The results are as follows:\n\n'
                    'Algo A: [80, 75, 85, 70, 75]\n'
                    'Algo B: [85, 70, 75, 80, 75]\n'
                    'Algo C: [70, 80, 75, 85, 80]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in performance among the three algorithms?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in performance among the three algorithms.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in performance among the three algorithms.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Friedman test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'consult the Friedman test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in performance among the three algorithms at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25: Anderson-Darling Test\n\n'
                    'A quality control engineer wants to assess whether the lifetimes of '
                    'a certain type of electronic component follow a specific distribution. '
                    'They collect data on the lifetimes of 50 components and perform the '
                    'Anderson-Darling goodness-of-fit test. The results indicate a test statistic '
                    'of 1.8 and a critical value at a significance level of 0.05 of 0.78. '
                    'At a significance level of 0.05, do the lifetimes of the components '
                    'follow the specified distribution?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The lifetimes of the components follow the specified distribution.\n'
                    '- Alternative Hypothesis (H1): The lifetimes of the components do not follow the specified distribution.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given critical value = 0.78, compare it with the test statistic.\n\n'
                    'Step 4: Make a decision:\n'
                    '- If the test statistic is greater than the critical value, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Since the test statistic (1.8) is greater than the critical value (0.78), we reject the null hypothesis. Therefore, the lifetimes of the components do not follow the specified distribution at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26: Spearman\'s Rank Correlation Test\n\n'
                    'A researcher wants to assess the correlation between the number of hours '
                    'spent studying and the exam scores of a group of students. They collect '
                    'data from 10 students and record both the number of hours studied and '
                    'the corresponding exam scores. The results are as follows:\n\n'
                    'Hours Studied: [4, 6, 7, 5, 8, 9, 3, 6, 7, 5]\n'
                    'Exam Scores: [70, 80, 85, 75, 90, 92, 65, 78, 82, 72]\n\n'
                    'At a significance level of 0.05, is there a significant correlation '
                    'between the number of hours studied and exam scores?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant correlation between the number of hours studied and exam scores.\n'
                    '- Alternative Hypothesis (H1): There is a significant correlation between the number of hours studied and exam scores.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use Spearman\'s rank correlation coefficient formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = n - 2 = 10 - 2 = 8, '
                    'consult the Spearman\'s rank correlation coefficient table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant correlation between the number of hours studied and exam scores at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27: Log-Rank Test\n\n'
                    'A medical researcher wants to compare the survival times of two different '
                    'treatments (Treatment A and Treatment B) for a specific disease. They '
                    'collect data on the survival times of patients who received each treatment. '
                    'The results are as follows:\n\n'
                    'Treatment A: [20, 25, 30, 35, 40]\n'
                    'Treatment B: [18, 22, 28, 32, 38]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in survival times between the two treatments?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in survival times between Treatment A and Treatment B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in survival times between Treatment A and Treatment B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the log-rank test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = 1, '
                    'consult the log-rank test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in survival times between Treatment A and Treatment B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28: Bartlett\'s Test\n\n'
                    'A researcher wants to determine whether the variances of three different '
                    'groups (Group 1, Group 2, and Group 3) are equal. They collect data from '
                    'each group and perform Bartlett\'s test. The results are as follows:\n\n'
                    'Group 1: [12, 14, 15, 11, 13]\n'
                    'Group 2: [10, 13, 11, 14, 12]\n'
                    'Group 3: [8, 10, 9, 11, 7]\n\n'
                    'At a significance level of 0.05, are the variances of the three groups equal?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The variances of the three groups are equal.\n'
                    '- Alternative Hypothesis (H1): The variances of the three groups are not equal.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use Bartlett\'s test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'consult the Bartlett\'s test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. The variances of the three groups are equal at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29: Wilcoxon Signed-Rank Test\n\n'
                    'A researcher wants to determine whether there is a significant difference '
                    'in the performances of two groups (Group A and Group B) on a specific task. '
                    'They collect data from each group and perform the Wilcoxon signed-rank test. '
                    'The results are as follows:\n\n'
                    'Group A: [25, 28, 30, 22, 24]\n'
                    'Group B: [20, 24, 28, 18, 22]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in performances between Group A and Group B?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in performances between Group A and Group B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in performances between Group A and Group B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Wilcoxon signed-rank test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given degrees of freedom (df) = n - 1 = 5 - 1 = 4, '
                    'consult the Wilcoxon signed-rank test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in performances between Group A and Group B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30: Kruskal-Wallis Test\n\n'
                    'A researcher wants to compare the effectiveness of three different '
                    'teaching methods (Method 1, Method 2, and Method 3) in improving '
                    'students\' test scores. They collect data from students who underwent '
                    'each teaching method and perform the Kruskal-Wallis test. The results are as follows:\n\n'
                    'Method 1: [85, 90, 80, 75, 88]\n'
                    'Method 2: [80, 82, 78, 85, 79]\n'
                    'Method 3: [75, 78, 82, 80, 77]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in test scores among the three teaching methods?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in test scores among the three teaching methods.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in test scores among the three teaching methods.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Kruskal-Wallis test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'consult the Kruskal-Wallis test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in test scores among the three teaching methods at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31: Mann-Whitney U Test\n\n'
                    'A researcher wants to compare the heights of two different groups (Group X and Group Y). '
                    'They collect height data from each group and perform the Mann-Whitney U test. '
                    'The results are as follows:\n\n'
                    'Group X: [160, 165, 170, 175, 180]\n'
                    'Group Y: [155, 158, 163, 168, 172]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in heights between Group X and Group Y?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in heights between Group X and Group Y.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in heights between Group X and Group Y.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Mann-Whitney U test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given sample sizes (n1 = 5, n2 = 5), '
                    'consult the Mann-Whitney U test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in heights between Group X and Group Y at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32: Friedman Test\n\n'
                    'A researcher wants to determine whether there is a significant difference '
                    'in the performances of three different algorithms (Algorithm A, Algorithm B, and Algorithm C) '
                    'on a specific task. They collect performance data from each algorithm '
                    'and perform the Friedman test. The results are as follows:\n\n'
                    'Algorithm A: [85, 90, 80, 75, 88]\n'
                    'Algorithm B: [80, 82, 78, 85, 79]\n'
                    'Algorithm C: [75, 78, 82, 80, 77]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in performances among the three algorithms?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in performances among the three algorithms.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in performances among the three algorithms.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Friedman test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 3 - 1 = 2, '
                    'consult the Friedman test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in performances among the three algorithms at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33: Log-Likelihood Ratio Test\n\n'
                    'A researcher wants to assess whether a new machine learning model '
                    'improves the fit compared to an existing model. They collect data and '
                    'fit both models to the data. Then, they perform the log-likelihood ratio test. '
                    'The results are as follows:\n\n'
                    'Existing Model: Log-Likelihood = -250\n'
                    'New Model: Log-Likelihood = -230\n\n'
                    'At a significance level of 0.01, can the researcher conclude that the '
                    'new model provides a better fit to the data?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The existing model provides an equal or better fit compared to the new model.\n'
                    '- Alternative Hypothesis (H1): The new model provides a better fit compared to the existing model.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.01\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the log-likelihood ratio test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.01 and degrees of freedom (df) = 1, '
                    'consult the chi-square distribution table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that the new model provides a better fit to the data at a significance level of 0.01.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34: ANOVA Test\n\n'
                    'A researcher wants to compare the mean scores of four different groups (Group 1, Group 2, Group 3, and Group 4). '
                    'They collect data from each group and perform the ANOVA test. '
                    'The results are as follows:\n\n'
                    'Group 1: [10, 12, 15, 13, 11]\n'
                    'Group 2: [9, 11, 14, 12, 10]\n'
                    'Group 3: [8, 10, 13, 11, 9]\n'
                    'Group 4: [11, 13, 16, 14, 12]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in mean scores among the four groups?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in mean scores among the four groups.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in mean scores among the four groups.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the ANOVA test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and degrees of freedom (df) = k - 1 = 4 - 1 = 3, '
                    'consult the F-distribution table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is a significant difference in mean scores among the four groups at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35: McNemar\'s Test\n\n'
                    'A researcher wants to compare the effectiveness of two different treatments (Treatment A and Treatment B) '
                    'for a specific condition. They collect data before and after each treatment '
                    'and perform McNemar\'s test. The results are as follows:\n\n'
                    'Before Treatment A: [20, 25, 30, 35, 40]\n'
                    'Before Treatment B: [18, 22, 28, 32, 38]\n'
                    'After Treatment A: [18, 23, 32, 33, 41]\n'
                    'After Treatment B: [19, 20, 30, 35, 40]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in effectiveness between Treatment A and Treatment B?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in effectiveness between Treatment A and Treatment B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in effectiveness between Treatment A and Treatment B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the McNemar\'s test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the contingency table, '
                    'consult the McNemar\'s test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in effectiveness between Treatment A and Treatment B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36: Chi-Square Test of Independence\n\n'
                    'A survey was conducted to assess whether there is an association '
                    'between gender (Male/Female) and favorite sport (Football, Basketball, Tennis). '
                    'The results are as follows:\n\n'
                    '             Football   Basketball   Tennis\n'
                    '    Male         30          25         20\n'
                    '  Female        20          35         25\n\n'
                    'At a significance level of 0.05, is there an association between '
                    'gender and favorite sport?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no association between gender and favorite sport.\n'
                    '- Alternative Hypothesis (H1): There is an association between gender and favorite sport.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the chi-square test of independence formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the contingency table, '
                    'consult the chi-square distribution table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis and conclude that there is an association between gender and favorite sport at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37: Fisher\'s Exact Test\n\n'
                    'A researcher wants to assess the association between smoking status '
                    '(Smoker/Non-Smoker) and the occurrence of a respiratory disease '
                    'in a small sample of individuals. The contingency table is as follows:\n\n'
                    '                   Disease   No Disease\n'
                    '    Smoker            10           20\n'
                    '  Non-Smoker         15           25\n\n'
                    'At a significance level of 0.05, is there an association between '
                    'smoking status and the occurrence of respiratory disease?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no association between smoking status and the occurrence of respiratory disease.\n'
                    '- Alternative Hypothesis (H1): There is an association between smoking status and the occurrence of respiratory disease.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use Fisher\'s exact test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the contingency table, '
                    'consult the Fisher\'s exact test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no association between smoking status and the occurrence of respiratory disease at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38: Kolmogorov-Smirnov Test\n\n'
                    'A researcher wants to test whether a sample of data follows a '
                    'specific probability distribution. They collect the data and '
                    'perform the Kolmogorov-Smirnov test. The results are as follows:\n\n'
                    'Data: [0.1, 0.3, 0.5, 0.7, 0.9]\n'
                    'Hypothesized Distribution: Uniform Distribution [0, 1]\n\n'
                    'At a significance level of 0.05, does the data follow the hypothesized distribution?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The data follows the hypothesized distribution.\n'
                    '- Alternative Hypothesis (H1): The data does not follow the hypothesized distribution.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Kolmogorov-Smirnov test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample size, consult the Kolmogorov-Smirnov test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. The data follows the hypothesized distribution at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39: Runs Test\n\n'
                    'A researcher wants to test whether a sequence of data points exhibits randomness. '
                    'They collect the data and perform the runs test. The results are as follows:\n\n'
                    'Data: [1, 0, 1, 0, 1, 0, 1, 0, 1, 0]\n\n'
                    'At a significance level of 0.05, does the data exhibit randomness?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): The data exhibits randomness.\n'
                    '- Alternative Hypothesis (H1): The data does not exhibit randomness.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the runs test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample size, consult the runs test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. The data exhibits randomness at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40: Mann-Whitney U Test\n\n'
                    'A researcher wants to compare the heights of two different groups (Group X and Group Y). '
                    'They collect height data from each group and perform the Mann-Whitney U test. '
                    'The results are as follows:\n\n'
                    'Group X: [160, 165, 170, 175, 180]\n'
                    'Group Y: [155, 158, 163, 168, 172]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in heights between Group X and Group Y?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in heights between Group X and Group Y.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in heights between Group X and Group Y.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Mann-Whitney U test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given sample sizes (n1 = 5, n2 = 5), '
                    'consult the Mann-Whitney U test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in heights between Group X and Group Y at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41: Wilcoxon Signed-Rank Test\n\n'
                    'A researcher wants to compare the effectiveness of two different teaching methods '
                    'on improving students\' test scores. They collect data before and after each method '
                    'and perform the Wilcoxon Signed-Rank Test. The results are as follows:\n\n'
                    'Before Method A: [75, 80, 70, 85, 90]\n'
                    'After Method A: [80, 85, 75, 90, 95]\n\n'
                    'Before Method B: [70, 75, 65, 80, 85]\n'
                    'After Method B: [75, 80, 70, 85, 90]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in effectiveness between the two teaching methods?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in effectiveness between the two teaching methods.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in effectiveness between the two teaching methods.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Wilcoxon Signed-Rank Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample size, '
                    'consult the Wilcoxon Signed-Rank Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in effectiveness between the two teaching methods at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42: Kruskal-Wallis Test\n\n'
                    'A researcher wants to compare the effectiveness of three different treatments '
                    'on reducing blood pressure levels. They collect data from patients who received '
                    'each treatment and perform the Kruskal-Wallis Test. The results are as follows:\n\n'
                    'Treatment 1: [120, 122, 118, 125, 130]\n'
                    'Treatment 2: [128, 131, 127, 135, 140]\n'
                    'Treatment 3: [115, 118, 112, 120, 125]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in effectiveness among the three treatments?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in effectiveness among the three treatments.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in effectiveness among the three treatments.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Kruskal-Wallis Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the Kruskal-Wallis Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in effectiveness among the three treatments at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43: Spearman\'s Rank Correlation Coefficient\n\n'
                    'A researcher wants to assess the relationship between hours of study '
                    'and exam scores among a group of students. They collect data and '
                    'perform Spearman\'s Rank Correlation Coefficient test. The results are as follows:\n\n'
                    'Hours of Study: [2, 3, 4, 5, 6]\n'
                    'Exam Scores: [60, 65, 70, 75, 80]\n\n'
                    'At a significance level of 0.05, is there a significant correlation '
                    'between hours of study and exam scores?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant correlation between hours of study and exam scores.\n'
                    '- Alternative Hypothesis (H1): There is a significant correlation between hours of study and exam scores.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use Spearman\'s Rank Correlation Coefficient formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample size, '
                    'consult the Spearman\'s Rank Correlation Coefficient critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant correlation between hours of study and exam scores at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44: Pearson\'s Chi-Square Test\n\n'
                    'A researcher wants to assess whether there is an association '
                    'between income level (Low, Medium, High) and education level '
                    '(High School, College, University). They collect data from a sample '
                    'of individuals and perform Pearson\'s Chi-Square Test. The results are as follows:\n\n'
                    '                 High School   College   University\n'
                    '    Low Income       50           30          20\n'
                    '   Medium Income     40           50          40\n'
                    '    High Income      20           40          60\n\n'
                    'At a significance level of 0.05, is there an association '
                    'between income level and education level?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no association between income level and education level.\n'
                    '- Alternative Hypothesis (H1): There is an association between income level and education level.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use Pearson\'s Chi-Square Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the contingency table, '
                    'consult the Pearson\'s Chi-Square Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we reject the null hypothesis. There is an association between income level and education level at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45: ANOVA (Analysis of Variance)\n\n'
                    'A researcher wants to compare the effectiveness of three different teaching methods '
                    'on improving students\' test scores. They collect data from students who underwent '
                    'each teaching method and perform ANOVA. The results are as follows:\n\n'
                    'Teaching Method 1: [70, 75, 80, 85, 90]\n'
                    'Teaching Method 2: [75, 80, 85, 90, 95]\n'
                    'Teaching Method 3: [80, 85, 90, 95, 100]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in effectiveness among the three teaching methods?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in effectiveness among the three teaching methods.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in effectiveness among the three teaching methods.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use ANOVA formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the ANOVA critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in effectiveness among the three teaching methods at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46: Log-Rank Test\n\n'
                    'A medical researcher wants to compare the survival rates of patients '
                    'who received two different treatments (Treatment A and Treatment B) '
                    'for a particular disease. They collect data on the survival times '
                    'of patients from each treatment group and perform the Log-Rank Test. '
                    'The results are as follows:\n\n'
                    'Treatment A: [10, 12, 15, 18, 20, 22, 25, 28, 30]\n'
                    'Treatment B: [8, 11, 14, 16, 19, 21, 24, 27, 29]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in survival rates between Treatment A and Treatment B?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in survival rates between Treatment A and Treatment B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in survival rates between Treatment A and Treatment B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Log-Rank Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the Log-Rank Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in survival rates between Treatment A and Treatment B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47: McNemar\'s Test\n\n'
                    'A researcher wants to assess the effectiveness of a new medication '
                    'for treating a particular condition. They collect data on the condition '
                    'status of patients before and after taking the medication and perform '
                    'McNemar\'s Test. The results are as follows:\n\n'
                    'Before Medication: [Yes, No, No, Yes, Yes, Yes, No, No, Yes, Yes]\n'
                    'After Medication:  [Yes, No, No, Yes, Yes, No, Yes, No, Yes, Yes]\n\n'
                    'At a significance level of 0.05, is there a significant improvement '
                    'in condition status after taking the medication?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant improvement in condition status after taking the medication.\n'
                    '- Alternative Hypothesis (H1): There is a significant improvement in condition status after taking the medication.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the McNemar\'s Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the contingency table, '
                    'consult the McNemar\'s Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant improvement in condition status after taking the medication at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48: Friedman Test\n\n'
                    'A researcher wants to compare the rankings of four different brands '
                    'of a product based on consumer preferences. They collect data '
                    'on consumer rankings of the brands and perform the Friedman Test. '
                    'The results are as follows:\n\n'
                    'Brand 1: [3, 2, 4, 1]\n'
                    'Brand 2: [4, 3, 1, 2]\n'
                    'Brand 3: [2, 4, 3, 1]\n'
                    'Brand 4: [1, 3, 2, 4]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in rankings among the four brands?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in rankings among the four brands.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in rankings among the four brands.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Friedman Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the Friedman Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in rankings among the four brands at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49: Cochran\'s Q Test\n\n'
                    'A researcher wants to assess whether there is a difference '
                    'in the effectiveness of three different treatments (Treatment 1, '
                    'Treatment 2, and Treatment 3) for a specific condition. They collect '
                    'data on the presence or absence of the condition after each treatment '
                    'and perform Cochran\'s Q Test. The results are as follows:\n\n'
                    'Treatment 1: [Absent, Absent, Present, Absent, Absent]\n'
                    'Treatment 2: [Present, Present, Absent, Absent, Present]\n'
                    'Treatment 3: [Absent, Present, Absent, Present, Present]\n\n'
                    'At a significance level of 0.05, is there a difference in effectiveness '
                    'among the three treatments?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no difference in effectiveness among the three treatments.\n'
                    '- Alternative Hypothesis (H1): There is a difference in effectiveness among the three treatments.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Cochran\'s Q Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the Cochran\'s Q Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no difference in effectiveness among the three treatments at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50: Mann-Whitney U Test\n\n'
                    'A researcher wants to compare the effectiveness of two different '
                    'training programs (Program A and Program B) for improving '
                    'employees\' productivity. They collect data on the productivity '
                    'scores of employees who underwent each program and perform '
                    'the Mann-Whitney U Test. The results are as follows:\n\n'
                    'Program A: [10, 12, 15, 18, 20, 22, 25, 28, 30]\n'
                    'Program B: [8, 11, 14, 16, 19, 21, 24, 27, 29]\n\n'
                    'At a significance level of 0.05, is there a significant difference '
                    'in productivity scores between Program A and Program B?',
                solution: 'Solution:\n\n'
                    'Step 1: Formulate hypotheses:\n'
                    '- Null Hypothesis (H0): There is no significant difference in productivity scores between Program A and Program B.\n'
                    '- Alternative Hypothesis (H1): There is a significant difference in productivity scores between Program A and Program B.\n\n'
                    'Step 2: Choose significance level (α):\n'
                    '- α = 0.05\n\n'
                    'Step 3: Compute the test statistic:\n'
                    '- Use the Mann-Whitney U Test formula to compute the test statistic.\n\n'
                    'Step 4: Determine the critical value or p-value:\n'
                    '- With α = 0.05 and given the sample sizes, '
                    'consult the Mann-Whitney U Test critical value table or calculate the exact p-value.\n\n'
                    'Step 5: Make a decision:\n'
                    '- If the computed test statistic falls outside the critical values, reject the null hypothesis.\n'
                    '- If the p-value is less than α, reject the null hypothesis.\n\n'
                    'Final Answer: Based on the calculated test statistic and the critical value, or p-value, we fail to reject the null hypothesis. There is no significant difference in productivity scores between Program A and Program B at a significance level of 0.05.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

