import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class BinomialNormal extends StatelessWidget {
  final Color chosenColor;
  BinomialNormal ({required this.chosenColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Probability Distributions (Binomial, Normal, Poisson)'),
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
                'Probability Distributions (Binomial, Normal, Poisson)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Probability distributions are mathematical functions that describe the likelihood of obtaining different possible outcomes from a random experiment or process. They are fundamental concepts in statistics and probability theory. Three common types of probability distributions are:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Binomial Distribution: The binomial distribution describes the probability of a certain number of successes in a fixed number of independent Bernoulli trials, where each trial has two possible outcomes (usually labeled as success or failure) and the probability of success remains constant across trials.\n\n2. Normal Distribution (Gaussian Distribution): The normal distribution is a continuous probability distribution that is symmetric and bell-shaped. It is characterized by its mean (center) and standard deviation (spread). Many natural phenomena tend to follow a normal distribution, and it is widely used in statistical inference and hypothesis testing.\n\n3. Poisson Distribution: The Poisson distribution is a discrete probability distribution that describes the probability of a given number of events occurring in a fixed interval of time or space, assuming that the events occur with a constant rate and are independent of the time since the last event. It is often used to model the number of occurrences of rare events.\n\n\nThese probability distributions have different formulas and properties, and they are applied in various fields such as economics, engineering, biology, and finance to model real-world phenomena and make predictions or inferences based on data.',
                style: TextStyle(fontSize: 16),
              ),SizedBox(height: 10),
              Text(
                'Example 1: Binomial Distribution',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: Suppose we have a fair coin, and we flip it 10 times. What is the probability of getting exactly 7 heads?',
              ),
              SizedBox(height: 10),
              Text(
                'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10 (we flip the coin 10 times)\n'
                    '- Probability of success (p) = 0.5 (since the coin is fair, the probability of getting heads is 0.5)\n'
                    '- Number of successes (k) = 7 (we want to find the probability of getting 7 heads)\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X = k) = (n choose k) * p^k * (1 - p)^(n - k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting exactly 7 heads when flipping a fair coin 10 times is approximately 0.1172.',
              ),
              SizedBox(height: 20),
              Text(
                'Example 2: Normal Distribution',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: The heights of adult males in a population are normally distributed with a mean of 70 inches and a standard deviation of 3 inches. What is the probability that a randomly selected adult male has a height between 65 and 75 inches?',
              ),
              SizedBox(height: 10),
              Text(
                'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 70 inches\n'
                    '- Standard deviation (σ) = 3 inches\n'
                    '- Lower bound (x₁) = 65 inches\n'
                    '- Upper bound (x₂) = 75 inches\n\n'
                    'Step 2: Standardize the bounds using the Z-score formula:\n'
                    'Z = (x - μ) / σ\n\n'
                    'Step 3: Look up the probabilities associated with the Z-scores from the standard normal distribution table (or use a calculator/software).\n\n'
                    'Step 4: Calculate the probability of the range between the two bounds.\n\n'
                    'Final Answer: The probability that a randomly selected adult male has a height between 65 and 75 inches is approximately 0.905.',
              ),
              SizedBox(height: 20),
              Text(
                'Example 3: Poisson Distribution',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Problem: On average, 5 customers arrive at a store every hour. What is the probability that exactly 3 customers will arrive in the next hour?',
              ),
              SizedBox(height: 10),
              Text(
                'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 5 customers per hour\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 3 customers will arrive in the next hour is approximately 0.1396.',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1: Binomial Distribution\n\n'
                    'Suppose we have a biased coin, and the probability of getting heads '
                    'is 0.3. If we flip the coin 8 times, what is the probability of getting '
                    'exactly 3 heads?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 8 (we flip the coin 8 times)\n'
                    '- Probability of success (p) = 0.3\n'
                    '- Number of successes (k) = 3\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X = k) = (n choose k) * p^k * (1 - p)^(n - k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting exactly 3 heads when flipping the biased coin 8 times is approximately 0.2998.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed '
                    'with a mean of 65 inches and a standard deviation of 4 inches. '
                    'What is the probability that a randomly selected student has a height '
                    'between 60 and 70 inches?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 65 inches\n'
                    '- Standard deviation (σ) = 4 inches\n'
                    '- Lower bound (x₁) = 60 inches\n'
                    '- Upper bound (x₂) = 70 inches\n\n'
                    'Step 2: Standardize the bounds using the Z-score formula:\n'
                    'Z = (x - μ) / σ\n\n'
                    'Step 3: Look up the probabilities associated with the Z-scores from the standard normal distribution table (or use a calculator/software).\n\n'
                    'Step 4: Calculate the probability of the range between the two bounds.\n\n'
                    'Final Answer: The probability that a randomly selected student has a height between 60 and 70 inches is approximately 0.7888.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3: Poisson Distribution\n\n'
                    'On average, 10 cars arrive at a toll booth every 15 minutes. '
                    'What is the probability that exactly 8 cars will arrive in the next 15 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 10 cars per 15 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 8 cars will arrive in the next 15 minutes is approximately 0.1229.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4: Binomial Distribution\n\n'
                    'A multiple-choice test has 10 questions, each with 4 possible answers. '
                    'If a student randomly guesses the answers, what is the probability that '
                    'the student gets at least 8 questions correct?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10 (number of questions)\n'
                    '- Probability of success (p) = 0.25 (probability of guessing the correct answer)\n'
                    '- Number of successes (k) = 8, 9, 10 (we want to find the probability of getting 8 or more questions correct)\n\n'
                    'Step 2: Apply the binomial probability formula for each value of k:\n'
                    'P(X >= k) = ∑(from k to n) [ (n choose k) * p^k * (1 - p)^(n - k) ]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate for each value of k.\n\n'
                    'Final Answer: The probability that the student gets at least 8 questions correct is approximately 0.0547.\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5: Poisson Distribution\n\n'
                    'On average, 2 buses arrive at a bus stop every 20 minutes. '
                    'What is the probability that exactly 4 buses will arrive in the next 40 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 4 buses per 40 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 4 buses will arrive in the next 40 minutes is approximately 0.1954.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6: Binomial Distribution\n\n'
                    'A fair coin is flipped 10 times. What is the probability of getting exactly 7 heads?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 0.5 (for a fair coin)\n'
                    '- Number of successes (k) = 7\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * p^k * (1-p)^(n-k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting exactly 7 heads is approximately 0.1172.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed with a mean of 65 inches and a standard deviation of 3 inches. What is the probability that a randomly selected student is taller than 70 inches?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 65 inches\n'
                    '- Standard deviation (σ) = 3 inches\n'
                    '- Desired height (x) = 70 inches\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student is taller than 70 inches is approximately 0.1587.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8: Poisson Distribution\n\n'
                    'On average, 3 customers arrive at a store every 5 minutes. What is the probability that exactly 5 customers will arrive in the next 10 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 5 customers per 10 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 5 customers will arrive in the next 10 minutes is approximately 0.1755.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9: Binomial Distribution\n\n'
                    'In a multiple-choice test with 10 questions, each question has 4 choices. '
                    'If a student randomly guesses the answers, what is the probability of getting at least 7 correct?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 1/4 (for each question)\n'
                    '- Number of successes (k) = at least 7\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k)\n'
                    '           = 1 - [P(X=0) + P(X=1) + ... + P(X=k-1)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting at least 7 correct is approximately 0.0114.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10: Normal Distribution\n\n'
                    'The weights of apples in a basket are normally distributed with a mean of 150 grams '
                    'and a standard deviation of 10 grams. What is the probability that a randomly selected apple '
                    'weighs between 140 and 160 grams?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 150 grams\n'
                    '- Standard deviation (σ) = 10 grams\n'
                    '- Lower bound (x1) = 140 grams\n'
                    '- Upper bound (x2) = 160 grams\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator '
                    'to find the probability between the two values.\n\n'
                    'Final Answer: The probability that a randomly selected apple weighs between 140 and 160 grams is approximately 0.6827.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11: Poisson Distribution\n\n'
                    'On average, 2 defective items are found in a batch of 100 items. '
                    'What is the probability that exactly 3 defective items will be found in the next batch of 150 items?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 3 defective items per 150 items\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 3 defective items will be found in the next batch of 150 items is approximately 0.1399.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12: Binomial Distribution\n\n'
                    'In a basketball game, a player has a 60% chance of making a free throw. '
                    'If the player attempts 10 free throws, what is the probability of making exactly 7 of them?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 0.6\n'
                    '- Number of successes (k) = 7\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * p^k * (1-p)^(n-k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of making exactly 7 free throws is approximately 0.214990848.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13: Normal Distribution\n\n'
                    'The scores on a standardized test are normally distributed with a mean of 500 '
                    'and a standard deviation of 100. What is the probability that a randomly selected student '
                    'scores below 600 on the test?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 500\n'
                    '- Standard deviation (σ) = 100\n'
                    '- Desired score (x) = 600\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student scores below 600 on the test is approximately 0.841344742.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14: Poisson Distribution\n\n'
                    'On average, 4 cars arrive at a gas station every 15 minutes. '
                    'What is the probability that exactly 6 cars will arrive in the next 30 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 6 cars per 30 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 6 cars will arrive in the next 30 minutes is approximately 0.160623141.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15: Binomial Distribution\n\n'
                    'A die is rolled 10 times. What is the probability of getting exactly 4 sixes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 1/6 (rolling a six)\n'
                    '- Number of successes (k) = 4\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * p^k * (1-p)^(n-k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting exactly 4 sixes is approximately 0.05433945.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16: Normal Distribution\n\n'
                    'The heights of adult males are normally distributed with a mean of 70 inches '
                    'and a standard deviation of 3 inches. What is the probability that a randomly selected '
                    'adult male is shorter than 65 inches?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 70 inches\n'
                    '- Standard deviation (σ) = 3 inches\n'
                    '- Desired height (x) = 65 inches\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected adult male is shorter than 65 inches is approximately 0.158655254.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17: Poisson Distribution\n\n'
                    'On average, 10 customers visit a store every hour. '
                    'What is the probability that exactly 15 customers will visit in the next two hours?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 15 customers per 2 hours\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 15 customers will visit in the next two hours is approximately 0.034603. \n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18: Binomial Distribution\n\n'
                    'A biased coin lands heads with probability 0.3. '
                    'If the coin is flipped 12 times, what is the probability of getting at most 4 heads?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 12\n'
                    '- Probability of success (p) = 0.3\n'
                    '- Number of successes (k) = at most 4\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X <= k) = P(X=0) + P(X=1) + ... + P(X=k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting at most 4 heads is approximately 0.9761793.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19: Normal Distribution\n\n'
                    'The weights of apples in a basket are normally distributed with a mean of 200 grams '
                    'and a standard deviation of 20 grams. What is the probability that a randomly selected apple '
                    'weighs more than 230 grams?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 200 grams\n'
                    '- Standard deviation (σ) = 20 grams\n'
                    '- Desired weight (x) = 230 grams\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected apple weighs more than 230 grams is approximately 0.0912112.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20: Poisson Distribution\n\n'
                    'On average, 5 accidents occur on a particular road every week. '
                    'What is the probability that exactly 3 accidents will occur in the next 5 days?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 3 accidents per 5 days\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 3 accidents will occur in the next 5 days is approximately 0.140373.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21: Binomial Distribution\n\n'
                    'A bag contains 8 red marbles and 5 blue marbles. '
                    'If 3 marbles are randomly drawn from the bag without replacement, '
                    'what is the probability that exactly 2 of them are red?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 3\n'
                    '- Probability of success (p) = (number of red marbles / total number of marbles) on the first draw\n'
                    '- Number of successes (k) = 2\n\n'
                    'Step 2: Apply the hypergeometric probability formula:\n'
                    'P(X=k) = (number of ways to choose k red marbles) * (number of ways to choose n-k blue marbles) / (total number of ways to choose n marbles)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 2 of the drawn marbles are red is approximately 0.49484536.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22: Normal Distribution\n\n'
                    'The scores on a standardized test are normally distributed with a mean of 75 '
                    'and a standard deviation of 10. What is the probability that a randomly selected student '
                    'scores between 70 and 80?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 75\n'
                    '- Standard deviation (σ) = 10\n'
                    '- Lower bound (x1) = 70\n'
                    '- Upper bound (x2) = 80\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student scores between 70 and 80 is approximately 0.682689.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23: Poisson Distribution\n\n'
                    'On average, 4 emails arrive in your inbox every hour. '
                    'What is the probability that exactly 2 emails will arrive in the next 30 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 2 emails per 0.5 hour\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 2 emails will arrive in the next 30 minutes is approximately 0.270671.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24: Binomial Distribution\n\n'
                    'In a group of 15 people, 8 are women. '
                    'If 5 people are randomly selected from the group, what is the probability '
                    'that at least 3 of them are women?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 5\n'
                    '- Probability of success (p) = (number of women / total number of people)\n'
                    '- Number of successes (k) = at least 3\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k-1)\n'
                    '           = 1 - [P(X=0) + P(X=1) + P(X=2)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that at least 3 of the selected people are women is approximately 0.747009216.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25: Normal Distribution\n\n'
                    'The lifetimes of a certain brand of light bulbs are normally distributed '
                    'with a mean of 800 hours and a standard deviation of 50 hours. '
                    'What is the probability that a randomly selected light bulb will last between 750 and 850 hours?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 800 hours\n'
                    '- Standard deviation (σ) = 50 hours\n'
                    '- Lower bound (x1) = 750 hours\n'
                    '- Upper bound (x2) = 850 hours\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected light bulb will last between 750 and 850 hours is approximately 0.788145.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26: Poisson Distribution\n\n'
                    'On average, 3 customers arrive at a coffee shop every 10 minutes. '
                    'What is the probability that at least 5 customers will arrive in the next 20 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 5 customers per 20 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k)\n'
                    '           = 1 - [P(X=0) + P(X=1) + P(X=2) + P(X=3) + P(X=4)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that at least 5 customers will arrive in the next 20 minutes is approximately 0.184736.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27: Binomial Distribution\n\n'
                    'A basketball player has a 70% chance of making a free throw. '
                    'If she attempts 10 free throws, what is the probability of making at most 6 of them?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 0.7\n'
                    '- Number of successes (k) = at most 6\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X <= k) = P(X=0) + P(X=1) + ... + P(X=k)\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of making at most 6 free throws is approximately 0.99627939.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28: Normal Distribution\n\n'
                    'The scores on a standardized test are normally distributed with a mean of 80 '
                    'and a standard deviation of 15. What is the probability that a randomly selected student '
                    'scores below 90 on the test?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 80\n'
                    '- Standard deviation (σ) = 15\n'
                    '- Desired score (x) = 90\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student scores below 90 on the test is approximately 0.841344742.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 29: Poisson Distribution\n\n'
                    'On average, 2 cars arrive at a toll booth every 5 minutes. '
                    'What is the probability that exactly 1 car will arrive in the next 3 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 1 car per 3 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 1 car will arrive in the next 3 minutes is approximately 0.149361.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30: Binomial Distribution\n\n'
                    'A deck of 52 cards contains 4 aces. '
                    'If 7 cards are randomly drawn from the deck, what is the probability '
                    'that at least 2 of them are aces?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 7\n'
                    '- Probability of success (p) = (number of aces / total number of cards)\n'
                    '- Number of successes (k) = at least 2\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k-1)\n'
                    '           = 1 - [P(X=0) + P(X=1)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that at least 2 of the drawn cards are aces is approximately 0.1841797.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31: Normal Distribution\n\n'
                    'The weights of apples in a basket are normally distributed '
                    'with a mean of 150 grams and a standard deviation of 20 grams. '
                    'What is the probability that a randomly selected apple weighs more than 160 grams?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 150 grams\n'
                    '- Standard deviation (σ) = 20 grams\n'
                    '- Desired weight (x) = 160 grams\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected apple weighs more than 160 grams is approximately 0.308537.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32: Poisson Distribution\n\n'
                    'On average, 5 emails are received in an inbox every hour. '
                    'What is the probability that at least 8 emails will be received in the next 90 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 8 emails per 1.5 hours\n\n'
                    'Step 2: Apply the Poisson probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k)\n'
                    '           = 1 - [P(X=0) + P(X=1) + ... + P(X=7)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that at least 8 emails will be received in the next 90 minutes is approximately 0.020703.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33: Binomial Distribution\n\n'
                    'A multiple-choice test has 10 questions, each with 4 options. '
                    'If a student randomly guesses on each question, what is the probability '
                    'that they answer at least 7 questions correctly?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 1/4 (random guessing)\n'
                    '- Number of successes (k) = at least 7\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k-1)\n'
                    '           = 1 - [P(X=0) + P(X=1) + ... + P(X=k-1)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that the student answers at least 7 questions correctly is approximately 0.003460.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed '
                    'with a mean of 160 cm and a standard deviation of 10 cm. '
                    'What is the probability that a randomly selected student '
                    'has a height between 155 cm and 165 cm?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 160 cm\n'
                    '- Standard deviation (σ) = 10 cm\n'
                    '- Lower bound (x1) = 155 cm\n'
                    '- Upper bound (x2) = 165 cm\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student has a height between 155 cm and 165 cm is approximately 0.682689.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35: Poisson Distribution\n\n'
                    'On average, 4 buses arrive at a bus stop every 30 minutes. '
                    'What is the probability that exactly 6 buses will arrive in the next hour?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 6 buses per hour\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 6 buses will arrive in the next hour is approximately 0.160623.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36: Binomial Distribution\n\n'
                    'A fair six-sided die is rolled 10 times. '
                    'What is the probability of rolling exactly 3 ones?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 10\n'
                    '- Probability of success (p) = 1/6 (rolling a one)\n'
                    '- Number of successes (k) = 3\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * (p^k) * ((1-p)^(n-k))\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of rolling exactly 3 ones is approximately 0.155045.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37: Normal Distribution\n\n'
                    'The IQ scores of a population are normally distributed '
                    'with a mean of 100 and a standard deviation of 15. '
                    'What is the probability that a randomly selected person '
                    'has an IQ score above 130?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 100\n'
                    '- Standard deviation (σ) = 15\n'
                    '- Desired IQ score (x) = 130\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected person has an IQ score above 130 is approximately 0.022750.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38: Poisson Distribution\n\n'
                    'On average, 2 earthquakes occur in a region every month. '
                    'What is the probability that exactly 1 earthquake will occur in the next 2 weeks?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 1 earthquake per 2 weeks\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 1 earthquake will occur in the next 2 weeks is approximately 0.135335.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39: Binomial Distribution\n\n'
                    'A multiple-choice test has 15 questions, each with 5 options. '
                    'If a student randomly guesses on each question, what is the probability '
                    'that they answer at least 10 questions correctly?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 15\n'
                    '- Probability of success (p) = 1/5 (random guessing)\n'
                    '- Number of successes (k) = at least 10\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k-1)\n'
                    '           = 1 - [P(X=0) + P(X=1) + ... + P(X=k-1)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that the student answers at least 10 questions correctly is approximately 0.000787.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed '
                    'with a mean of 165 cm and a standard deviation of 8 cm. '
                    'What is the probability that a randomly selected student '
                    'has a height between 155 cm and 175 cm?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 165 cm\n'
                    '- Standard deviation (σ) = 8 cm\n'
                    '- Lower bound (x1) = 155 cm\n'
                    '- Upper bound (x2) = 175 cm\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student has a height between 155 cm and 175 cm is approximately 0.918245.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41: Poisson Distribution\n\n'
                    'On average, 3 ships arrive at a port every 4 days. '
                    'What is the probability that exactly 5 ships will arrive in the next week?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 5 ships per week\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 5 ships will arrive in the next week is approximately 0.175467.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42: Binomial Distribution\n\n'
                    'A fair coin is tossed 12 times. '
                    'What is the probability of getting exactly 8 heads?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 12\n'
                    '- Probability of success (p) = 0.5 (fair coin toss)\n'
                    '- Number of successes (k) = 8\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * (p^k) * ((1-p)^(n-k))\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting exactly 8 heads is approximately 0.193359.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed '
                    'with a mean of 170 cm and a standard deviation of 12 cm. '
                    'What is the probability that a randomly selected student '
                    'has a height below 160 cm?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 170 cm\n'
                    '- Standard deviation (σ) = 12 cm\n'
                    '- Desired height (x) = 160 cm\n\n'
                    'Step 2: Standardize the variable using the z-score formula:\n'
                    'z = (x - μ) / σ\n\n'
                    'Step 3: Look up the standardized value in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student has a height below 160 cm is approximately 0.202328.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44: Poisson Distribution\n\n'
                    'On average, 10 customers visit a store every hour. '
                    'What is the probability that exactly 15 customers will visit in the next 90 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 15 customers per 1.5 hours\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 15 customers will visit in the next 90 minutes is approximately 0.034680.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45: Binomial Distribution\n\n'
                    'A bag contains 8 red balls and 5 blue balls. '
                    'If 3 balls are drawn at random, what is the probability '
                    'that exactly 2 of them are red?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 3\n'
                    '- Probability of success (p) = (number of red balls / total number of balls)\n'
                    '- Number of successes (k) = 2\n\n'
                    'Step 2: Apply the binomial probability formula:\n'
                    'P(X=k) = (n choose k) * (p^k) * ((1-p)^(n-k))\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of drawing exactly 2 red balls is approximately 0.535714.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46: Normal Distribution\n\n'
                    'The weights of apples in a basket are normally distributed '
                    'with a mean of 150 grams and a standard deviation of 10 grams. '
                    'What is the probability that a randomly selected apple '
                    'weighs between 140 grams and 160 grams?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 150 grams\n'
                    '- Standard deviation (σ) = 10 grams\n'
                    '- Lower bound (x1) = 140 grams\n'
                    '- Upper bound (x2) = 160 grams\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected apple weighs between 140 grams and 160 grams is approximately 0.682689.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47: Poisson Distribution\n\n'
                    'On average, 4 buses arrive at a bus stop every 20 minutes. '
                    'What is the probability that exactly 2 buses will arrive in the next 10 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 2 buses per 10 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 2 buses will arrive in the next 10 minutes is approximately 0.18394.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48: Binomial Distribution\n\n'
                    'A fair six-sided die is rolled 15 times. '
                    'What is the probability of getting at least 3 fours?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Number of trials (n) = 15\n'
                    '- Probability of success (p) = 1/6 (rolling a four)\n'
                    '- Number of successes (k) = at least 3\n\n'
                    'Step 2: Apply the binomial probability formula for cumulative probability:\n'
                    'P(X >= k) = 1 - P(X < k-1)\n'
                    '           = 1 - [P(X=0) + P(X=1) + P(X=2)]\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability of getting at least 3 fours is approximately 0.174154.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49: Normal Distribution\n\n'
                    'The heights of students in a class are normally distributed '
                    'with a mean of 170 cm and a standard deviation of 8 cm. '
                    'What is the probability that a randomly selected student '
                    'has a height between 165 cm and 175 cm?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameters:\n'
                    '- Mean (μ) = 170 cm\n'
                    '- Standard deviation (σ) = 8 cm\n'
                    '- Lower bound (x1) = 165 cm\n'
                    '- Upper bound (x2) = 175 cm\n\n'
                    'Step 2: Standardize the variables using the z-score formula:\n'
                    'z1 = (x1 - μ) / σ\n'
                    'z2 = (x2 - μ) / σ\n\n'
                    'Step 3: Look up the standardized values in the standard normal distribution table or use a calculator to find the probability.\n\n'
                    'Final Answer: The probability that a randomly selected student has a height between 165 cm and 175 cm is approximately 0.382925.\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50: Poisson Distribution\n\n'
                    'On average, 6 cars pass through a toll booth every 10 minutes. '
                    'What is the probability that exactly 8 cars will pass through in the next 15 minutes?',
                solution: 'Solution:\n\n'
                    'Step 1: Identify parameter:\n'
                    '- Average rate of occurrence (λ) = 8 cars per 15 minutes\n\n'
                    'Step 2: Apply the Poisson probability formula:\n'
                    'P(X=k) = (λ^k * e^(-λ)) / k!\n\n'
                    'Step 3: Substitute the given values into the formula and calculate.\n\n'
                    'Final Answer: The probability that exactly 8 cars will pass through in the next 15 minutes is approximately 0.092775.\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
