import 'package:flutter/material.dart';
import 'package:mobile_project/components/models/rent_model.dart';
import 'package:mobile_project/components/my_button.dart';
import 'package:mobile_project/components/rent_comp/rent_dgu_alldate.dart';
import 'package:mobile_project/components/rent_comp/rent_text.dart';

class RentContainer extends StatefulWidget {
  final String? name;
  final String? startDate;
  final String? endDate;
  final int? power;
  final int? lastForTO;
  final int? payment;
  final String? deposit;
  final String? place;
  final String? contractor;
  final Rent curRent;

  // ignore: prefer_const_constructors_in_immutables
  RentContainer({
    super.key,
    this.name,
    this.startDate,
    this.endDate,
    this.power,
    this.lastForTO,
    this.payment,
    this.deposit,
    this.place,
    this.contractor,
    required this.curRent,
  });

  @override
  State<RentContainer> createState() => _RentContainerState();
}

class _RentContainerState extends State<RentContainer> {
  void getSpecifiedRent(Rent curRent) {
    /*showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );*/
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DguAllData(rent: curRent)));
  }

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
                text: widget.name != null ? widget.name.toString() : "",
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
                      text: "Дата начала: ${widget.startDate}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Дата конца: ${widget.endDate}",
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
                      text: "Мощность: ${widget.power}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Осталось до ТО: ${widget.lastForTO}",
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
                      text: "Оплата: ${widget.payment}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Залог: ${widget.deposit}",
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
                      text: "Местоположение: ${widget.place}",
                      fontSize: 17,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    child: RentText(
                      text: "Кому сдана: ${widget.contractor}",
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: MyButton(
                text: "Подробнее",
                onTap: () => getSpecifiedRent(widget.curRent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
