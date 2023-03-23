import 'package:flutter/material.dart';

import '../SideBar/side_bar_6.dart';

class Mytwisting extends StatelessWidget {
  const Mytwisting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF14E5B3),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Twisting Hypertension",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Image.asset(
                  'assets/Twisting_hypertension.gif',
                  // width: 350,
                  // height: 250,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "1. Position yourself on the stand so your feet are secured and your hips are at the edge of the support pad.\n2. Next is place your hands behind your head and lower your torso down below parallel to the floor.\n3 .Now, hyperextend your torso upward while twisting to the left and contract your obliques.\n4. Lower your torso back down but now you’ll twist to the right as you extend back up while contracting your obliques.\n5. Repeat this exercise by alternating sides while hyperextending your back.",
                style: TextStyle(fontSize: 17, color: Colors.white70),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
