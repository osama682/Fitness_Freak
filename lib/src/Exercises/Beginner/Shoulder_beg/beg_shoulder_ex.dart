import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Alternate_dumbbell_front_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Barbell_Shoulder_Press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Cable_one_arm_front_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Dumbbell_Seated_Alternate_Front_Raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/LeverShrug.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/One_arm_lateral_raise.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/Seated_shoulder_dumbel_press.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/weight_plate_front_raise.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class beg_shoulder extends StatelessWidget {
  const beg_shoulder({Key? key}) : super(key: key);

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
        title: Text("Beginner Shoulder Exercises"),
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
                        "https://tse2.mm.bing.net/th?id=OIP.m-bAWFGOFQ6_l6ht_F0WGAHaE7&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Alternate Dumbbell Front Raise",
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
                      () => const alternate_dumbbell_front(),
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
                        "https://tse1.mm.bing.net/th?id=OIP.u62cxaxtLWAay7t8y8oZBQHaFL&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Barbell Shoulder Press",
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
                      () => const barbell_shoulder_press(),
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
                        "https://tse2.mm.bing.net/th?id=OIP.6TQhcIiyy-C5NuPKG56V9QHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Cable One Arm Front Raise",
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
                      () => const cable_one_arm_front(),
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
                        "https://tse2.mm.bing.net/th?id=OIP.12b329peC2F86UqcY3D2KQHaFj&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Dumbbell Seated Alternate Front Raise",
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
                      () => const dumbbell_seated_Alternate(),
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
                    "3 sets of 10-12 reps",
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
              //6.
              //
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    // backgroundImage: AssetImage("assets/bear.png"),
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.s0D1YYrHLUmx3YQ-IjdcpwHaE8&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "One Arm Lateral Raise",
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
                      () => const one_arm_lateral(),
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
                        "https://tse1.mm.bing.net/th?id=OIP.Yc_HHVdNFEQvPtvi0C4wQQHaEH&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Seated Shoulder Dumbell Press",
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
                      () => const seated_shoulder_dumbbell(),
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
                        "https://tse3.mm.bing.net/th?id=OIP.SwyzEznwj0NKwUEDWcWlEQAAAA&pid=Api&P=0"),
                  ),
                  iconColor: Color(0xFF14CDA2),
                  title: Text(
                    "Weight Plate Front Raise",
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
                      () => const weight_plate_front(),
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
