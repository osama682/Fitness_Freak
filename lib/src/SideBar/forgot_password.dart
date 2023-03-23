import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        title: Text("Change Password"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 310,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF13C89F), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white38, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white38,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.white54, //<-- SEE HERE
                    ),
                  ),
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 55,
              width: 240,
              child: ElevatedButton(
                onPressed: () {
                  auth
                      .sendPasswordResetEmail(
                          email: emailController.text.toString())
                      .then((value) {
                    Utils().toastMessage(
                        "We have send you email to recover password, please check mail");
                  }).onError((error, stackTrace) {
                    Utils().toastMessage(error.toString());
                  });
                },
                child: Text(
                  "Forgot",
                  style: TextStyle(
                      color: Color(0xFF0A0F22),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.blueGrey,
                  elevation: 5,
                  backgroundColor: Color(0xFF13C89F),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
