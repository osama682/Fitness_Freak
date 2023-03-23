import 'package:fitness_freak/Shop/product_listing_widget.dart';
import 'package:fitness_freak/Profile/profile_page.dart';
import 'package:fitness_freak/src/ABS/choose_abs_exer.dart';
import 'package:fitness_freak/src/Diet_plans/choose_diet_plan.dart';
import 'package:fitness_freak/src/Exercises/ex_levels.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:fitness_freak/src/WarmUp/warm_list.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Mymainpage extends StatefulWidget {
  const Mymainpage({Key? key}) : super(key: key);

  @override
  State<Mymainpage> createState() => _MymainpageState();
}

class _MymainpageState extends State<Mymainpage> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  static final String oneSignalAppId = "ce522e80-99a3-4f1b-b5b2-96f5804fb17f";
  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
    OneSignal.shared
        .promptUserForPushNotificationPermission()
        .then((accepted) {});
  }

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Alert"),
                content: const Text("Do you want to exit ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: const Text("Exit"),
                  ),
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFF0A0F22),
        appBar: AppBar(
          backgroundColor: Color(0xFF13C89F),
          title: Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "  Fitness Freak",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(
                  () => profile_page(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                );
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          centerTitle: true,
        ),
        drawer: Mydrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 35, top: 10, bottom: 30),
                  // child: Text(
                  //   "Main Page",
                  //   style: TextStyle(
                  //     fontSize: 47,
                  //     fontFamily: 'ACETONE',
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.indigo,
                  //   ),
                  // ),
                ),
                Container(
                  height: 100,
                  width: 340,
                  // padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const Mywarm_list(),
                        transition: Transition.rightToLeftWithFade,
                        // duration: Duration(seconds: 1),
                      );
                    },
                    // width: 340,
                    // padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image.asset("assets/warm.png"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 110,
                  width: 340,
                  // padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const Myex_levels(),
                        transition: Transition.rightToLeftWithFade,
                        // duration: Duration(seconds: 1),
                      );
                    },
                    // width: 340,
                    // padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image.asset("assets/exercise.png"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 110,
                  width: 340,
                  // padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const choose_abs_ex(),
                        transition: Transition.rightToLeftWithFade,
                        // duration: Duration(seconds: 1),
                      );
                    },
                    // width: 340,
                    // padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image.asset("assets/abs.png"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 110,
                  width: 340,
                  // padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const choose_diet_plans(),
                        transition: Transition.rightToLeftWithFade,
                        // duration: Duration(seconds: 1),
                      );
                    },
                    // width: 340,
                    // padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image.asset("assets/dietplan.png"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 110,
                  width: 340,
                  // padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => const ProductListingWidget(),
                        transition: Transition.rightToLeftWithFade,
                        // duration: Duration(seconds: 1),
                      );
                    },
                    // width: 340,
                    // padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image.asset("assets/shop.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
