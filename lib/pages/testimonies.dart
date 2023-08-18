import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/navbar.dart';
import '../widgets/topbar.dart';

class TestimoniesPage extends StatefulWidget {
  const TestimoniesPage({super.key});

  @override
  State<TestimoniesPage> createState() => TestimoniesPageState();
}

class TestimoniesPageState extends State<TestimoniesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10, right: 30),
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          child: Row(children: [
            NavBar(),
            Expanded(
              child: Container(
                child: Column(children: [
                  TopBar(),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyData(),
                      MyData()
                    ],
                  )
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class MyData extends StatelessWidget {
  const MyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        width: 600,
        height: 280 ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/testimonies.png',
                width: 100, // Adjust the width of the circular image
                height: 100, // Adjust the height of the circular image
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30), // Add spacing between the image and text
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffa0aec0),
                    ), // Show ellipsis when text overflows
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "RACHIT JOSHI",
                    style: GoogleFonts.openSans(
                      fontSize: 12.000000953674316,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2d3748),
                      height: 18 / 12.000000953674316,
                    ),
                  ),
                  Text(
                    'Student, design',
                    style: GoogleFonts.openSans(
                      fontSize: 14.000000953674316,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffa0aec0),
                      height: 20 / 14.000000953674316,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
