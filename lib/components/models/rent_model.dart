import 'package:intl/intl.dart';

class Rent {
  final int power;
  final String stationPosition;
  final String busyFrom;
  final String busyUntil;
  final String contractor;
  final int beforeNextMaintenance;
  final bool zalog;
  final String modeljImya;
  final int inventNumber;
  final String status;
  final int currentUsage;
  final int lastMaintenanceUsage;
  final String dateOfLastMaintenance;
  final int zip;
  final int price;
  final String prodlenie;
  final String usageTime;
  final String manager;
  final int payment;

  Rent({
    required this.power,
    required this.stationPosition,
    required this.busyFrom,
    required this.busyUntil,
    required this.contractor,
    required this.beforeNextMaintenance,
    required this.zalog,
    required this.modeljImya,
    required this.inventNumber,
    required this.status,
    required this.currentUsage,
    required this.lastMaintenanceUsage,
    required this.dateOfLastMaintenance,
    required this.zip,
    required this.price,
    required this.prodlenie,
    required this.usageTime,
    required this.manager,
    required this.payment,
  });

  factory Rent.fromJson(Map<dynamic, dynamic> json) {
    return Rent(
      power: int.parse('${json['power']}'),
      stationPosition: json['stationPosition'],
      busyFrom:
          DateFormat('dd-MM-yyyy').format(DateTime.parse(json['busyFrom'])),
      busyUntil:
          DateFormat('dd-MM-yyyy').format(DateTime.parse(json['busyUntil'])),
      contractor: json['contractor'],
      beforeNextMaintenance: int.parse('${json['beforeNextMaintenance']}'),
      zalog: json['zalog'],
      modeljImya: json['modeljImya'],
      inventNumber: int.parse('${json['inventNumber']}'),
      status: json['status'],
      currentUsage: int.parse('${json['currentUsage']}'),
      lastMaintenanceUsage: int.parse('${json['lastMaintenanceUsage']}'),
      dateOfLastMaintenance: DateFormat('dd-MM-yyyy')
          .format(DateTime.parse(json['dateOfLastMaintenance'])),
      zip: int.parse('${json['zip']}'),
      price: int.parse('${json['price']}'),
      prodlenie: json['prodlenie'] == "true" ? "Да" : "Нет",
      usageTime: json['usageTime'],
      manager: json['managerName'],
      payment: int.parse('${json['payment']['payed']}'),
    );
  }
}
