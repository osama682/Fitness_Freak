import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Alternate_dumbbell_front_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Barbell_Shoulder_Press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Cable_one_arm_front_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Dumbbell_Seated_Alternate_Front_Raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/LeverShrug.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/One_arm_lateral_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Seated_shoulder_dumbel_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/weight_plate_front_raise.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/barbell_shrug.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/barbell_upright.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/dumbbell_lateral_raise.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/dumbbell_z_press.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/dumbell_upright_row.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/lanmine_press.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/lateral_machine.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/scott_press.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/seated_behind_neck.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/shoulder_press_machine.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/single_arm_arnoldpress.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/upright_alternative.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/wide_cross.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inter_shoulder extends StatelessWidget {
  const inter_shoulder({Key? key}) : super(key: key);

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
        title: Text("Intermediate Shoulder Exercises"),
        backgroundColor: Color(0xFF14CDA2),
      ),
      drawer: Mydrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://tse4.mm.bing.net/th?id=OIP.JHzfP6Ukmev6gZHmPKfNqwHaLI&pid=Api&P=0"),
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
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.PCwBL8rDBev0puS2nfmXnAAAAA&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Lever-Shrug",
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
                      () => const levershrug(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 2.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.H8OVjk84Ndfv70XYQFAZuwHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Barbel Upright Row",
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
                      () => const barbell_upright(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 3.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.Cu_6-BWPBrQp8nEWb8KJwwHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Barbell Shrug",
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
                      () => const barbell_shrug(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 4.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.XrE1lNTwrR0CkDXe6t-KxQHaFN&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Lateral Raise",
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
                      () => const dumbbell_lateral_raise(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 5.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.ArAwUHvm3h827n-EE1ccbAHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Z Press",
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
                      () => const dumbbell_z_press(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 6.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.Cfvs1m2OGKr0-ocpt3j5ygHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Upright Row",
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
                      () => const dumbbell_upright_row(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 7.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.tp3ihwvPHHLDzhQonbt8FAHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Landmine Press",
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
                      () => const landmine_press(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 8.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.0WZACzHymDzEPYG0f7A61AHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Lateral Machine",
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
                      () => const lateral_machine(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 9.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.DVAxQdtZx9mZ5cZ419FEgQHaHZ&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Shoulder Press Machine",
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
                      () => const shoulder_press_machine(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 10.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.UuTqP4rqrRfMyxEBoWW4FAHaHa&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Scott Press",
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
                      () => const scott_press(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 11.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.YzIbSBY9YbSX6Mlrq76QtQHaEo&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Seated Behind Neck",
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
                      () => const seated_behind_neck(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 12.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.YXCjhFEGi4gYX5Cg2ia-7QHaEK&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "One Arm Arnold-Press",
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
                      () => const single_arm_arnoldpress(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 13.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.56Q20yiYhm06QI4wNSKjXgHaEo&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Upright Alternative",
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
                      () => const upright_alternative(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                ),
              ),
              // 14.
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.Fr0FvIwldg6Fds-Nr3tM2AHaEb&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Wide Cross",
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
                      () => const wide_cross(),
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
