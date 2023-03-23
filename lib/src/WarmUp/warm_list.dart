import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:fitness_freak/src/WarmUp/warm_up_supporting_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_band_assisted.dart';
import 'package:fitness_freak/src/WarmUp/warmup_bearcrawl.dart';
import 'package:fitness_freak/src/WarmUp/warmup_one_arm_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_simple_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_triceps_dips.dart';
import 'package:fitness_freak/src/WarmUp/warmup_twisting_hypertension.dart';
import 'package:fitness_freak/src/WarmUp/warmup_tyre_flips.dart';
import 'package:fitness_freak/src/WarmUp/warmup_wholebody_ex.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mywarm_list extends StatelessWidget {
  const Mywarm_list({Key? key}) : super(key: key);

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
        title: Text("WarmUp Exercises"),
        backgroundColor: Color(0xFF14CDA2),
      ),
      drawer: Mydrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://tse1.mm.bing.net/th?id=OIP.5mAGLjZfQnUs0lfATD_wAQHaJQ&pid=Api&P=0"),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.15),
              BlendMode.modulate,
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
          child: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              // 1.

              //2.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/push.png"),
                  backgroundImage: NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.CRbvByMOO6_hjyFFQC-8tgHaE8&pid=Api&P=0"),
                ),
                title: Text(
                  "PushUps",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "12-15 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mywarmup_pushup(),
                    transition: Transition.rightToLeft,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
              //3.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/one.png"),
                  backgroundImage: NetworkImage(
                      "https://tse1.mm.bing.net/th?id=OIP.ndJvaEOiYGQTD6A3-Q1E7AHaEK&pid=Api&P=0"),
                ),
                title: Text(
                  "One Arm Pushup",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "5 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mywarmup_one_arm_pushup(),
                    transition: Transition.rightToLeft,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
              //4.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/bars.png"),
                  backgroundImage: NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.M-xn4NOj0R1p0R7TQnH2zQHaE8&pid=Api&P=0"),
                ),
                title: Text(
                  "Supporting Bar Pushups",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "5 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mywarmup_supp_pushup(),
                    transition: Transition.rightToLeft,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
              //5.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/tri.png"),
                  backgroundImage: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.GuqhiX2pEu5tbIrhv_DAbgHaFj&pid=Api&P=0"),
                ),
                title: Text(
                  "Triceps Dips",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "8 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mywarmup_tri_dips(),
                    transition: Transition.rightToLeftWithFade,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
              //6.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/whole.png"),
                  backgroundImage: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.xgMpbewFb9LNaBxxRad1SwHaE8&pid=Api&P=0"),
                ),
                title: Text(
                  "WholeBody Workout",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "5 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mywarmup_wholebody(),
                    transition: Transition.rightToLeftWithFade,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
              //7.
              ListTile(
                iconColor: Color(0xFF14CDA2),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // backgroundImage: AssetImage("assets/tyre.png"),
                  backgroundImage: NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.fvOMFeAww6IP8aNGlw-ZlgHaE7&pid=Api&P=0"),
                ),
                title: Text(
                  "Tyre Flips",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14CDA2),
                  ),
                ),
                subtitle: Text(
                  "5 reps",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Get.to(
                    () => const Mytyre_flips(),
                    transition: Transition.rightToLeftWithFade,
                    // duration: Duration(seconds: 1),
                  );
                },
              ),
            ]).toList(),
          ),
        ),
      ),
    );
  }
}
