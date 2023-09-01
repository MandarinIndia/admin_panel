import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/navbar.dart';

class PricingPage extends StatefulWidget {
  const PricingPage({super.key});

  @override
  State<PricingPage> createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
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
                                  'Hello Devs !',
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
                          Positioned(
                            top: 130,
                            left: 30,
                            child: Subscription(
                              price: 'Rs.0',
                              txt1: 'Free',
                              usersInclued: '10 users Included',
                              storage: '2 GB of storage',
                              support: 'Email Support',
                              buttonTxt: 'Sign Up for free',
                              buttonTxtColor: Color(0xff8a92a6),
                              contColor: Colors.white,
                              borderColor: Color(0xff8a92a6),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 345,
                            child: Subscription(
                              price: 'Rs.15',
                              txt1: 'Pro',
                              usersInclued: '20 users Included',
                              storage: '10 GB of storage',
                              support: 'Priority Email support',
                              buttonTxt: 'Get Started',
                              buttonTxtColor: Color(0xffFFD01E),
                              contColor: Colors.white,
                              borderColor: Color(0xffFFD01E),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            right: 345,
                            child: Subscription(
                              price: 'Rs.29',
                              txt1: 'Enterprise',
                              usersInclued: '30 users Included',
                              storage: '15 GB of storage',
                              support: 'Call and email support',
                              buttonTxt: 'Get Started',
                              buttonTxtColor: Colors.white,
                              contColor: Color(0xffFFD01E),
                              borderColor: Color(0xffFFD01E),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            right: 30,
                            child: Subscription(
                              price: 'Rs.49',
                              txt1: 'Premium',
                              usersInclued: '50 users Included',
                              storage: '60 GB of storage',
                              support: '24 x 7 call support',
                              buttonTxt: 'Get Started',
                              buttonTxtColor: Colors.white,
                              contColor: Color(0xFFF16A1B),
                              borderColor: Color(0xFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Features
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Features',
                              style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff232d42),
                                height: 36 / 28,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Rs.0 / MONTH',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFFFFFFF),
                                      height: 30 / 23,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9CE6C),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Rs.0/ MONTH',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff232d42),
                                      height: 30 / 23,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9CE6C),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Rs.15/ MONTH',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff232d42),
                                      height: 30 / 23,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9CE6C),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Rs.29/ MONTH',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff232d42),
                                      height: 30 / 23,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9CE6C),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    'Rs.49/ MONTH',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff232d42),
                                      height: 30 / 23,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Features 1',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8a92a6),
                                          height: 28 / 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Features 2',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8a92a6),
                                          height: 28 / 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Features 3',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8a92a6),
                                          height: 28 / 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Features 4',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8a92a6),
                                          height: 28 / 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(
                                        'Features 5',
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff8a92a6),
                                          height: 28 / 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 200,
                                  child: const Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(CupertinoIcons.xmark),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(CupertinoIcons.xmark),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(CupertinoIcons.xmark),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: const Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(CupertinoIcons.xmark),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: const Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: const Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(Icons.check),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 200,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFD01E))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Free',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFD01E),
                                          height: 21 / 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFD01E))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Purchase',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFD01E),
                                          height: 21 / 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFD01E))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Purchase',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFD01E),
                                          height: 21 / 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFFFD01E))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Purchase',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFD01E),
                                          height: 21 / 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //Payment
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Payments',
                            style: GoogleFonts.inter(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff232d42),
                              height: 36 / 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FREE',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Rs.0/mo',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BILLED YEARLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  Text(
                                    'Rs.0.00 BILLED MONTHLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFD01E),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Free',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        // height: 28 / 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PRO',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Rs.15/mo',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BILLED YEARLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  Text(
                                    'Rs.169.99 BILLED MONTHLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFD01E),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Buy Pro',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        // height: 28 / 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ENTERPRISE',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Rs.29/mo',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BILLED YEARLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  Text(
                                    'Rs.319.89 BILLED MONTHLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFD01E),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Buy Enterprise',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        // height: 28 / 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PREMIUM',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Rs.49/mo',
                                    style: GoogleFonts.inter(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff232d42),
                                      height: 33 / 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BILLED YEARLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  Text(
                                    'Rs.549.08 BILLED MONTHLY',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8a92a6),
                                      height: 28 / 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFD01E),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Buy Premium',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        // height: 28 / 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    //Features 1
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Features',
                            style: GoogleFonts.inter(
                              color: Color(0xFf8A92A6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 28 / 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Elements in Features
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 1',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 2',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 3',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 4',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(CupertinoIcons.xmark),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(CupertinoIcons.xmark),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Features 2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Features',
                            style: GoogleFonts.inter(
                              color: Color(0xFf8A92A6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 28 / 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Elements in Features
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 1',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 2',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 3',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(
                                  'Features 4',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(CupertinoIcons.xmark),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(CupertinoIcons.xmark),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.check),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Membership Option
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lifetime Membership',
                                  style: GoogleFonts.inter(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff232d42),
                                    height: 30 / 23,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna at turpis vulputate tincidunt et tincidunt velit pulvinar.\nHac leo curabitur semper id ipsum mi. Turpis egestas vel et diam.',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8a92a6),
                                  ),
                                ),
                                Text(
                                  'INCLUDED FEATURES',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8a92a6),
                                    height: 28 / 16,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_outlined,
                                          color: Color(0xff8a92a6),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Private forum access',
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8a92a6),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_outlined,
                                          color: Color(0xff8a92a6),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Private forum access',
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8a92a6),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_outlined,
                                          color: Color(0xff8a92a6),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Private forum access',
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8a92a6),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_box_outlined,
                                          color: Color(0xff8a92a6),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Private forum access',
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8a92a6),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 319,
                            color: Color(0xFF8A92A6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Rs.\n599',
                                  style: GoogleFonts.inter(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff232d42),
                                  ),
                                ),
                                Text(
                                  'No monthly subscripion,\n    you only pay once',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFD01E),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text(
                                    'Get Started',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff010100),
                                      height: 21 / 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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

