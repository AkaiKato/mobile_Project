import 'package:flutter/material.dart';
import 'package:mobile_project/components/custom_appbar.dart';
import 'package:mobile_project/components/custom_drawer.dart';
import 'package:mobile_project/components/rent_comp/rent_main_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        text: "Аренда",
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          RentContainer(
            name: "ADDo-60 инв.№ 104",
            startDate: "17.10.2023",
            endDate: "31.10.2023",
            power: "60",
            lastForTO: "350",
            payment: "646029",
            deposit: "Да",
          ),
          RentContainer(
            name: "ADDo-60 инв.№ 104",
            startDate: "17.10.2023",
            endDate: "31.10.2023",
            power: "60",
            lastForTO: "350",
            payment: "646029",
            deposit: "Да",
          ),
          RentContainer(
            name: "ADDo-60 инв.№ 104",
            startDate: "17.10.2023",
            endDate: "31.10.2023",
            power: "60",
            lastForTO: "350",
            payment: "646029",
            deposit: "Да",
          ),
        ],
      ),
    );
  }
}
