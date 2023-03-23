import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/Above_head_stretch.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/bench_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/chest_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/dumbbell_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/incline_dumbbell_fly.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/upper_chest.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/decline_dumbbell_chest_press.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/dumbbell_chest_wide_arm.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/dumbbell_flies.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/incline_bench_press.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/incline_dumbbell_press.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/korean_straight_dips.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/parallel_bar_dips.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Chest_inter/Chest_dip.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Wings_inter/adjustable_dumbbells.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class expert_chest extends StatelessWidget {
  const expert_chest({Key? key}) : super(key: key);

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
        title: Text("Expert Chest Exercises"),
        backgroundColor: Color(0xFF14CDA2),
      ),
      drawer: Mydrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/chest_back.png"),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.15),
              BlendMode.modulate,
            ),
            fit: BoxFit.fill,
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
                        "https://tse2.mm.bing.net/th?id=OIP.gnuCFS2P-4_HW1QpdHVedgHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Pull Over",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const adjustable_dumbbells(),
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
                        "https://tse3.mm.bing.net/th?id=OIP.IgVHlTA5waqa_gBgx--JOwHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Bench Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const Mybench_press(),
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
                        "https://tse4.mm.bing.net/th?id=OIP.GeBGXxBK18mPOzeuoai28AHaLG&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Chest Dips",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const chest_dip(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //4.
              // Container(
              //   child: ListTile(
              //     leading: CircleAvatar(
              //       backgroundColor: Colors.transparent,
              //       // backgroundImage: AssetImage("assets/bear.png"),
              //       backgroundImage: NetworkImage(
              //           "https://tse2.mm.bing.net/th?id=OIP.BzngKycw-CoVvyZKUoeQagHaEG&pid=Api&P=0"),
              //     ),
              //     iconColor: Color(0xFF14CDA2),
              //     title: Text(
              //       "Chest fly",
              //       style: TextStyle(
              //         fontSize: 19,
              //         fontWeight: FontWeight.bold,
              //         color: Color(0xFF14CDA2),
              //       ),
              //     ),
              //     subtitle: Text(
              //       "5 sets of 15-18 reps",
              //       style: TextStyle(color: Colors.white70),
              //     ),
              //     trailing: Icon(Icons.keyboard_arrow_right),
              //     onTap: () {
              //       Get.to(
              //         () => const (),
              //         transition: Transition.rightToLeftWithFade,
              //         duration: Duration(seconds: 1),
              //       );
              //     },
              //   ),
              // ),

              //5.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.FmdAWV5dM5hftx0iNzQebQHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Chest Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const Mychest_press(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //6.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.mvhQvl5_FCi7jZhxygrn5gHaEo&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Flies",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const dumbbell_flies(),
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
                        "https://tse3.mm.bing.net/th?id=OIP._5K0zzl2GABfbSPcn5k9egHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Chest Wide Arm",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const dumbbell_chest_wide_arm(),
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
                        "https://tse2.mm.bing.net/th?id=OIP.uCAbXMGpLwpG7W853CzSHwHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Decline Dumbbell Chest Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const decline_dumbbell_chest_press(),
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
                        "https://tse1.mm.bing.net/th?id=OIP.KBQwkoLDBfAujbnZ-OJ6FAHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Incline Bench Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const incline_bench_press(),
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
                        "https://tse1.mm.bing.net/th?id=OIP.b-fCAW4RrwBhG8Ux3rOiQAHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Incline Dumbbell Fly",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const Myincline_fly(),
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
                        "https://tse4.mm.bing.net/th?id=OIP.K9-8cDQOonkL_gUJVnjo2AHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Korean Straight Bar Dips",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const korean_straight_dips(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //12.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.ECEloA1zGFcA5gMAaB5W_wHaEn&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Parallel Bar Dips",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const parallel_bar_dips(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //13.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.pBRiHkjqbJqaVnkR0RRxxAHaFL&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Incline Dumbbell Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const incline_dumbbell_press(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //14.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.BzngKycw-CoVvyZKUoeQagHaEG&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Press",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "5 sets of 15-18 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const Mydumbbell_press(),
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
