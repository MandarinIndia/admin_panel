import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
  final List<FlSpot> data1 = [
    FlSpot(0, 3),
    FlSpot(1, 1),
    FlSpot(2, 4),
    FlSpot(3, 2),
    FlSpot(4, 5),
    FlSpot(5, 1),
    FlSpot(6, 1),
    FlSpot(7, 3),
    FlSpot(8, 5),
  ];

  final List<FlSpot> data2 = [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 2),
    FlSpot(3, 4),
    FlSpot(4, 1),
    FlSpot(5, 3),
    FlSpot(6, 3),
    FlSpot(7, 3),
    FlSpot(8, 3),
  ];
  final List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','July', 'Aug', 'Sept'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTextStyles: (context, value) => TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            bottomTitles: SideTitles(
              getTitles: (value) {
                if (value.toInt() >= 0 && value.toInt() < months.length) {
                  return months[value.toInt()];
                }
                return '';
              },
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTextStyles: (context, value) => TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            topTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: const Color(0xff37434d),
              width: 1,
            ),
          ),
          minX: 0,
          maxX: months.length - 1,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: data1,
              isCurved: true,
              colors: [Colors.blue],
              dotData: FlDotData(show: false),
            ),
          LineChartBarData(
              spots: data2,
              isCurved: true,
              colors: [Color(0xFFF9CE6C)], // Change color for the second line
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}