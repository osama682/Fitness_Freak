import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class korean_straight_dips extends StatelessWidget {
  const korean_straight_dips({Key? key}) : super(key: key);

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
                "Korean Straight Bar Dips",
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
                  'assets/Korean_Straight_Bar_Dips_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. To start with this first you need a horizontal bar, heighted should be better.\n2. Then jump and sit on it by balancing on your butt.\n3. Grab the bar with a pronated grip and arms straight above the bar.\n4. Now holding grip tight, bending elbows, and balancing on your arms you have to descend your body down to the bar.\n5. By inhaling and tightening the core lower yourself with back-arc till your arms make 90 degrees angle or till your lower side of your shoulder blade touches the bar.\n6. Then push yourself up by exhaling till your arms become straight and butt above the bar.\n7. Remember while pushing make sure to press your hips forwards so that your glutes never stumble at the bar.\n",
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
