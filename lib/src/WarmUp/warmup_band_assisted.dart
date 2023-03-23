import 'package:flutter/material.dart';

import '../SideBar/side_bar_6.dart';

class Myband_assisted extends StatelessWidget {
  const Myband_assisted({Key? key}) : super(key: key);

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
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Band assisted run",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  // fontFamily: 'ACETONE',
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
                  'assets/Band_assisted_sprinter_run.gif',
                  // width: 350,
                  // height: 250,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "1. Find an elevated surface. Elevated one-armed push-ups are a good way to start. The idea is that by using a raised surface, your legs take on more body weight and give you a mechanical advantage. The push-up is therefore easier to accomplish.Try a countertop, steps, couch, or wall at home. If you are outdoors, a bench or bar will do.Keep in mind that the higher you angle your body, the more body weight your legs will support and the easier the push-up will be.Don’t overdo it. Find a surface and inclination that suit your current strength level and work from there.\n2 .Lean in with your feet spread apart. Besides inclination, your feet will also make a difference. Namely, the push-up will be easier if they are wider apart. Stand with your feet positioned a bit wider than your shoulders, and slowly lower yourself into push-up position on the elevated surface.Some purists think that one-armed push-ups should be done with the feet together. You don’t need to follow this rule absolutely. You can also start wide and gradually move your feet inward as you progress.It’s a good idea to start with your dominan arm. In other words, whichever arm you favor and that is naturally stronger. You can alternate arms, as well.As you get in a starting position, let your free arm rest behind your back or against one leg.\n3 .Lower yourself. Slowly and deliberately lower your body until your chest almost touches the elevated surface. Your supporting arm should be bent at an acute angle of less than 90 degrees. If you want, hold this position for a few seconds.Some people advise keeping your whole body tense during the downward motion. This is supposed to help you explode upward. It will also keep your spine straight and reduce the risk of injury.Keep your bent arm back and close to your body, not jutting out like a chickenwing. Flaring your elbow out can lead to shoulder and rotator cuff injuries.Brace your abs and clench your gluteal muscles — that is, the muscles around your torso and bum.\n4. Push upward. Push away from the incline and back to the starting position in a single, fluid motion. The body tension you have generated before and during this move should help you to explode upward and finish the first rep.Imagine that you are pushing the floor away rather than pushing yourself up. This image should let you generate more tension and engage more muscle groups.\n5. Repeat and change sides. Repeat the above steps and complete a full set of reps. Then, switch to the other side. For instance, if you started with right-armed push-ups, try it with your left arm. Adjust your elevation height to suit any differences in strength.Try to do about six reps comfortably in a set to start. In other words, you should be able to do the full push-up motion in good form.\nIf you are bold, try another set of reps after resting a few hours. Doing the reps while fresh will encourage you to use good form and build up greater power and endurance.Once you feel good at a certain level, lower the inclination and raise the weight resistance. Continue to repeat these steps until you have reached the ground.\n",
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
