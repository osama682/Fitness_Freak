import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class online_training extends StatelessWidget {
  const online_training({Key? key}) : super(key: key);

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
        title: Text("TRAINING"),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Choose Trainer",
                    style: TextStyle(
                        color: Color(0xFF10C69B),
                        fontSize: 40,
                        fontFamily: 'ACETONE',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //1.
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Color(0xFF1D1D35),
                  child: SizedBox(
                    height: 150,
                    width: 335,
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 55,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://velocityx.fitness/assets/images/trainers/1573119178Muhammad-Wasif.jpg"), //NetworkImage
                                  radius: 65,
                                ), //CircleAvatar
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "   Fawad Ahmed",
                                        style: TextStyle(
                                          color: Color(0xFF10C69B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "7:00am to 8:30am",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "     3 years of experience",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.phone,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('tel:+92 3348819466');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.sms_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('sms:+92 3348819466?body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.email_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'mailto:fawadahmed23@gmail.com?subject=&body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.facebook,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'https://www.facebook.com/usman.anjum.94');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //2.
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Color(0xFF1D1D35),
                  child: SizedBox(
                    height: 150,
                    width: 335,
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 55,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "http://velocityx.fitness/assets/images/trainers/1573039514Saad.jpg"), //NetworkImage
                                  radius: 80,
                                ), //CircleAvatar
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "    Danish Akram",
                                        style: TextStyle(
                                          color: Color(0xFF10C69B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "     10:00am to 11:30am",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "      5 years of experience",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.phone,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('tel:+92 3348819466');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.sms_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('sms:+92 3348819466?body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.email_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'mailto:danishakram84@gmail.com?subject=&body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.facebook,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'https://www.facebook.com/usman.anjum.94');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //3.
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Color(0xFF1D1D35),
                  child: SizedBox(
                    height: 150,
                    width: 335,
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 55,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "http://velocityx.fitness/assets/images/trainers/1572858550Anees.jpg"), //NetworkImage
                                  radius: 80,
                                ), //CircleAvatar
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        " Haider Faraz",
                                        style: TextStyle(
                                          color: Color(0xFF10C69B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "6:00pm to 7:30pm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "     7 years of experience",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.phone,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('tel:+92 3348819466');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.sms_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('sms:+92 3348819466?body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.email_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'mailto:haiderfaraz46@gmail.com?subject=&body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.facebook,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'https://www.facebook.com/usman.anjum.94');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //4.
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Color(0xFF1D1D35),
                  child: SizedBox(
                    height: 150,
                    width: 335,
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 55,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "http://velocityx.fitness/assets/images/trainers/1571640207Talha.jpg"), //NetworkImage
                                  radius: 80,
                                ), //CircleAvatar
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "   Gulfraz Bashir",
                                        style: TextStyle(
                                          color: Color(0xFF10C69B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        " 9:00am to 10:30pm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "    4 years of experience",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.phone,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('tel:+92 3348819466');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.sms_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch('sms:+92 3348819466?body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.email_outlined,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'mailto:gulfrazbashir39@gmail.com?subject=&body=');
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.facebook,
                                            size: 32,
                                            color: Color(0xFF10C69B),
                                          ),
                                          onTap: () {
                                            //action code when clicked
                                            launch(
                                                'https://www.facebook.com/usman.anjum.94');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
