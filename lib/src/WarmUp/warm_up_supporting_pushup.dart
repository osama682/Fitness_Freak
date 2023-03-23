import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class Mywarmup_supp_pushup extends StatelessWidget {
  const Mywarmup_supp_pushup({Key? key}) : super(key: key);

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
        backgroundColor: Color(0xFF14E5B3),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                " Push-up with\nsupporting bars",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Image.asset(
                'assets/Push_with_supportingbars_warmup.gif',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                "1. Facing the floor, balance your body with the arms positioned a little wider than the shoulders.\n2. Legs should be balanced on toes and make sure to maintain a straight body posture from head to toe.\n3. Should not bend or arch your body\n4. To begin, lower your body to the ground, bending the elbows, and return to the original position without lying or touching the ground.\n5. Make sure to inhale while you are going down and exhale while coming up.\n6. The bending elbows should be at a 90-degree angle and do not bend your back during the exercise. \n7. Repeat the exercise until you over-strain your body or do as much as your workout routine requirement.\n",
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
