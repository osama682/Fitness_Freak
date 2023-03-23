import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

import 'side_bar_6.dart';

class Mycontactus extends StatefulWidget {
  const Mycontactus({Key? key}) : super(key: key);

  @override
  State<Mycontactus> createState() => _MycontactusState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_7hnb3f9";
  const templateId = "template_wedr2sk";
  const userId = "Tq7RNOkj-FzuyTIXY";

  final response = await http.post(
    url,
    headers: {'origin': 'http:localhost', 'Content-Type': 'application/json'},
    body: json.encode(
      {
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "name": nameController.text,
          "subject": subjectController.text,
          "message": messageController.text,
          "user_email": emailController.text,
        }
      },
    ),
  );
  return response.statusCode;
}

class _MycontactusState extends State<Mycontactus> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      Fluttertoast.showToast(
        msg: "sending message...",
        fontSize: 15,
      );
      sendEmail();
      setState(() {
        nameController.clear();
      });
      setState(() {
        subjectController.clear();
      });
      setState(() {
        emailController.clear();
      });
      setState(() {
        messageController.clear();
      });
      Fluttertoast.showToast(
        msg: "Message send successfully!",
        fontSize: 15,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact Us"),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              height: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/contactus.png"),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2),
                    BlendMode.modulate,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 65),
                        child: Text(
                          "CONTACT US",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'ACETONE',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF13C89F)),
                        ),
                      ),
                    ),
                    Container(
                      width: 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: TextFormField(
                          controller: nameController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF13C89F), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Name",
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
                    Container(
                      width: 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          controller: subjectController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF13C89F), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
                            ),
                            prefixIcon: Icon(
                              Icons.subject_outlined,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Subject",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Subject cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          controller: emailController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF13C89F), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
                            ),
                            prefixIcon: Icon(
                              Icons.email_rounded,
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
                              return "Email cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          controller: messageController,
                          maxLength: 500,
                          maxLines: 5,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF13C89F), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
                            ),
                            prefixIcon: Icon(
                              Icons.message,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Message or query",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "MessageBox cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 230,
                      padding: EdgeInsets.only(top: 30),
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.send,
                          color: Color(0xFF0A0F22),
                          size: 24.0,
                        ),
                        onPressed: () => moveToHome(context),
                        label: const Text(
                          "Send",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.indigo,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
