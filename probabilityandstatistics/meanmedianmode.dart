import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../differential_calculus.dart';

class MeanMedianMode extends StatelessWidget {
  final Color chosenColor;
  MeanMedianMode ({required this.chosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measures of Central Tendency(Mean, Median, Mode)'),
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
                'Measures of Central Tendency(Mean, Median, Mode)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Statistics and probability deal with the analysis of data and the quantification of uncertainty. Measures of central tendency are statistical measures that provide a single value representing the center or typical value of a dataset. The three most common measures of central tendency are the mean, median, and mode.\n\n1. Mean:\n\nThe mean, often referred to as the average, is calculated by summing up all the values in a dataset and then dividing by the total number of values.\n\nMathematically, the mean (xˉ) of n data points x1, x2, . . . . , xn is given by:\n\n xˉ = x1+x2+. . . .+xn/n\n\nThe mean is sensitive to outliers, meaning that extreme values can significantly affect its value.\n\n2. Median:\n\nThe median is the middle value of a dataset when it is arranged in ascending or descending order.\n\nIf the dataset has an odd number of values, the median is the middle value. If the dataset has an even number of values, the median is the average of the two middle values.\n\nThe median is less affected by outliers compared to the mean, making it a robust measure of central tendency.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '3. Mode:\n\nThe mode is the value that appears most frequently in a dataset.\n\nA dataset may have one mode (unimodal), two modes (bimodal), or more than two modes (multimodal). If no value is repeated, the dataset is said to have no mode.\n\nA dataset may have one mode (unimodal), two modes (bimodal), or more than two modes (multimodal). If no value is repeated, the dataset is said to have no mode.\n\n\n\nThese measures of central tendency are used to summarize the central or typical value of a dataset and provide insights into its distribution. They are essential tools in descriptive statistics for understanding the characteristics of data. Depending on the nature of the dataset and the specific research question, one or more of these measures may be used to describe the central tendency.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '\n\n\nExample: Exam Scores\n\nSuppose we have the following dataset representing exam scores of 10 students:\n\n75,82,90,68,75,82,78,90,82,85\n\nWe will calculate the mean, median, and mode of these exam scores.\n\nStep 1: Calculate the Mean\n\nTo find the mean, we sum up all the exam scores and then divide by the total number of scores (which is 10 in this case).\n\nMean = 75+82+90+68+75+82+78+90+82+85/10\n\nMean = 797/10\n\nMean = 79.7\n\nSo, the mean exam score is 79.7.\n\nStep 2: Calculate the Median\n\nTo find the median, we first arrange the exam scores in ascending order:\n\n68,75,75,78,82,82,82,85,90,90\n\nSince the dataset has an even number of values (10), the median will be the average of the two middle values, which are 82 and 82.\n\nMedian = 82+82/2\n\nMedian = 164/2\n\nMedian = 82\n\nSo, the median exam score is 82.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nStep 3: Calculate the Mode\n\nTo find the mode, we determine which score appears most frequently in the dataset.\n\n75 appears twice.\n\n82 appears three times.\n\n90 appears twice.\n\n68, 78, and 85 appear once each.\n\nSince the score 82 appears most frequently (three times), it is the mode.\n\nSo, the mode exam score is 82.\n\nConclusion\n\n\nMean: 79.7\n\nMedian: 82\n\nMode: 82',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\n\nThese measures of central tendency provide insights into the typical exam performance of the students in the dataset.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 1:\nFind the mean, median, and mode of the following dataset: [12, 15, 18, 20, 12, 15, 18, 20, 12, 18].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'To find the mean, sum up all the values in the dataset and then divide by the total number of values.\n\n'
                    'Mean = (12 + 15 + 18 + 20 + 12 + 15 + 18 + 20 + 12 + 18) / 10\n'
                    '     = 160 / 10\n'
                    '     = 16\n\n'
                    'So, the mean is 16.\n\n'
                    'Step 2: Calculate the Median:\n'
                    'To find the median, arrange the dataset in ascending order and find the middle value.\n\n'
                    'Arranged dataset: [12, 12, 12, 15, 15, 18, 18, 18, 20, 20]\n\n'
                    'Since the dataset has an even number of values, the median is the average of the two middle values (15 and 18).\n\n'
                    'Median = (15 + 18) / 2\n'
                    '       = 16.5\n\n'
                    'So, the median is 16.5.\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'To find the mode, determine which value appears most frequently in the dataset.\n\n'
                    'Mode = 12 and 18 (both appear three times)\n\n'
                    'So, the mode is 12 and 18.\n\n'
                    'Final Answer:\n'
                    '   Mean: 16\n'
                    '   Median: 16.5\n'
                    '   Mode: 12 and 18\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 2:\nFind the mean, median, and mode of the following dataset: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'To find the mean, sum up all the values in the dataset and then divide by the total number of values.\n\n'
                    'Mean = (10 + 20 + 30 + 40 + 50 + 60 + 70 + 80 + 90 + 100) / 10\n'
                    '     = 550 / 10\n'
                    '     = 55\n\n'
                    'So, the mean is 55.\n\n'
                    'Step 2: Calculate the Median:\n'
                    'To find the median, arrange the dataset in ascending order and find the middle value.\n\n'
                    'Arranged dataset: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]\n\n'
                    'Since the dataset has an odd number of values, the median is the middle value (50).\n\n'
                    'So, the median is 50.\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'To find the mode, determine which value appears most frequently in the dataset.\n\n'
                    'Mode = None (all values appear only once)\n\n'
                    'So, there is no mode.\n\n'
                    'Final Answer:\n'
                    '   Mean: 55\n'
                    '   Median: 50\n'
                    '   Mode: None\n',
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 3:\nFind the mean, median, and mode of the following dataset: [25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'To find the mean, sum up all the values in the dataset and then divide by the total number of values.\n\n'
                    'Mean = (25 + 30 + 35 + 40 + 45 + 50 + 55 + 60 + 65 + 70 + 75) / 11\n'
                    '     = 550 / 11\n'
                    '     ≈ 50\n\n'
                    'So, the mean is approximately 50.\n\n'
                    'Step 2: Calculate the Median:\n'
                    'To find the median, arrange the dataset in ascending order and find the middle value.\n\n'
                    'Arranged dataset: [25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75]\n\n'
                    'Since the dataset has an odd number of values, the median is the middle value (50).\n\n'
                    'So, the median is 50.\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'To find the mode, determine which value appears most frequently in the dataset.\n\n'
                    'Mode = None (all values appear only once)\n\n'
                    'So, there is no mode.\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 50\n'
                    '   Median: 50\n'
                    '   Mode: None\n',

              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 4:\nFind the mean, median, and mode of the following dataset: [14, 15, 15, 17, 18, 19, 19, 20, 20, 20].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'To find the mean, sum up all the values in the dataset and then divide by the total number of values.\n\n'
                    'Mean = (14 + 15 + 15 + 17 + 18 + 19 + 19 + 20 + 20 + 20) / 10\n'
                    '     = 177 / 10\n'
                    '     = 17.7\n\n'
                    'So, the mean is 17.7.\n\n'
                    'Step 2: Calculate the Median:\n'
                    'To find the median, arrange the dataset in ascending order and find the middle value.\n\n'
                    'Arranged dataset: [14, 15, 15, 17, 18, 19, 19, 20, 20, 20]\n\n'
                    'Since the dataset has an even number of values, the median is the average of the two middle values (18 and 19).\n\n'
                    'Median = (18 + 19) / 2\n'
                    '       = 18.5\n\n'
                    'So, the median is 18.5.\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'To find the mode, determine which value appears most frequently in the dataset.\n\n'
                    'Mode = 20 (appears three times)\n\n'
                    'So, the mode is 20.\n\n'
                    'Final Answer:\n'
                    '   Mean: 17.7\n'
                    '   Median: 18.5\n'
                    '   Mode: 20\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 5:\nFind the mean, median, and mode of the following dataset: [22, 23, 24, 25, 25, 25, 26, 27, 28, 29, 30].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'To find the mean, sum up all the values in the dataset and then divide by the total number of values.\n\n'
                    'Mean = (22 + 23 + 24 + 25 + 25 + 25 + 26 + 27 + 28 + 29 + 30) / 11\n'
                    '     = 284 / 11\n'
                    '     ≈ 25.82\n\n'
                    'So, the mean is approximately 25.82.\n\n'
                    'Step 2: Calculate the Median:\n'
                    'To find the median, arrange the dataset in ascending order and find the middle value.\n\n'
                    'Arranged dataset: [22, 23, 24, 25, 25, 25, 25, 26, 27, 28, 29, 30]\n\n'
                    'Since the dataset has an odd number of values, the median is the middle value (25).\n\n'
                    'So, the median is 25.\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'To find the mode, determine which value appears most frequently in the dataset.\n\n'
                    'Mode = 25 (appears four times)\n\n'
                    'So, the mode is 25.\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 25.82\n'
                    '   Median: 25\n'
                    '   Mode: 25\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 6:\nFind the mean, median, and mode of the following dataset: [5, 12, 18, 22, 22, 22, 9, 30, 15, 18].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (5 + 12 + 18 + 22 + 22 + 22 + 9 + 30 + 15 + 18) / 10\n'
                    '     = 173 / 10\n'
                    '     = 17.3\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [5, 9, 12, 15, 18, 18, 22, 22, 22, 30]\n'
                    'Median = (18 + 18) / 2\n'
                    '       = 18\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 22\n\n'
                    'Final Answer:\n'
                    '   Mean: 17.3\n'
                    '   Median: 18\n'
                    '   Mode: 22\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 7:\nCalculate the mean, median, and mode for this data set: [33, 35, 35, 35, 40, 41, 42, 43, 45].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (33 + 35 + 35 + 35 + 40 + 41 + 42 + 43 + 45) / 9\n'
                    '     = 349 / 9\n'
                    '     ≈ 38.78\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [33, 35, 35, 35, 40, 41, 42, 43, 45]\n'
                    'Median = 40 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 35\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 38.78\n'
                    '   Median: 40\n'
                    '   Mode: 35\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 8:\nCalculate the mean, median, and mode for this data set: [11, 15, 15, 15, 20, 20, 25, 30].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (11 + 15 + 15 + 15 + 20 + 20 + 25 + 30) / 8\n'
                    '     = 151 / 8\n'
                    '     = 18.875\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [11, 15, 15, 15, 20, 20, 25, 30]\n'
                    'Median = (15 + 20) / 2\n'
                    '       = 17.5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 15\n\n'
                    'Final Answer:\n'
                    '   Mean: 18.875\n'
                    '   Median: 17.5\n'
                    '   Mode: 15\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 9:\nFind the mean, median, and mode of the following dataset: [3, 3, 6, 9, 12, 12, 12, 17, 20].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (3 + 3 + 6 + 9 + 12 + 12 + 12 + 17 + 20) / 9\n'
                    '     = 94 / 9\n'
                    '     ≈ 10.44\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [3, 3, 6, 9, 12, 12, 12, 17, 20]\n'
                    'Median = 12 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 12\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 10.44\n'
                    '   Median: 12\n'
                    '   Mode: 12\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 10:\nDetermine the mean, median, and mode from these numbers: [2, 4, 6, 8, 10, 12, 14].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (2 + 4 + 6 + 8 + 10 + 12 + 14) / 7\n'
                    '     = 56 / 7\n'
                    '     = 8\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [2, 4, 6, 8, 10, 12, 14]\n'
                    'Median = 8 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = No mode (all numbers appear once)\n\n'
                    'Final Answer:\n'
                    '   Mean: 8\n'
                    '   Median: 8\n'
                    '   Mode: None\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 11:\nCalculate the mean, median, and mode of the following dataset: [21, 22, 23, 23, 23, 24, 24, 25, 25, 26, 27].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (21 + 22 + 23 + 23 + 23 + 24 + 24 + 25 + 25 + 26 + 27) / 11\n'
                    '     = 263 / 11\n'
                    '     ≈ 23.91\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [21, 22, 23, 23, 23, 24, 24, 25, 25, 26, 27]\n'
                    'Median = 24 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 23\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 23.91\n'
                    '   Median: 24\n'
                    '   Mode: 23\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 12:\nDetermine the mean, median, and mode for these numbers: [8, 10, 10, 10, 12, 14, 16].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (8 + 10 + 10 + 10 + 12 + 14 + 16) / 7\n'
                    '     = 80 / 7\n'
                    '     ≈ 11.43\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [8, 10, 10, 10, 12, 14, 16]\n'
                    'Median = 10 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 10\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 11.43\n'
                    '   Median: 10\n'
                    '   Mode: 10\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 13:\nFind the mean, median, and mode of this dataset: [31, 32, 32, 34, 36, 36, 36, 37, 39].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (31 + 32 + 32 + 34 + 36 + 36 + 36 + 37 + 39) / 9\n'
                    '     = 323 / 9\n'
                    '     ≈ 35.89\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [31, 32, 32, 34, 36, 36, 36, 37, 39]\n'
                    'Median = 36 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 36\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 35.89\n'
                    '   Median: 36\n'
                    '   Mode: 36\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 14:\nEvaluate the mean, median, and mode for these numbers: [45, 46, 46, 47, 50, 51, 53, 53, 53].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (45 + 46 + 46 + 47 + 50 + 51 + 53 + 53 + 53) / 9\n'
                    '     = 444 / 9\n'
                    '     = 49.33\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [45, 46, 46, 47, 50, 51, 53, 53, 53]\n'
                    'Median = 50 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 53\n\n'
                    'Final Answer:\n'
                    '   Mean: 49.33\n'
                    '   Median: 50\n'
                    '   Mode: 53\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 15:\nCompute the mean, median, and mode of the dataset: [2, 4, 6, 6, 6, 8, 10, 12, 14, 14, 16].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (2 + 4 + 6 + 6 + 6 + 8 + 10 + 12 + 14 + 14 + 16) / 11\n'
                    '     = 98 / 11\n'
                    '     = 8.91\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [2, 4, 6, 6, 6, 8, 10, 12, 14, 14, 16]\n'
                    'Median = 8 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 6\n\n'
                    'Final Answer:\n'
                    '   Mean: 8.91\n'
                    '   Median: 8\n'
                    '   Mode: 6\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 16:\nCalculate the mean, median, and mode of the following numbers: [9, 11, 13, 13, 14, 14, 14, 15, 17].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (9 + 11 + 13 + 13 + 14 + 14 + 14 + 15 + 17) / 9\n'
                    '     = 120 / 9\n'
                    '     ≈ 13.33\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [9, 11, 13, 13, 14, 14, 14, 15, 17]\n'
                    'Median = 14 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 14\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 13.33\n'
                    '   Median: 14\n'
                    '   Mode: 14\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 17:\nDetermine the mean, median, and mode for these numbers: [22, 24, 25, 25, 27, 27, 29, 29, 30, 30, 30].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (22 + 24 + 25 + 25 + 27 + 27 + 29 + 29 + 30 + 30 + 30) / 11\n'
                    '     = 298 / 11\n'
                    '     ≈ 27.09\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [22, 24, 25, 25, 27, 27, 29, 29, 30, 30, 30]\n'
                    'Median = 27 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 30\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 27.09\n'
                    '   Median: 27\n'
                    '   Mode: 30\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 18:\nFind the mean, median, and mode of this dataset: [3, 5, 7, 7, 8, 9, 11, 11, 11, 12].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (3 + 5 + 7 + 7 + 8 + 9 + 11 + 11 + 11 + 12) / 10\n'
                    '     = 84 / 10\n'
                    '     = 8.4\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [3, 5, 7, 7, 8, 9, 11, 11, 11, 12]\n'
                    'Median = (8 + 9) / 2\n'
                    '       = 8.5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 11\n\n'
                    'Final Answer:\n'
                    '   Mean: 8.4\n'
                    '   Median: 8.5\n'
                    '   Mode: 11\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 19:\nEvaluate the mean, median, and mode for these numbers: [33, 35, 35, 36, 37, 37, 37, 38, 40].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (33 + 35 + 35 + 36 + 37 + 37 + 37 + 38 + 40) / 9\n'
                    '     = 338 / 9\n'
                    '     ≈ 37.56\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [33, 35, 35, 36, 37, 37, 37, 38, 40]\n'
                    'Median = 37 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 37\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 37.56\n'
                    '   Median: 37\n'
                    '   Mode: 37\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 20:\nCompute the mean, median, and mode of the dataset: [10, 12, 15, 15, 15, 16, 18, 20, 20].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (10 + 12 + 15 + 15 + 15 + 16 + 18 + 20 + 20) / 9\n'
                    '     = 141 / 9\n'
                    '     ≈ 15.67\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [10, 12, 15, 15, 15, 16, 18, 20, 20]\n'
                    'Median = 15 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 15\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 15.67\n'
                    '   Median: 15\n'
                    '   Mode: 15\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 21:\nCalculate the mean, median, and mode of the following dataset: [8, 9, 9, 10, 10, 10, 11, 12, 12, 13, 14, 14].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (8 + 9 + 9 + 10 + 10 + 10 + 11 + 12 + 12 + 13 + 14 + 14) / 12\n'
                    '     = 132 / 12\n'
                    '     = 11\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [8, 9, 9, 10, 10, 10, 11, 12, 12, 13, 14, 14]\n'
                    'Median = (10 + 11) / 2\n'
                    '       = 10.5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 10, 14\n\n'
                    'Final Answer:\n'
                    '   Mean: 11\n'
                    '   Median: 10.5\n'
                    '   Mode: 10, 14\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 22:\nDetermine the mean, median, and mode for these numbers: [22, 24, 25, 25, 27, 27, 28, 29, 30, 30, 31].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (22 + 24 + 25 + 25 + 27 + 27 + 28 + 29 + 30 + 30 + 31) / 11\n'
                    '     = 298 / 11\n'
                    '     ≈ 27.09\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [22, 24, 25, 25, 27, 27, 28, 29, 30, 30, 31]\n'
                    'Median = 27 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 25, 27, 30\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 27.09\n'
                    '   Median: 27\n'
                    '   Mode: 25, 27, 30\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 23:\nFind the mean, median, and mode of this dataset: [11, 13, 13, 13, 14, 15, 15, 16, 16, 18].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (11 + 13 + 13 + 13 + 14 + 15 + 15 + 16 + 16 + 18) / 10\n'
                    '     = 144 / 10\n'
                    '     = 14.4\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [11, 13, 13, 13, 14, 15, 15, 16, 16, 18]\n'
                    'Median = (14 + 15) / 2\n'
                    '       = 14.5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 13\n\n'
                    'Final Answer:\n'
                    '   Mean: 14.4\n'
                    '   Median: 14.5\n'
                    '   Mode: 13\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 24:\nEvaluate the mean, median, and mode for these numbers: [20, 20, 21, 23, 24, 24, 24, 25, 26, 27, 28].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (20 + 20 + 21 + 23 + 24 + 24 + 24 + 25 + 26 + 27 + 28) / 11\n'
                    '     = 262 / 11\n'
                    '     ≈ 23.82\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [20, 20, 21, 23, 24, 24, 24, 25, 26, 27, 28]\n'
                    'Median = 24 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 24\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 23.82\n'
                    '   Median: 24\n'
                    '   Mode: 24\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 25:\nCompute the mean, median, and mode of the dataset: [4, 6, 6, 8, 9, 10, 12, 14, 14, 14, 15].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (4 + 6 + 6 + 8 + 9 + 10 + 12 + 14 + 14 + 14 + 15) / 11\n'
                    '     = 112 / 11\n'
                    '     ≈ 10.18\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [4, 6, 6, 8, 9, 10, 12, 14, 14, 14, 15]\n'
                    'Median = 10 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 6, 14\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 10.18\n'
                    '   Median: 10\n'
                    '   Mode: 6, 14\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 26:\nCalculate the mean, median, and mode of the following dataset: [12, 14, 15, 15, 16, 17, 17, 17, 18, 19, 20].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (12 + 14 + 15 + 15 + 16 + 17 + 17 + 17 + 18 + 19 + 20) / 11\n'
                    '     = 180 / 11\n'
                    '     ≈ 16.36\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [12, 14, 15, 15, 16, 17, 17, 17, 18, 19, 20]\n'
                    'Median = 16 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 17\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 16.36\n'
                    '   Median: 16\n'
                    '   Mode: 17\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 27:\nDetermine the mean, median, and mode for these numbers: [18, 19, 19, 20, 20, 21, 22, 23, 23, 24, 25].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (18 + 19 + 19 + 20 + 20 + 21 + 22 + 23 + 23 + 24 + 25) / 11\n'
                    '     = 234 / 11\n'
                    '     ≈ 21.27\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [18, 19, 19, 20, 20, 21, 22, 23, 23, 24, 25]\n'
                    'Median = 21 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 19\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 21.27\n'
                    '   Median: 21\n'
                    '   Mode: 19\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 28:\nFind the mean, median, and mode of this dataset: [3, 3, 5, 5, 6, 7, 8, 9, 9, 9, 10, 11].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (3 + 3 + 5 + 5 + 6 + 7 + 8 + 9 + 9 + 9 + 10 + 11) / 12\n'
                    '     = 85 / 12\n'
                    '     ≈ 7.08\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [3, 3, 5, 5, 6, 7, 8, 9, 9, 9, 10, 11]\n'
                    'Median = (6 + 7) / 2\n'
                    '       = 6.5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 9\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 7.08\n'
                    '   Median: 6.5\n'
                    '   Mode: 9\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                  problem: 'Problem 29:\nEvaluate the mean, median, and mode for these numbers: [13, 14, 14, 15, 15, 16, 17, 17, 17, 18, 18, 19, 20].',
                  solution: 'Solution:\n\n'
                      'Step 1: Calculate the Mean:\n'
                      'Mean = (13 + 14 + 14 + 15 + 15 + 16 + 17 + 17 + 17 + 18 + 18 + 19 + 20) / 13\n'
                      '     = 215 / 13\n'
                      '     ≈ 16.54\n\n'
                      'Step 2: Calculate the Median:\n'
                      'Arranged dataset: [13, 14, 14, 15, 15, 16, 17, 17, 17, 18, 18, 19, 20]\n'
                      'Median = 17 (middle value)\n\n'
                      'Step 3: Calculate the Mode:\n'
                      'Mode = 17 (appears three times)\n\n'
                      'Final Answer:\n'
                      '   Mean: ≈ 16.54\n'
                      '   Median: 17\n'
                      '   Mode: 17\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 30:\nCalculate the mean, median, and mode for the following numbers: [2, 3, 4, 4, 5, 5, 5, 6, 7, 8, 8, 9].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (2 + 3 + 4 + 4 + 5 + 5 + 5 + 6 + 7 + 8 + 8 + 9) / 12\n'
                    '     = 66 / 12\n'
                    '     ≈ 5.5\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [2, 3, 4, 4, 5, 5, 5, 6, 7, 8, 8, 9]\n'
                    'Median = (5 + 5) / 2\n'
                    '       = 5\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 5\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 5.5\n'
                    '   Median: 5\n'
                    '   Mode: 5\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 31:\nCalculate the mean, median, and mode of the following dataset: [7, 8, 8, 9, 10, 10, 10, 11, 12, 12, 13, 14, 14, 14].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (7 + 8 + 8 + 9 + 10 + 10 + 10 + 11 + 12 + 12 + 13 + 14 + 14 + 14) / 14\n'
                    '     = 152 / 14\n'
                    '     ≈ 10.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [7, 8, 8, 9, 10, 10, 10, 11, 12, 12, 13, 14, 14, 14]\n'
                    'Median = 11 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 10, 14\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 10.86\n'
                    '   Median: 11\n'
                    '   Mode: 10, 14\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 32:\nDetermine the mean, median, and mode for these numbers: [16, 16, 17, 17, 17, 18, 19, 19, 20, 20, 20, 21].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (16 + 16 + 17 + 17 + 17 + 18 + 19 + 19 + 20 + 20 + 20 + 21) / 12\n'
                    '     = 210 / 12\n'
                    '     ≈ 17.50\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [16, 16, 17, 17, 17, 18, 19, 19, 20, 20, 20, 21]\n'
                    'Median = 18.5 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 17, 20\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 17.50\n'
                    '   Median: 18.5\n'
                    '   Mode: 17, 20\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 33:\nFind the mean, median, and mode of this dataset: [22, 23, 23, 24, 25, 25, 26, 27, 27, 27, 28, 29, 30].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (22 + 23 + 23 + 24 + 25 + 25 + 26 + 27 + 27 + 27 + 28 + 29 + 30) / 13\n'
                    '     = 316 / 13\n'
                    '     ≈ 24.31\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [22, 23, 23, 24, 25, 25, 26, 27, 27, 27, 28, 29, 30]\n'
                    'Median = 26 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 27\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 24.31\n'
                    '   Median: 26\n'
                    '   Mode: 27\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 34:\nEvaluate the mean, median, and mode for these numbers: [31, 31, 32, 33, 34, 35, 35, 36, 36, 37, 38, 38, 39].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (31 + 31 + 32 + 33 + 34 + 35 + 35 + 36 + 36 + 37 + 38 + 38 + 39) / 13\n'
                    '     = 449 / 13\n'
                    '     ≈ 34.54\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [31, 31, 32, 33, 34, 35, 35, 36, 36, 37, 38, 38, 39]\n'
                    'Median = 35 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 31, 35, 36, 38\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 34.54\n'
                    '   Median: 35\n'
                    '   Mode: 31, 35, 36, 38\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 35:\nCompute the mean, median, and mode of the dataset: [40, 40, 40, 41, 42, 42, 43, 43, 43, 44, 45, 46, 46].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (40 + 40 + 40 + 41 + 42 + 42 + 43 + 43 + 43 + 44 + 45 + 46 + 46) / 13\n'
                    '     = 545 / 13\n'
                    '     ≈ 41.92\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [40, 40, 40, 41, 42, 42, 43, 43, 43, 44, 45, 46, 46]\n'
                    'Median = 43 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 40, 43\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 41.92\n'
                    '   Median: 43\n'
                    '   Mode: 40, 43\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 36:\nCalculate the mean, median, and mode of the following dataset: [47, 47, 48, 49, 49, 50, 50, 50, 51, 51, 52, 52, 52, 53].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (47 + 47 + 48 + 49 + 49 + 50 + 50 + 50 + 51 + 51 + 52 + 52 + 52 + 53) / 14\n'
                    '     = 701 / 14\n'
                    '     ≈ 50.07\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [47, 47, 48, 49, 49, 50, 50, 50, 51, 51, 52, 52, 52, 53]\n'
                    'Median = 50 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 50, 52\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 50.07\n'
                    '   Median: 50\n'
                    '   Mode: 50, 52\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 37:\nDetermine the mean, median, and mode for these numbers: [54, 54, 54, 55, 55, 55, 56, 56, 57, 57, 57, 58, 58, 59].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (54 + 54 + 54 + 55 + 55 + 55 + 56 + 56 + 57 + 57 + 57 + 58 + 58 + 59) / 14\n'
                    '     = 824 / 14\n'
                    '     ≈ 58.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [54, 54, 54, 55, 55, 55, 56, 56, 57, 57, 57, 58, 58, 59]\n'
                    'Median = 55.5 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 54, 55, 57\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 58.86\n'
                    '   Median: 55.5\n'
                    '   Mode: 54, 55, 57\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 38:\nFind the mean, median, and mode of this dataset: [60, 60, 60, 61, 61, 62, 62, 63, 63, 63, 64, 64, 65, 65].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (60 + 60 + 60 + 61 + 61 + 62 + 62 + 63 + 63 + 63 + 64 + 64 + 65 + 65) / 14\n'
                    '     = 889 / 14\n'
                    '     ≈ 63.50\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [60, 60, 60, 61, 61, 62, 62, 63, 63, 63, 64, 64, 65, 65]\n'
                    'Median = 62.5 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 60, 63\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 63.50\n'
                    '   Median: 62.5\n'
                    '   Mode: 60, 63\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 39:\nEvaluate the mean, median, and mode for these numbers: [66, 66, 66, 67, 67, 67, 68, 68, 68, 69, 69, 70, 70, 70].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (66 + 66 + 66 + 67 + 67 + 67 + 68 + 68 + 68 + 69 + 69 + 70 + 70 + 70) / 14\n'
                    '     = 971 / 14\n'
                    '     ≈ 69.36\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [66, 66, 66, 67, 67, 67, 68, 68, 68, 69, 69, 70, 70, 70]\n'
                    'Median = 68.5 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 66, 67, 68, 70\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 69.36\n'
                    '   Median: 68.5\n'
                    '   Mode: 66, 67, 68, 70\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 40:\nCompute the mean, median, and mode of the dataset: [71, 72, 72, 73, 73, 73, 74, 74, 74, 75, 75, 76, 76, 77].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (71 + 72 + 72 + 73 + 73 + 73 + 74 + 74 + 74 + 75 + 75 + 76 + 76 + 77) / 14\n'
                    '     = 1054 / 14\n'
                    '     ≈ 75.29\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [71, 72, 72, 73, 73, 73, 74, 74, 74, 75, 75, 76, 76, 77]\n'
                    'Median = 74 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 73, 74\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 75.29\n'
                    '   Median: 74\n'
                    '   Mode: 73, 74\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 41:\nCalculate the mean, median, and mode of the following dataset: [78, 78, 78, 79, 80, 80, 81, 81, 81, 82, 82, 82, 83, 83].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (78 + 78 + 78 + 79 + 80 + 80 + 81 + 81 + 81 + 82 + 82 + 82 + 83 + 83) / 14\n'
                    '     = 1120 / 14\n'
                    '     ≈ 80.00\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [78, 78, 78, 79, 80, 80, 81, 81, 81, 82, 82, 82, 83, 83]\n'
                    'Median = 81 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 78, 81, 82\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 80.00\n'
                    '   Median: 81\n'
                    '   Mode: 78, 81, 82\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 42:\nDetermine the mean, median, and mode for these numbers: [84, 85, 85, 86, 86, 86, 87, 87, 88, 88, 89, 90, 90, 91].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (84 + 85 + 85 + 86 + 86 + 86 + 87 + 87 + 88 + 88 + 89 + 90 + 90 + 91) / 14\n'
                    '     = 1214 / 14\n'
                    '     ≈ 86.71\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [84, 85, 85, 86, 86, 86, 87, 87, 88, 88, 89, 90, 90, 91]\n'
                    'Median = 86 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 86\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 86.71\n'
                    '   Median: 86\n'
                    '   Mode: 86\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 43:\nFind the mean, median, and mode of this dataset: [92, 92, 93, 93, 94, 94, 95, 95, 95, 96, 96, 96, 97, 98].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (92 + 92 + 93 + 93 + 94 + 94 + 95 + 95 + 95 + 96 + 96 + 96 + 97 + 98) / 14\n'
                    '     = 1328 / 14\n'
                    '     ≈ 94.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [92, 92, 93, 93, 94, 94, 95, 95, 95, 96, 96, 96, 97, 98]\n'
                    'Median = 95 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 95, 96\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 94.86\n'
                    '   Median: 95\n'
                    '   Mode: 95, 96\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 44:\nEvaluate the mean, median, and mode for these numbers: [99, 100, 100, 100, 101, 101, 101, 102, 102, 103, 104, 104, 105, 105].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (99 + 100 + 100 + 100 + 101 + 101 + 101 + 102 + 102 + 103 + 104 + 104 + 105 + 105) / 14\n'
                    '     = 1451 / 14\n'
                    '     ≈ 103.64\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [99, 100, 100, 100, 101, 101, 101, 102, 102, 103, 104, 104, 105, 105]\n'
                    'Median = 101 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 100, 101\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 103.64\n'
                    '   Median: 101\n'
                    '   Mode: 100, 101\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 45:\nCompute the mean, median, and mode of the dataset: [106, 106, 106, 107, 107, 107, 108, 108, 109, 109, 110, 111, 111, 111].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (106 + 106 + 106 + 107 + 107 + 107 + 108 + 108 + 109 + 109 + 110 + 111 + 111 + 111) / 14\n'
                    '     = 1530 / 14\n'
                    '     ≈ 109.29\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [106, 106, 106, 107, 107, 107, 108, 108, 109, 109, 110, 111, 111, 111]\n'
                    'Median = 108.5 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 106, 107, 111\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 109.29\n'
                    '   Median: 108.5\n'
                    '   Mode: 106, 107, 111\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 46:\nFind the mean, median, and mode of the following dataset: [112, 112, 113, 113, 113, 114, 115, 115, 116, 116, 116, 117, 118, 118].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (112 + 112 + 113 + 113 + 113 + 114 + 115 + 115 + 116 + 116 + 116 + 117 + 118 + 118) / 14\n'
                    '     = 1608 / 14\n'
                    '     ≈ 114.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [112, 112, 113, 113, 113, 114, 115, 115, 116, 116, 116, 117, 118, 118]\n'
                    'Median = 115 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 113, 116\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 114.86\n'
                    '   Median: 115\n'
                    '   Mode: 113, 116\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 47:\nDetermine the mean, median, and mode for these numbers: [119, 120, 120, 121, 122, 122, 122, 123, 123, 124, 124, 124, 125, 125].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (119 + 120 + 120 + 121 + 122 + 122 + 122 + 123 + 123 + 124 + 124 + 124 + 125 + 125) / 14\n'
                    '     = 1756 / 14\n'
                    '     ≈ 125.43\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [119, 120, 120, 121, 122, 122, 122, 123, 123, 124, 124, 124, 125, 125]\n'
                    'Median = 122 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 122, 124, 125\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 125.43\n'
                    '   Median: 122\n'
                    '   Mode: 122, 124, 125\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 48:\nFind the mean, median, and mode of this dataset: [126, 126, 127, 127, 127, 128, 129, 129, 129, 130, 130, 131, 131, 131].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (126 + 126 + 127 + 127 + 127 + 128 + 129 + 129 + 129 + 130 + 130 + 131 + 131 + 131) / 14\n'
                    '     = 1846 / 14\n'
                    '     ≈ 131.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [126, 126, 127, 127, 127, 128, 129, 129, 129, 130, 130, 131, 131, 131]\n'
                    'Median = 129 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 127, 129, 131\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 131.86\n'
                    '   Median: 129\n'
                    '   Mode: 127, 129, 131\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 49:\nEvaluate the mean, median, and mode for these numbers: [132, 132, 133, 134, 134, 135, 135, 135, 136, 137, 137, 138, 138, 139].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (132 + 132 + 133 + 134 + 134 + 135 + 135 + 135 + 136 + 137 + 137 + 138 + 138 + 139) / 14\n'
                    '     = 1938 / 14\n'
                    '     ≈ 138.43\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [132, 132, 133, 134, 134, 135, 135, 135, 136, 137, 137, 138, 138, 139]\n'
                    'Median = 135 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 135, 132, 134, 137, 138\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 138.43\n'
                    '   Median: 135\n'
                    '   Mode: 135, 132, 134, 137, 138\n',
              ),
              SizedBox(height: 20),
              ProblemSolvingWidget(
                problem: 'Problem 50:\nCompute the mean, median, and mode of the dataset: [140, 141, 141, 141, 142, 143, 143, 144, 144, 144, 145, 146, 147, 147].',
                solution: 'Solution:\n\n'
                    'Step 1: Calculate the Mean:\n'
                    'Mean = (140 + 141 + 141 + 141 + 142 + 143 + 143 + 144 + 144 + 144 + 145 + 146 + 147 + 147) / 14\n'
                    '     = 2042 / 14\n'
                    '     ≈ 145.86\n\n'
                    'Step 2: Calculate the Median:\n'
                    'Arranged dataset: [140, 141, 141, 141, 142, 143, 143, 144, 144, 144, 145, 146, 147, 147]\n'
                    'Median = 144 (middle value)\n\n'
                    'Step 3: Calculate the Mode:\n'
                    'Mode = 141, 144\n\n'
                    'Final Answer:\n'
                    '   Mean: ≈ 145.86\n'
                    '   Median: 144\n'
                    '   Mode: 141, 144\n',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
