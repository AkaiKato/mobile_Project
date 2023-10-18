import 'package:flutter/material.dart';
import 'package:mobile_project/components/rent_comp/rent_text.dart';

class RentContainer extends StatelessWidget {
  final String name;
  final String startDate;
  final String endDate;
  final String power;
  final String lastForTO;
  final String payment;
  final String deposit;

  const RentContainer(
      {super.key,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.power,
      required this.lastForTO,
      required this.payment,
      required this.deposit});

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
                text: name,
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
                      text: "Дата начала: $startDate",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Дата конца: $endDate",
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
                      text: "Мощность: $power",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Осталось до ТО: $lastForTO",
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
                      text: "Оплата: $payment",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Залог: $deposit",
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
