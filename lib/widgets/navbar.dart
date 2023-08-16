import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 66,
            width: 177,
            fit: BoxFit.contain,
          ),
          Image.asset('assets/images/divider.png'),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/Home.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Dashboard",
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "     User Management",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2d3748),
              height: 18 / 12.000000953674316,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/Profile.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Your Profile",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xFFFBBC05),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset('assets/images/group.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Other Profiles",
                    style: GoogleFonts.openSans(
                      fontSize: 12.000000953674316,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffa0aec0),
                      height: 18 / 12.000000953674316,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "     Content Management",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2d3748),
              height: 18 / 12.000000953674316,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/Reels.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Reels",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/Review.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Testimonies",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/Product.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Products",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/service.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Services",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: 200,
            decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/course.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Courses",
                  style: GoogleFonts.openSans(
                    fontSize: 12.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 18 / 12.000000953674316,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
