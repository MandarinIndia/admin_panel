import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Pages ',
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade400),
                ),
                Text(
                  "/ User Management",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Text(
              "Other Profiles",
              style: GoogleFonts.openSans(
                fontSize: 14.000000953674316,
                fontWeight: FontWeight.w700,
                color: Color(0xff2d3748),
                height: 20 / 14.000000953674316,
              ),
            )
          ],
        ),
        Row(
          children: [
            Image.asset('assets/images/Profile1.png'),
            SizedBox(
              width: 7,
            ),
            Text(
              "Sign In",
              style: GoogleFonts.openSans(
                fontSize: 14.250000953674316,
                fontWeight: FontWeight.w700,
                color: Color(0xff718096),
                height: 14.25 / 14.250000953674316,
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Image.asset(
              'assets/images/Settings.png',
            ),
            SizedBox(
              width: 7,
            ),
            Image.asset('assets/images/notifications.png'),
          ],
        )
      ],
    );
  }
}
