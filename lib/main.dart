import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_app/overview.dart';
import 'package:rest_app/performance.dart';
import 'home_page.dart';

Overview overview = Overview();
List performance = [];
List change = [];

Future getOverview() async {
  var overviewUrl = Uri.parse(
      "https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en");
  var response = await http.get(overviewUrl);
  overview = overviewFromJson(response.body);
}

Future getPerformance() async {
  var performanceUrl = Uri.parse(
      "https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en");
  var response = await http.get(performanceUrl);
  performance = performanceFromJson(response.body);
  change = performance.map((e) => e.changePercent).toList();
  change.sort();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getOverview();
  await getPerformance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
