import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class chinups extends StatelessWidget {
  const chinups({Key? key}) : super(key: key);

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
                "Chin-Ups",
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
                  'assets/chinUp_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Start by grabbing the chin-up bar with an underhand grip—your palms facing toward you. Your grip should be shoulder-width. If you’re unable to grab the chin-up bar, stand on a plyometric box or a secure flat bench.\n2. Step off of the box and allow your legs to hang. Your arms and legs should be long. Your elbows should be slightly bent.\n3. Squeeze your glutes and quads and engage your core. Rotate your shoulders outward to engage your lats. Your shoulder blades should be upwardly rotated away from your spine. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin. Begin all repetitions from this position. \n4. Initiate the upward movement by simultaneously pulling your shoulder blades down and pulling your elbows towards your body. Continue to pull your shoulder blades toward your spine and squeeze your upper back and lat muscles until your collar bone reaches the chin-up bar.\n5. Pause for a second at the top of the movement.\n6. Begin the downward movement by simultaneously straightening your arms and allowing your shoulder blades to downwardly rotate and move away from your spine. Slowly lower your body back to the starting position. Your arms should be long with slight bend in your elbows.\n",
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
