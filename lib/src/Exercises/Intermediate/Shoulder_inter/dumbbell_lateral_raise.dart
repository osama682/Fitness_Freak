import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class dumbbell_lateral_raise extends StatelessWidget {
  const dumbbell_lateral_raise({Key? key}) : super(key: key);

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
                "Dumbbell Lateral Raise",
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
                  'assets/Dumbbell_lateral_raise_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Pick your weights\n 2. When setting up for DLBs you want to get in an athletic stance by leaning your torso slightly forward at the hips, bending slightly at the knees, and holding the dumbbells together in front of your thighs. That way you’ll better maintain your balance while also allowing gravity to maximize tension on the side deltoids from the slight lean forward. \n3. To execute the lift, maintain a slight bend in the elbows then lift the dumbbells up and slightly back to effectively hit the fibers in the medial head. Keep the hands higher than the elbows and stop when the dumbbells the same height as your head. Slowly lower the weights back down and repeat for the desired number of repetitions.",
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
