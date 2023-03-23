import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/Dumbbell_prearcher_curl.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/ez_bar_preacher_curl.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/neutral_grip.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/wrist_roller.dart';
// import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/barbell_reverse.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/bayesian_curl.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/close_grip_bar_curl.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/drag_curls.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/dumbbell_hammer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/dumbbell_reverse_curl.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/zottman_curl.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class biceps_inter_exer extends StatelessWidget {
  const biceps_inter_exer({Key? key}) : super(key: key);

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
        title: Text("Intermediate Biceps Exercises"),
        backgroundColor: Color(0xFF14CDA2),
      ),
      drawer: Mydrawer(),
      body: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://tse3.mm.bing.net/th?id=OIP.ADiMXyZ9PQyunF1H92lONwHaE8&pid=Api&P=0"),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.15),
              BlendMode.modulate,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
          child: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              // 1.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.i6ADrhR8xZrdOAaW4jOedgHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Prearcher Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const dumbbell_preacher_curl(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),

              //2.

              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.n-oJbYdEmK3pZ2jPvNAn_wHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Ez Bar Prearcher Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const ez_bar_preacher_curl(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),

              //3.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.H5aBwpf2m8TxmeTqpxFMfwHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Neutral Grip Bar Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const neutral_grip(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),

              //4.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.2ciyhh7kOYs7pTi4XgDa2QHaIW&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Wrist Roller",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const wrist_roller(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //5.

              //6.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.nbvszMMc1Y5I8S6F1nZaPQHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Bayesian Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const bayesian_crul(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //7.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.O33jUvd_t9yZI3aqsLB6egHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Close Grip Bar Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const close_grip(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //8.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.icI4T5kX_fxAfVPfJHF4OAHaE7&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Drag Curls",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const drag_curls(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //9.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.eVQqz2us4oeIK4brMag3KgHaEp&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Preacher Dumbbell Hammer",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const dumbbell_hammer(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //10.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.250SyvKnvfuIYwt6kaxfeQHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Reverse Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const dumbbell_reverse_curl(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //11.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.6bdKmtJFOPBNW7sYTikQuwHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Zottman Curl",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "4 sets of 12-15 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const zottman_curl(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
            ]).toList(),
          ),
        ),
      ),
    );
  }
}
