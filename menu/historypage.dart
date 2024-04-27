import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HistoryPage extends StatelessWidget {
  final Color chosenColor;
  final List<String> historyTopics;
  final Function(String) onTapTopic;

  HistoryPage({required this.chosenColor, required this.historyTopics, required this.onTapTopic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: chosenColor,
      ),
      backgroundColor: chosenColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: historyTopics.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(historyTopics[index]),
                    onTap: () => onTapTopic(historyTopics[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
