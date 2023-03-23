import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class landmine_press extends StatelessWidget {
  const landmine_press({Key? key}) : super(key: key);

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
                "Landmine Press",
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
                  'assets/landmine_press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Insert one end of a barbell into a landmine base or the corner of a wall, placing a 25- or 45-pound plate on top of the sleeve. (Place a towel between the bar and the wall to avoid scuffing the wall.) Load the other end of the barbell with weight plates. \n2. Place the same-side knee as your pressing arm on the floor and then plant your other foot on the floor. The sleeve of the barbell should sit about six to eight inches in front of your knee. \n3. Grab the end of the sleeve with your hand and clean it to shoulder-height. Brace your core and ensure that your back is straight. \n4. Lean forward slightly. Press the bar overhead until your elbow locks out; you should be pressing on a slight diagonal angle, not directly up and down. \n5. Lower the weight back down under control. Re-brace your abs and then initiate the next rep.\n",
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
