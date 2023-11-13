import 'package:flutter/material.dart';
import 'package:mobile_project/components/rent_comp/rent_text.dart';

class RentRow extends StatelessWidget {
  final String name;
  final dynamic info;
  const RentRow({super.key, required this.name, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: RentText(text: "$name:", fontSize: 15),
          ),
        ),
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: RentText(text: info.toString(), fontSize: 15),
          ),
        ),
      ],
    );
  }
}
