import 'package:flutter/material.dart';

class RentText extends StatelessWidget {
  final String text;
  final double fontSize;

  const RentText({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
      ),
    );
  }
}
