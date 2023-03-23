import 'package:fitness_freak/main.dart';
import 'package:fitness_freak/Profile/profile_page.dart';
import 'package:fitness_freak/src/SideBar/Calorie_Calculator.dart';
import 'package:fitness_freak/src/SideBar/Contact_Us.dart';
import 'package:fitness_freak/Main_page_5.dart';
import 'package:fitness_freak/src/SideBar/Risks_sidebar.dart';
import 'package:fitness_freak/src/Registeration/introduction1.dart';
import 'package:fitness_freak/src/SideBar/food_and_nutrition.dart';
import 'package:fitness_freak/src/SideBar/online_training.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF099E7E)),
            accountName: Text(
              "Fitness Freak",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            accountEmail: Text(
              "fitnessfreak392@gmail.com",
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: Container(
              child: Image.asset("assets/logo.png"),
            ),
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.home),
            title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Mymainpage()));
              },
              splashColor: Colors.amber,
              child: Text("Home"),
            ),
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.add_call),
            title: InkWell(
              onTap: () {
                Get.to(
                  () => Mycontactus(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                );
              },
              child: Text("Contact Us"),
            ),
          ),
          // ListTile(
          //   iconColor: Color(0xFF343458),
          //   leading: Icon(Icons.account_circle_sharp),
          //   title: InkWell(
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const Mycontactus()));
          //     },
          //     child: Text("About Us"),
          //   ),
          // ),
          Divider(
            color: Colors.blueGrey,
            thickness: 0.2,
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.calendar_month),
            title: Text("Add a schedule"),
            onTap: () {
              Get.to(
                () => MyHomePage(),
                transition: Transition.zoom,
                duration: Duration(seconds: 1),
              );
            },
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.ac_unit_rounded),
            title: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Myrisks()));
              },
              child: Text("Hazards"),
            ),
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.calculate),
            title: InkWell(
              onTap: () {
                Get.to(
                  () => const My_calo_calc(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                );
              },
              child: Text("Calories Calculator"),
            ),
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.food_bank),
            title: InkWell(
              onTap: () {
                Get.to(
                  () => food_and_nutrition(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                );
              },
              child: Text("Food and nutrition"),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 0.2,
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.accessibility_new_outlined),
            title: InkWell(
              onTap: () {
                Get.to(
                  () => online_training(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                );
              },
              child: Text("Online training"),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 0.2,
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            iconColor: Color(0xFF343458),
            leading: Icon(Icons.account_circle_sharp),
            title: Text("About Us"),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5.0, right: 2),
              child: Text(
                  "We are a group of young dedicated IT efficient developers who are aiming to make life easy through our vibrant technologies."),
            ),
            // title: InkWell(
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const Mycontactus()));
            //   },
            //   child: Text("About Us"),
            // ),
          ),
        ],
      ),
    );
  }
}
