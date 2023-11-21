class AvalibleRent {
  String? modelName;
  String? modelEngine;
  String? powerNominal;
  String? dguType;
  String? size;
  String? weight;
  String? yearIssue;
  String? costAt100perc;
  String? fuelVolume;

  AvalibleRent({
    required this.modelName,
    required this.modelEngine,
    required this.powerNominal,
    required this.dguType,
    required this.size,
    required this.weight,
    required this.yearIssue,
    required this.costAt100perc,
    required this.fuelVolume,
  });

  factory AvalibleRent.fromJson(Map<dynamic, dynamic> json) {
    return AvalibleRent(
      modelName: json['model'],
      modelEngine: json['stationParm']['modelEngine'],
      powerNominal: json['stationParm']['powerNominal'].toString(),
      dguType: json['stationParm']['typeDgu'],
      size: json['stationParm']['size'],
      weight: json['stationParm']['weight'].toString(),
      yearIssue: json['stationParm']['yearIssue'],
      costAt100perc: json['stationParm']['rashodAt100'].toString(),
      fuelVolume: json['stationParm']['fuelVolume'].toString(),
    );
  }
}
