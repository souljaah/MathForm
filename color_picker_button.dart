import 'package:flutter/material.dart';

class ColorPickerButton extends StatelessWidget {
  final void Function(Color) onColorSelected;

  ColorPickerButton({required this.onColorSelected});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.color_lens),
      onPressed: () {
        _showColorPicker(context);
      },
    );
  }

  void _showColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Background Color'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
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
        );
      },
    );
  }

  Widget _colorChoiceButton(BuildContext context, Color color) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        onColorSelected(color);
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