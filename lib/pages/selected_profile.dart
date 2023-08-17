import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/navbar.dart';
import '../widgets/topbar.dart';

class SelectedProfile extends StatefulWidget {
  const SelectedProfile({super.key});

  @override
  State<SelectedProfile> createState() => _SelectedProfileState();
}

class _SelectedProfileState extends State<SelectedProfile> {
  bool _isSwitchOn = false;
  bool _isSwitchOn1 = false;
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
                  ProfileWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileInformation(),
                      Container(
                        width: 445,
                        height: 350,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              height: 180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'User Role',
                                        style: GoogleFonts.openSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2d3748),
                                          height: 25 / 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Role:',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          ),
                                          Text(
                                            ' Developer',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'On Going Task:',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          ),
                                          Text(
                                            ' Develop the home screen and menu screen',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Future Task:',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          ),
                                          Text(
                                            ' Develop the Dashboard',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff718096),
                                              height: 18 / 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 26,
                                      height: 26,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 26,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffffffff),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.1), // Shadow color
                                                spreadRadius:
                                                    1, // Spread radius
                                                blurRadius: 8, // Blur radius
                                                offset: Offset(
                                                    0, 1), // Shadow offset
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.edit_outlined,
                                            size: 12,
                                            color: Color(0xFFf9ce6c),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'User Settings',
                                    style: GoogleFonts.openSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff2d3748),
                                      height: 25 / 18,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'ACCOUNT',
                                    style: GoogleFonts.openSans(
                                      fontSize: 9.999999046325684,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffa0aec0),
                                      height: 15 / 9.999999046325684,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Switch(
                                        value: _isSwitchOn,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _isSwitchOn = newValue;
                                          });
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Delete Account',
                                        style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffd65656),
                                          height: 18 / 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Switch(
                                        value: _isSwitchOn1,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _isSwitchOn1 = newValue;
                                          });
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'De-Activate Account',
                                        style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffd65656),
                                          height: 18 / 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      WalletCard(),
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

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 200,
        color: Color(0xFFF8F9FA),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 135, 47, 64),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 20),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color.fromRGBO(242, 243, 243, 0.804)),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          15), // Adjust the radius as needed
                      child: Image.asset(
                        'assets/images/manish.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Manish",
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2d3748),
                            height: 25 / 18,
                          ),
                        ),
                        Text(
                          "Developer",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff718096),
                            height: 20 / 14,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 445,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Information',
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff2d3748),
              height: 25 / 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hi, I’m Ipshita Kaur, Senior designer here at Ricoz. I’ve been a part of this family for more than a year now. I believe one can learn something new everyday and that there is no age for learning.',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xffa0aec0),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Full Name:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              Text(
                ' Ipshita Kaur',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Mobile:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              Text(
                ' +91 12345 54321',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Email:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              Text(
                ' ipshitakaur@gmail.com',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Location:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              Text(
                ' New Delhi, India',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Employed on:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              Text(
                ' 14/12/2021',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Social Media:',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff718096),
                  height: 18 / 12,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/facebook.png'),
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/twitter.png'),
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/instagram.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 245,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    color: Color(0xFFF9CE6C),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset('assets/images/wallet.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Salary',
                style: GoogleFonts.openSans(
                  fontSize: 17.999998092651367,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d3748),
                  height: 25 / 17.999998092651367,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Per Month for 6 months',
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffa0aec0),
                  height: 18 / 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '₹60,400',
                style: GoogleFonts.openSans(
                  fontSize: 18.000001907348633,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d3748),
                  height: 25 / 18.000001907348633,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 26,
              height: 26,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 8, // Blur radius
                        offset: Offset(0, 1), // Shadow offset
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.edit_outlined,
                    size: 12,
                    color: Color(0xFFf9ce6c),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
