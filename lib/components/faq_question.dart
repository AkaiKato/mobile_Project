import 'package:flutter/material.dart';
import 'package:mobile_project/components/faq_textfield.dart';

class FAQQuest extends StatelessWidget {
  final String headerText;
  final String bodyText;

  const FAQQuest({
    super.key,
    required this.headerText,
    required this.bodyText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      FAQTextfiled(
        text: headerText,
        weight: FontWeight.normal,
        fontSize: 18,
      ),
      const SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: FAQTextfiled(
          text: bodyText,
          weight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
    ]);
  }
}
