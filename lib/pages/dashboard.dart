import 'package:admin_panel/pages/pricing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<double> weeklySummary = [
    20,
    40,
    50,
    30,
    100,
    80,
    150
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 10, right: 30),
          child: Container(
            width: double.infinity,
            height: double.maxFinite,
            child: Row(children: [
              const NavBar(),
              Expanded(
                child: Container(
                  child: Column(children: [
                    const NewTopBar(),
                    const SizedBox(
                      height: 30,
                    ),
                    //Stack
                    Container(
                      height: 390,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFfedd16d),
                                  Color(0xFFc1ab5d)
                                ], // Replace with your desired gradient colors
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 55,
                            left: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello Rajesh !',
                                  style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFffffff),
                                    height: 48 / 40,
                                  ),
                                ),
                                Text(
                                  'We are on a mission to help like you beautiful projects for free',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFffffff),
                                    height: 30 / 23,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 30,
                            child: Container(
                              width: 180,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFfaca595),
                                    Color(0xFF7d7b88)
                                  ], // Replace with your desired gradient colors
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/Voice 3.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Announcements",
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFFffffff),
                                      height: 20 / 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

