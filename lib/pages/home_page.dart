import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_project/components/models/rent_model.dart';
import 'package:mobile_project/components/my_appbar.dart';
import 'package:mobile_project/components/custom_drawer.dart';
import 'package:mobile_project/components/rent_comp/rent_main_container.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  final int elmaId;
  final String verToken;

  const HomePage({
    super.key,
    required this.elmaId,
    required this.verToken,
  });

  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePageState(elmaId, verToken);
}

class _HomePageState extends State<HomePage> {
  late Future<List<Rent>> rents;
  int elmaId = 0;
  String verToken = "";
  _HomePageState(this.elmaId, this.verToken);
  @override
  void initState() {
    super.initState();
    rents = fetchRents(elmaId, verToken);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: "Аренда",
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            FutureBuilder<List<Rent>>(
              future: rents,
              builder: (context, snapshot) {
                const CircularProgressIndicator();
                List<Rent> rents = snapshot.data ?? [];
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: rents.length,
                  itemBuilder: (context, index) {
                    Rent rent = rents[index];
                    return RentContainer(
                      name: "${rent.modeljImya} №${rent.inventNumber}",
                      startDate: rent.busyFrom,
                      endDate: rent.busyUntil,
                      power: rent.power,
                      lastForTO: rent.beforeNextMaintenance,
                      payment: rent.payment,
                      deposit: rent.zalog ? "Да" : "Нет",
                      place: rent.stationPosition,
                      contractor: rent.contractor,
                      curRent: rent,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<List<Rent>> fetchRents(int elmaId, String verToken) async {
    String url =
        'https://192.168.2.159:3128/GetStationsByID?id=$elmaId&token=$verToken';
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    final body = responce.body;
    final json = jsonDecode(body);
    final results = json as List<dynamic>;
    final rents = results.map((e) {
      return Rent.fromJson(e);
    }).toList();
    return rents;
  }
}
