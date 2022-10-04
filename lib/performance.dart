import 'dart:convert';

List<Performance> performanceFromJson(String str) => List<Performance>.from(
    json.decode(str).map((x) => Performance.fromJson(x)));

String performanceToJson(List<Performance> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Performance {
  Performance({
    this.id = 0,
    this.label = 'none',
    this.chartPeriodCode = 'none',
    this.changePercent = 0,
  });

  int id;
  String label;
  String chartPeriodCode;
  double changePercent;

  factory Performance.fromJson(Map<String, dynamic> json) => Performance(
        id: json["ID"],
        label: json["Label"],
        chartPeriodCode: json["ChartPeriodCode"],
        changePercent: json["ChangePercent"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Label": label,
        "ChartPeriodCode": chartPeriodCode,
        "ChangePercent": changePercent,
      };
}
