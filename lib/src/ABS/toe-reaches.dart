import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class toe_reaches extends StatelessWidget {
  const toe_reaches({Key? key}) : super(key: key);

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
// backgroundColor: Color(0xFF343458),
        backgroundColor: Color(0xFF10C69B),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Toe reaches",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
// color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Image.asset(
                  'assets/toe-reaches.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Lay on your back, with your legs extending up vertically towards the ceiling.\n2. Extend your arms forward, keeping them straight. They should be parallel to your legs.\n3. Crunch forwards, reaching up to your toes with your outstretched arms. Your head, shoulders, and upper back should come off the ground when performing a toe touch.\n4. Lower yourself, and repeat steps 2 and 3. Aim for 8-12 reps and 3 sets.\n",
                  style: TextStyle(fontSize: 17, color: Colors.white70),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
