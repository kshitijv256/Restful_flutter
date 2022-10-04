import 'package:flutter/material.dart';
import 'bar_chart_tile.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    // var overviewKeys = overview.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Submission by:  Kshitij Verma',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Overview',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 28, 44, 110)),
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sector',
                        style: TextStyle(
                          color: Color.fromARGB(255, 49, 69, 151),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance,
                            color: Colors.brown.shade200,
                          ),
                          Text(' ' + overview.sector),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Industry',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance,
                            color: Colors.brown.shade200,
                          ),
                          Text(' ' + overview.industry),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Market Cap',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text('${overview.mcap.toStringAsFixed(2)} Cr.'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Enterprise Value (EV)',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text(overview.ev != null ? overview.ev.toString() : '-'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Book Value / Share',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text(overview.bookNavPerShare.toStringAsFixed(2)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Price-Earning Ratio (PE)',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text(overview.ttmpe.toStringAsFixed(2)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('PEG Ratio',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text(overview.pegRatio.toStringAsFixed(2)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Dividend Yield',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 69, 151))),
                      Text(overview.overviewYield.toStringAsFixed(2)),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'View more',
                      style:
                          TextStyle(color: Color.fromARGB(255, 177, 145, 70)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 500,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Performance',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 37, 52, 110)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: BarChartTile(
                            label: performance[index].label,
                            value: performance[index].changePercent,
                          ),
                        );
                      },
                      itemCount: performance.length,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'View more',
                      style:
                          TextStyle(color: Color.fromARGB(255, 177, 145, 70)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
