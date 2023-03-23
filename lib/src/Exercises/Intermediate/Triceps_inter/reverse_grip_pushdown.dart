import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class reverse_grip_pushdown extends StatelessWidget {
  const reverse_grip_pushdown({Key? key}) : super(key: key);

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
                "Reverse Grip Pushdown",
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
                  'assets/Reverse_grip_pushdown_triceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Find a high pulley machine or any similar piece of equipment - it might be called a tricep pushdown machine, a cable machine, press machine, or any number of other combinations of those terms. You can also use a lat pulldown machine with a straight bar although most personal trainers and weightlifters tend to use V-bars or tricep ropes on a cable machine.\n2. Set your weight. We highly recommend using a moderate amount of weight that will still give you the feel of the exercise and help you learn the form without fatiguing or making errors.\n3. Stand about a foot away from the machine. Depending on how long your arms are, you might need to stand further back to give yourself room.\n4. Making sure the pulley is just above your head height, grab hold of your handle with an overhand grip. You can keep your feet together or slightly apart. Push your chest up like you’re deadlifting, hinge forward at the hip just a tiny bit, and bend your knees slightly.\n5. Pull the bar down to your chest and tuck your elbows into your sides. This is perhaps the single most important form tip for the tricep pushdown: do not let those elbows move behind your hips.\n6. Activate your core, inhale, and push down until your arms are nearly straight. Resist bending forward, keep a straight back, and keep that chest up.\n7. Exhale as you slowly bring the handle to around chest level. Your elbows should be just shy of 90 degrees when you’re back in the starting position.\n",
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
