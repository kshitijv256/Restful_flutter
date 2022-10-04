import 'package:flutter/material.dart';

import 'main.dart';

class BarChartTile extends StatelessWidget {
  BarChartTile({super.key, required this.label, required this.value});

  final maxPercentage = change[7];
  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(label),
              ),
              SizedBox(
                height: 30,
                width: 180,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: (value / maxPercentage).abs(),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                value > 0 ? Colors.green.shade700 : Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                value >= 0
                    ? Icon(Icons.arrow_drop_up_rounded,
                        color: Colors.green.shade700)
                    : const Icon(Icons.arrow_drop_down_rounded,
                        color: Colors.red),
                Text(value.toStringAsFixed(1) + ' %',
                    style: TextStyle(
                        color: value > 0 ? Colors.green.shade700 : Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
