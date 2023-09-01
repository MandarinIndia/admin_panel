import 'package:admin_panel/widgets/graphs/bar%20graph/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        thursAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]);

    myBarData.initializeBarData();

    final List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thrus', 'Fri','Sat'];
    return BarChart(BarChartData(
        maxY: 200,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: SideTitles(showTitles: false),
          rightTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(showTitles: true,
          getTextStyles: (context, value) => TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
          getTitles: (value) {
                if (value.toInt() >= 0 && value.toInt() < days.length) {
                  return days[value.toInt()];
                }
                return '';
              },),
          leftTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 40,
              getTextStyles: (context, value) => TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),),
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                    y: data.y,
                    colors: [Color(0xFFF9CE6C)],
                    width: 20,
                    borderRadius: BorderRadius.circular(2),
                    )
                ]))
            .toList()));
  }
}

