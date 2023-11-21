import 'package:flutter/material.dart';
import 'package:mobile_project/components/rent_comp/rent_text.dart';

class AvalibleRentContainer extends StatefulWidget {
  final String? model;
  final String? modelEngine;
  final String? powerNominal;
  final String? typeDgu;
  final String? size;
  final String? weight;
  final String? yearIssue;
  final String? rashodAt100;
  final String? fuelVolume;

  // ignore: prefer_const_constructors_in_immutables
  AvalibleRentContainer({
    super.key,
    this.model,
    this.modelEngine,
    this.powerNominal,
    this.typeDgu,
    this.size,
    this.weight,
    this.yearIssue,
    this.rashodAt100,
    this.fuelVolume,
  });

  @override
  State<AvalibleRentContainer> createState() => _AvalibleRentContainerState();
}

class _AvalibleRentContainerState extends State<AvalibleRentContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: const EdgeInsets.only(bottom: 15, top: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 13, 20, 207),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: RentText(
                text: widget.model != null ? widget.model.toString() : "",
                fontSize: 25,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Модель двигателя: ${widget.modelEngine}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Номинальня мощность, кВт: ${widget.powerNominal}",
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Расход при 100%, л/ч: ${widget.rashodAt100}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Габариты, мм: ${widget.size}",
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Исполнение: ${widget.typeDgu}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Вес, кг: ${widget.weight}",
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Год выпуска: ${widget.yearIssue}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text:
                          "Емкость топливного бака, в литрах: ${widget.fuelVolume}",
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
