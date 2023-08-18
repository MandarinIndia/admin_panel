import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../widgets/topbar.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 5,
      children: [
        ServiceData(),
        ServiceData(),
        ServiceData(),
        ServiceData(),
        ServiceData(),
        ServiceData(),
        ServiceData(),
        ServiceData(),
      ],)
    );
  }
}



class ServiceData extends StatelessWidget {
  const ServiceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 270,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
            ),
            SizedBox(height: 20,),
            Text("//")
          ],
        );
  }
}