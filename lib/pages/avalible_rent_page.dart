import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_project/components/custom_drawer.dart';
import 'package:mobile_project/components/models/avalible_rent_model.dart';
import 'package:mobile_project/components/my_appbar.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_project/components/rent_comp/avalible_rent_container.dart';

class AvalibleRents extends StatefulWidget {
  final int elmaId;
  final String verToken;
  const AvalibleRents({
    super.key,
    required this.elmaId,
    required this.verToken,
  });

  @override
  // ignore: no_logic_in_create_state
  State<AvalibleRents> createState() => _AvalibleRents(elmaId, verToken);
}

class _AvalibleRents extends State<AvalibleRents> {
  late Future<List<AvalibleRent>> rents;
  int elmaId = 0;
  String verToken = "";
  _AvalibleRents(this.elmaId, this.verToken);

  @override
  void initState() {
    super.initState();
    rents = fetchAvalibleRents(elmaId, verToken);
  }

  Future<List<AvalibleRent>> fetchAvalibleRents(
      int elmaId, String verToken) async {
    String url =
        'https://192.168.2.159:3128/GetFreeStations?id=$elmaId&token=$verToken';
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    final body = responce.body;
    final json = jsonDecode(body);
    final results = json as List<dynamic>;
    final rents = results.map((e) {
      return AvalibleRent.fromJson(e);
    }).toList();
    return rents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Доступные аренды"),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            FutureBuilder<List<AvalibleRent>>(
              future: rents,
              builder: (context, snapshot) {
                const CircularProgressIndicator();
                List<AvalibleRent> rents = snapshot.data ?? [];
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: rents.length,
                  itemBuilder: (context, index) {
                    AvalibleRent rent = rents[index];
                    return AvalibleRentContainer(
                      model: rent.modelName ?? "",
                      modelEngine: rent.modelEngine ?? "",
                      powerNominal: rent.powerNominal ?? "",
                      typeDgu: rent.dguType ?? "",
                      size: rent.size ?? "",
                      weight: rent.weight ?? "",
                      yearIssue: rent.yearIssue ?? "",
                      rashodAt100: rent.costAt100perc ?? "",
                      fuelVolume: rent.fuelVolume ?? "",
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
}
