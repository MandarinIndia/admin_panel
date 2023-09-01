import 'package:admin_panel/pages/dashboard.dart';
import 'package:admin_panel/pages/other_profiles.dart';
import 'package:admin_panel/pages/pricing.dart';
import 'package:admin_panel/pages/reels.dart';
import 'package:admin_panel/pages/selected_profile.dart';
import 'package:admin_panel/pages/services.dart';
import 'package:admin_panel/pages/testimonies.dart';
import 'package:admin_panel/widgets/graphs/bar%20graph/bar_graph.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
    20,
    40,
    50,
    30,
    100,
    80,
    150
  ];
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xFFF8F9FA),
        primaryColor: Color(0xFF2d3748),
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.openSans(
            fontWeight: FontWeight.w700,
            fontSize: 12,
          )
        )
      ),
      home: MyBarGraph(weeklySummary: weeklySummary)
    );
  }
}
