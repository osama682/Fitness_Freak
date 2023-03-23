import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class Mywarmup_tri_dips extends StatelessWidget {
  const Mywarmup_tri_dips({Key? key}) : super(key: key);

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
        centerTitle: true,
        backgroundColor: Color(0xFF14E5B3),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Triceps Dips",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Image.asset(
                  'assets/Tricep-dips-warmup.gif',
                  // width: 350,
                  // height: 250,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Sit on the edge of a stable chair, weight bench, or step and grip the edge next to your hips. Your fingers should be pointed at your feet, your legs extended, and your feet about hip-width apart, with the heels touching the ground. Look straight ahead with your chin up.\n1. Press into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair.\n2. Lower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion.\n3. Push yourself back up slowly until your arms are almost straight, and repeat.\n",
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
