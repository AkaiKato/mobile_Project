import 'package:flutter/material.dart';

class FAQTextfiled extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double fontSize;

  const FAQTextfiled({
    super.key,
    required this.text,
    required this.weight,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: fontSize,
      ),
    );
  }
}
