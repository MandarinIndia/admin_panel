import 'package:admin_panel/widgets/navbar.dart';
import 'package:admin_panel/widgets/topbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherProfilePage extends StatefulWidget {
  const OtherProfilePage({super.key});

  @override
  State<OtherProfilePage> createState() => _OtherProfilePageState();
}

class _OtherProfilePageState extends State<OtherProfilePage> {
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
                child: Column(
                  children: [
                    TopBar(),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      width: double.infinity,
                      height: 440,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Associates",
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "PROFILES",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffa0aec0),
                                  height: 15 / 10,
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                "  FUNCTION",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffa0aec0),
                                  height: 15 / 10,
                                ),
                              ),
                              Text(
                                "STATUS",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffa0aec0),
                                  height: 15 / 10,
                                ),
                              ),
                              Text(
                                "EMPLOYED",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffa0aec0),
                                  height: 15 / 10,
                                ),
                              ),
                              Text(""),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          MyData(
                            email: 'Ipshitakaur@gmail.com',
                            imagePath: 'assets/images/userpfp.png',
                            name: "Ipshita Kaur",
                            function1: "Manager",
                            function2: 'Organization',
                            statusColor: Color(0xFF48BB78),
                            status: "Online",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class MyData extends StatelessWidget {
  MyData(
      {required this.email,
      required this.imagePath,
      required this.name,
      required this.function1,
      required this.function2,
      required this.statusColor,
      required this.status,
      super.key});

  String name;
  String email;
  String imagePath;
  String function1;
  String function2;
  Color statusColor;
  String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                height: 33,
                width: 33,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    email,
                    style: GoogleFonts.openSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff718096),
                      height: 19.5 / 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 300,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(function1),
              Text(
                function2,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff718096),
                  height: 19.5 / 14,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
          ),
          Container(
            alignment: Alignment.center,
            width: 65,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: statusColor,
            ),
            child: Text(
              status,
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
                height: 20 / 14,
              ),
            ),
          ),
          SizedBox(
            width: 160,
          ),
          Text(
            '14/06/21',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff2d3748),
              height: 19.5 / 14,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "Edit",
              style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff718096),
                height: 18 / 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
