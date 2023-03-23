import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_freak/Profile/profile_controller.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fitness_freak/session_manager.dart';
import 'package:provider/provider.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  final ref = FirebaseDatabase.instance.ref('User');
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF13C89F),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFF0A0F22),
          elevation: 0.0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF0A0F22),
        body: ChangeNotifierProvider(
          create: (_) => ProfileController(),
          child: Consumer<ProfileController>(
            builder: (context, provider, child) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: StreamBuilder(
                    stream: ref
                        .child(SessionController().userId.toString())
                        .onValue,
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasData) {
                        Map<dynamic, dynamic> map =
                            snapshot.data.snapshot.value;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0),
                                  child: Center(
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.greenAccent,
                                            width: 2,
                                          )),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: provider.image == null
                                            ? map['profile'].toString() == ""
                                                ? const Icon(
                                                    Icons.person_outline,
                                                    size: 43,
                                                    color: Colors.white,
                                                  )
                                                : Image(
                                                    height: 200,
                                                    width: 200,
                                                    image: NetworkImage(
                                                        map['profile']
                                                            .toString()),
                                                    loadingBuilder: (context,
                                                        child,
                                                        loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) return child;
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(),
                                                      );
                                                    },
                                                    errorBuilder: (context,
                                                        object, stack) {
                                                      return Container(
                                                        child: Icon(
                                                          Icons.error_outline,
                                                          color: Colors.red,
                                                        ),
                                                      );
                                                    },
                                                  )
                                            : Stack(
                                                children: [
                                                  Image.file(
                                                      File(provider.image!.path)
                                                          .absolute),
                                                  Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  )
                                                ],
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    provider.pickImage(context);
                                  },
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.deepPurple,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.showUserNameDialogAlert(
                                    context, map['name']);
                              },
                              child: ReuseableRow(
                                title: 'Username',
                                value: map['name'],
                                iconData: Icons.edit,
                              ),
                            ),
                            ReuseableRow(
                              title: 'Email',
                              value: map['email'],
                              iconData: Icons.edit_off,
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.showPhoneDialogAlert(
                                    context, map['phone']);
                              },
                              child: ReuseableRow(
                                title: 'Phone',
                                value: map['phone'],
                                iconData: Icons.edit,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: 190,
                              child: ElevatedButton(
                                onPressed: () {
                                  {
                                    auth.signOut().then((value) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Mylogin()));
                                    }).onError((error, stackTrace) {
                                      Utils().toastMessage(error.toString());
                                    });
                                  }
                                  ;
                                },
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      color: Color(0xFF0A0F22),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.blueGrey,
                                  elevation: 5,
                                  primary: Color(0xFF13C89F),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: Text("something went wrong"),
                        );
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class ReuseableRow extends StatelessWidget {
  final String title, value;
  final IconData iconData;
  const ReuseableRow(
      {Key? key,
      required this.title,
      required this.value,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // title: Text(
          //   title,
          //   style: TextStyle(
          //     color: Color(0xFF13C89F),
          //   ),
          // ),
          title: Padding(
            padding: const EdgeInsets.only(left: 78.0),
            child: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
          ),
          // leading: Icon(
          //   iconData,
          //   color: Color(0xFF13C89F),
          // ),
          leading: Text(
            title,
            style: TextStyle(
              color: Color(0xFF13C89F),
            ),
          ),
          // trailing: Text(
          //   value,
          //   style: TextStyle(color: Colors.white),
          // ),
          trailing: Icon(
            iconData,
            color: Colors.blueGrey,
          ),
        ),
        Divider(
          color: Colors.white30,
        )
      ],
    );
  }
}
