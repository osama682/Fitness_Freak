import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:fitness_freak/session_manager.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class ProfileController with ChangeNotifier {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  DatabaseReference ref = FirebaseDatabase.instance.ref().child('User');
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  final picker = ImagePicker();
  XFile? _image;
  XFile? get image => _image;

  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future PickGalleryImage(BuildContext context) async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);

    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      uploadImage(context);
      notifyListeners();
    }
  }

  Future PickCameraImage(BuildContext context) async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 100);

    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      uploadImage(context);
      notifyListeners();
    }
  }

  void pickImage(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 120,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    PickCameraImage(context);
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.camera,
                    color: Color(0xFF099E7E),
                  ),
                  title: Text('Camera'),
                ),
                ListTile(
                  onTap: () {
                    PickGalleryImage(context);
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.image,
                    color: Color(0xFF099E7E),
                  ),
                  title: Text('Gallery'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void uploadImage(BuildContext context) async {
    setLoading(true);
    firebase_storage.Reference storageRef = firebase_storage
        .FirebaseStorage.instance
        .ref('/profileImage' + SessionController().userId.toString());

    firebase_storage.UploadTask uploadTask =
        storageRef.putFile(File(image!.path).absolute);

    await Future.value(uploadTask);
    final newUrl = await storageRef.getDownloadURL();

    ref
        .child(SessionController().userId.toString())
        .update({'profile': newUrl.toString()}).then((value) {
      Utils().toastMessage("Profile Update");
      setLoading(false);
      _image = null;
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setLoading(false);
    });
  }

  Future<void> showUserNameDialogAlert(BuildContext context, String name) {
    nameController.text = name;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text("Update Username")),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                      validator: (value) {}),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Alert"),
                          content: const Text(
                              "Are you sure you want to change your name ?"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text(
                                "No",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                ref
                                    .child(
                                        SessionController().userId.toString())
                                    .update({
                                  'name': nameController.text.toString()
                                }).then((value) {
                                  nameController.clear();
                                });
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          );
        });
  }

  Future<void> showPhoneDialogAlert(BuildContext context, String phoneNumber) {
    phoneController.text = phoneNumber;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text("Update PhoneNumber")),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone#",
                      ),
                      validator: (value) {}),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Alert"),
                          content: const Text(
                              "Are you sure you want to change your number ?"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text(
                                "No",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                ref
                                    .child(
                                        SessionController().userId.toString())
                                    .update({
                                  'phone': phoneController.text.toString()
                                }).then((value) {
                                  phoneController.clear();
                                });
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          );
        });
  }

  // Future<void> showPhoneDialogAlert(BuildContext context, String phoneNumber) {
  //   phoneController.text = phoneNumber;
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Center(child: Text("Update PhoneNumber")),
  //           content: SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 TextFormField(
  //                     controller: phoneController,
  //                     keyboardType: TextInputType.phone,
  //                     decoration: InputDecoration(
  //                       labelText: "Phone",
  //                     ),
  //                     validator: (value) {}),
  //               ],
  //             ),
  //           ),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text(
  //                 "Cancel",
  //                 style: TextStyle(color: Colors.red),
  //               ),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 ref.child(SessionController().userId.toString()).update(
  //                     {'phone': phoneController.text.toString()}).then((value) {
  //                   phoneController.clear();
  //                 });
  //                 Navigator.pop(context);
  //               },
  //               child: Text(
  //                 "Ok",
  //                 style: TextStyle(color: Colors.black),
  //               ),
  //             ),
  //           ],
  //         );
  //       });
  // }
}
