import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class wrist_roller extends StatelessWidget {
  const wrist_roller({Key? key}) : super(key: key);

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
                "Wrist Roller",
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
                  'assets/wrist_roller_biceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Simply take a length of strong broomstick, about 24 inches should do, and drill a small hole in the middle. The thicker your handle, the harder your forearm and grip workout will be. You can also use a larger PVC pipe for a thicker grip.\n2. Next, tie a 4 to 5-foot length of strong cord to the handle, using the hole to secure one end in place. Check your knots to make sure the cord won’t come loose.\n3. Finally, tie a weight to the other end. Good options include a milk jug, water bottle, or even a grocery bag with a few cans inside. You could also use any weight plates or dumbbells you have around.\n4. If you wish, you can also wrap the handle with athletic grip tape, so your hands won’t slip.\n",
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
