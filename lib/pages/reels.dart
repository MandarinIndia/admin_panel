import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/navbar.dart';
import '../widgets/topbar.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Color(0xFF08415C),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.file_upload_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Upload',
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffa0aec0),
                                height: 20 / 13,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 62,
                        width: 73,
                        decoration: BoxDecoration(
                            color: Color(0xFF08415C),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Latest',
                          style: GoogleFonts.openSans(
                            fontSize: 12.000000953674316,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 18 / 12.000000953674316,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 62,
                        width: 73,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Popular',
                          style: GoogleFonts.openSans(
                            fontSize: 12.000000953674316,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffa0aec0),
                            height: 18 / 12.000000953674316,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  GridB()
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({super.key});

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "@Manish",
      "desc": "Tips to coding on VsCode ",
      "images": "assets/images/Rectangle 55.png"
    },
    {
      "title": "@Ipshita",
      "desc": "Tips to coding on VsCode ",
      "images": "assets/images/Rectangle 56.png"
    },
    {
      "title": "@Radhika",
      "desc": "Tips to coding on VsCode ",
      "images": "assets/images/Rectangle 57.png"
    },
    {
      "title": "@Manav",
      "desc": "Tips to coding on VsCode ",
      "images": "assets/images/Rectangle 58.png"
    },
    {
      "title": "@Pulkit",
      "desc": "Tips to coding on VsCode ",
      "images": "assets/images/Rectangle 59.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            mainAxisExtent: 300),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.redAccent.shade100
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    "${gridMap.elementAt(index)['images']}",
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "${gridMap.elementAt(index)['title']}",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff08415c),
                    height: 26 / 20,
                  ),
                ),
                Text(
                  "${gridMap.elementAt(index)['desc']}",
                  style: GoogleFonts.openSans(
                    fontSize: 14.000000953674316,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffa0aec0),
                    height: 20 / 14.000000953674316,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
