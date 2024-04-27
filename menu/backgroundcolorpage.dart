import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class BackgroundColorPage extends StatefulWidget {
  final Color chosenColor;
  final void Function(Color) onColorSelected;

  BackgroundColorPage({required this.chosenColor, required this.onColorSelected});

  @override
  _BackgroundColorPageState createState() => _BackgroundColorPageState();
}

class _BackgroundColorPageState extends State<BackgroundColorPage> {
  late Color _chosenColor;

  @override
  void initState() {
    super.initState();
    _chosenColor = widget.chosenColor;
    _loadSavedColor();
  }

  Future<void> _loadSavedColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _chosenColor = Color(prefs.getInt('chosenColor') ?? widget.chosenColor.value);
    });
  }

  Future<void> _saveColor(Color color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('chosenColor', color.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color'),
        backgroundColor: _chosenColor,
      ),
      body: Container(
        color: _chosenColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _colorChoiceButton(context, Colors.pink),
                _colorChoiceButton(context, Colors.purple),
                _colorChoiceButton(context, Colors.grey),
                _colorChoiceButton(context, Colors.orange),
                _colorChoiceButton(context, Colors.brown),
                _colorChoiceButton(context, Colors.black),
                _colorChoiceButton(context, Colors.pinkAccent),
                _colorChoiceButton(context, Colors.white),
                _colorChoiceButton(context, Colors.blue),
                _colorChoiceButton(context, Colors.green),
                _colorChoiceButton(context, Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _colorChoiceButton(BuildContext context, Color color) {
    return InkWell(
      onTap: () async {
        setState(() {
          _chosenColor = color;
        });
        await _saveColor(color);
        widget.onColorSelected(color);
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
