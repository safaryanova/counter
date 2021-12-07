import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  late final String text;

  ButtonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
