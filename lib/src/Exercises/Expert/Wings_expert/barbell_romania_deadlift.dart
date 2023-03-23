import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class barbell_romania extends StatelessWidget {
  const barbell_romania({Key? key}) : super(key: key);

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
                "Barbell Romanian Deadlift",
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
                  'assets/Barbell_Romanian_deadlift_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "Step 1: Stand with your feet hip to shoulder width apart and toes pointing ahead. Perform a deadlift to get the bar off the floor. Position the barbell over the midfoot.\n2. Squat down to the bar and grab the bar with palms facing you. Draw in and brace the abs. Lock the shoulder blades back and down and position the spine in neutral. Drive the hips back and position the shins as vertically as possible. Balance the weight evenly over the foot.\n3. Push into the floor to lift the bar, extending the knees and maintaining torso position. Keep the bar close to the body at all times.\n4. Once the bar has passed the knee now perform the RDL. Drive the hips forward through the bar until the glutes fully contract.\n5. Unlock the knees and reverse the pattern driving the hips back lowering the bar only as far as can be accomplished maintaining good posture and until the hamstrings are at full length.\n6. Repeat. Maintain posture throughout. Avoid overarching or slouching the spine, letting the shoulder round forward, locking the knees, or overextending the neck.\n",
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
