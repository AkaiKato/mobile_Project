import 'package:flutter/material.dart';
import 'package:mobile_project/components/custom_appbar.dart';
import 'package:mobile_project/components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: "Аренда",
      ),
      drawer: CustomDrawer(),
    );
  }
}
