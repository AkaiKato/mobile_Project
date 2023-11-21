import 'package:flutter/material.dart';
import 'package:mobile_project/components/custom_drawer.dart';
import 'package:mobile_project/components/models/rent_model.dart';
import 'package:mobile_project/components/my_appbar.dart';
import 'package:mobile_project/components/rent_comp/rent_alldata_row.dart';

class DguAllData extends StatelessWidget {
  final Rent rent;

  const DguAllData({
    super.key,
    required this.rent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: "Подробности",
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
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
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RentRow(name: "Модель", info: rent.modeljImya),
                RentRow(name: "Мощность", info: rent.power),
                RentRow(name: "Местоположение", info: rent.stationPosition),
                RentRow(name: "Инвентарный №", info: rent.inventNumber),
                RentRow(name: "Статус", info: rent.status),
                RentRow(
                    name: "Наработка текущая, м/ч", info: rent.currentUsage),
                RentRow(
                    name: "Наработка при последнем ТО, м/ч",
                    info: rent.lastMaintenanceUsage),
                RentRow(
                    name: "Дата последнего ТО",
                    info: rent.dateOfLastMaintenance),
                RentRow(
                    name: "Осталось до ТО, м/ч",
                    info: rent.beforeNextMaintenance),
                RentRow(name: "ЗИП", info: rent.zip),
                RentRow(name: "Оплата", info: rent.payment),
                RentRow(name: "Цена", info: rent.price),
                RentRow(name: "Ответственный менеджер", info: rent.manager),
                RentRow(name: "Телефон", info: rent.managerNumber),
                RentRow(name: "Сдана с", info: rent.busyFrom),
                RentRow(name: "Сдана до", info: rent.busyUntil),
                RentRow(name: "Кому сдана", info: rent.contractor),
                RentRow(name: "Продление", info: rent.prodlenie),
                RentRow(name: "Наработка моточасов:", info: rent.usageTime),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
