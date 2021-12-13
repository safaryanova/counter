import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  //late тоже не нужен
  //в StatelessWidget поля должны быть final
  final String text;

  const ButtonText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //тут this не нужен
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