class NewTopBar extends StatefulWidget {
  const NewTopBar({super.key});

  @override
  State<NewTopBar> createState() => _NewTopBarState();
}

class _NewTopBarState extends State<NewTopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 250,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFe9ecef),
            ),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  CupertinoIcons.search,
                  color: Color(0xFFADB5BD),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffadb5bd),
                      height: 24 / 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Image.asset('assets/images/Ellipse 176.png'),
            SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/Notification.png'),
            SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/Message.png'),
            SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/pfp.png'),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  'Rishav Bhardwaz',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff232d42),
                    height: 28 / 16,
                  ),
                ),
                Text(
                  'Marketing Administrator',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8a92a6),
                    height: 17 / 13,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class Subscription extends StatelessWidget {
  Subscription(
      {required this.price,
      required this.txt1,
      required this.usersInclued,
      required this.storage,
      required this.support,
      required this.buttonTxt,
      required this.buttonTxtColor,
      required this.contColor,
      required this.borderColor,
      super.key});
  String price;
  String txt1;
  String usersInclued;
  String storage;
  String support;
  String buttonTxt;
  Color buttonTxtColor;
  Color borderColor;
  Color contColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                price,
                style: GoogleFonts.inter(
                    fontSize: 22, fontWeight: FontWeight.normal),
              ),
              Text(
                "/mo",
                style: GoogleFonts.inter(
                    color: Colors.grey.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            txt1,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: Color(0xff232d42),
              height: 30 / 23,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            usersInclued,
            style: GoogleFonts.inter(
              // fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff8a92a6),
              height: 28 / 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            storage,
            style: GoogleFonts.inter(
              // fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff8a92a6),
              height: 28 / 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            support,
            style: GoogleFonts.inter(
              // fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff8a92a6),
              height: 28 / 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Help center access',
            style: GoogleFonts.inter(
              // fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff8a92a6),
              height: 28 / 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: borderColor,
                  ),
                  color: contColor),
              child: Text(
                buttonTxt,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: buttonTxtColor,
                  height: 21 / 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
