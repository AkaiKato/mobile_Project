import 'package:flutter/material.dart';
import 'package:mobile_project/components/my_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: "Сделки",
      ),
    );
  }
}
