import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class military_press extends StatelessWidget {
  const military_press({Key? key}) : super(key: key);

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
                "Military Press",
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
                  'assets/military_press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. To do the military press it is important to warm up the shoulder joint first by circling the arms forwards and backward. You can then perform some reps such as bicep curls with a very light dumbbell to warm up the muscles.\n2. If you have a rack available then place a barbell about collarbone height for the starting position. If you don’t have a rack available you can lift your barbell from the floor engaging your core and keeping your lower back straight, to bring the barbell up so it’s resting on your upper chest/collar bone area.\n3. Start with a lighter weight on the bar if you are new to the move, as going too heavy can increase your risk of injury. Stand with your feet inside shoulder-width so they are close together. Place your hands so they are facing away from you with your grip shoulder-width apart.\n4. Keeping your core engaged and lower back straight, draw your elbows slightly forward (inside shoulder-width) and press straight up over your head. Exhale as you do this movement and think about squeezing the shoulder blades together at the top of the move. Do not arch your lower back and keep your knees soft rather than locked out.\n5. Slowly lower the barbell back down to your upper chest area as you inhale. That is one rep.  \n",
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
