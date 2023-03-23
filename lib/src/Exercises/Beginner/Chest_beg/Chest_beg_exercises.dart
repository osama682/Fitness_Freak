import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/Above_head_stretch.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/bench_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/chest_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/dumbbell_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/incline_dumbbell_fly.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/upper_chest.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mychest_beg extends StatelessWidget {
  const Mychest_beg({Key? key}) : super(key: key);

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
        title: Text("Beginner Chest Exercises"),
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
                        "https://tse2.mm.bing.net/th?id=OIP.BzngKycw-CoVvyZKUoeQagHaEG&pid=Api&P=0"),
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
                    "3 sets of 10-12 reps",
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

              //2.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.F6_p4aTaeyulJfKQbyGXdAHaIj&pid=Api&P=0"),
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
                    "3 sets of 10-12 reps",
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

              //3.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.yUi7hzvDDUGbv_SE8jDk2AHaEp&pid=Api&P=0"),
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
                    "3 sets of 10-12 reps",
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
              //4.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.r2fUmSu9lWNjGFLCC85F1wHaEK&pid=Api&P=0"),
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
                    "3 sets of 10-12 reps",
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
              //5.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.hVVrs1P8T5DMAurlRFWkCAHaE7&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Upper Chest",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "3 sets of 10-12 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const Myupper_chest(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              //6.
              //
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.AWF4sDPBMC92wMvncIpQ2QHaE6&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Above Head Chest Stretch",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF14CDA2),
                    ),
                  ),
                  subtitle: Text(
                    "3 sets of 10-12 reps",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Get.to(
                      () => const MyAbove_head(),
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
