import 'package:flutter/material.dart';
import 'package:mobile_project/components/custom_drawer.dart';
import 'package:mobile_project/components/my_appbar.dart';

class DguAllData extends StatelessWidget {
  const DguAllData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: "Подробности",
      ),
      drawer: CustomDrawer(),
      body: Text("WORKED"),
    );
  }
}
