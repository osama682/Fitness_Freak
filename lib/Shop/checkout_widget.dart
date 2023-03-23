import 'package:fitness_freak/Admin/Admin_view.dart';
import 'package:fitness_freak/app_theme.dart';
import 'package:fitness_freak/bloc/event/cart_event.dart';
import 'package:fitness_freak/models/product.dart';
import 'package:fitness_freak/Shop/product_detail_widget.dart';
import 'package:fitness_freak/src/SideBar/Contact_Us.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../bloc/cart_bloc.dart';
import '../bloc/state/cart_state.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_freak/Firebase_services/splash_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_freak/dbhelper.dart';
export '';

class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({Key? key}) : super(key: key);

  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  String userName = '';
  bool loading = false;
  final databaseRef = FirebaseDatabase.instance.ref('UserDetail');
  final dbHelper = DatabaseHelper.instance;

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Order'),
          content: Text('Are you sure you want to confirm your order?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  userName = nameController.text.toString();
                });
                Navigator.pop(context);
                databaseRef
                    .child(DateTime.now().millisecondsSinceEpoch.toString())
                    .child('order')
                    .set({
                  'Name': nameController.text.toString(),
                  'Phone': phoneController.text.toString(),
                  'Address': addressController.text.toString()
                }).then((value) {
                  Utils().toastMessage("Post added");
                  setState(() {
                    loading = false;
                  });
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                  setState(() {
                    loading = false;
                  });
                });
                setState(() {
                  loading = true;
                });
                Fluttertoast.showToast(
                  msg: "Order Confirmed successfully!",
                  fontSize: 15,
                );
                // Get.to(
                //   () => admin_page(),
                //   duration: Duration(seconds: 1),
                // );
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late List<Product> cartItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      cartItems = BlocProvider.of<CartBloc>(context).items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Color(0xFF10C69B),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF0A0F22),
                          size: 30,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'Back',
                        style: AppTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Expanded(
                  child: Text(
                    'Cart',
                    style: AppTheme.of(context).title1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      // backgroundColor: AppTheme.of(context).primaryBackground,
      backgroundColor: Color(0xFF0A0F22),
      // backgroundColor: Colors.grey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
                    return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: cartItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                            child: Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: AppTheme.of(context).secondaryBackground,
                                color: Color(0xFF2E2E53),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x320E151B),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 8, 8, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Hero(
                                      tag: 'ControllerImage',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.network(
                                          cartItems[index].image,
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 8),
                                            child: Text(
                                              cartItems[index].name,
                                              style: AppTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                      fontSize: 17,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF10C69B)),
                                            ),
                                          ),
                                          Text(
                                            '\$${cartItems[index].price}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Text(
                                              'Quanity: ${cartItems[index].quantity}',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white70),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete_outline_rounded,
                                        color: Color(0xFFE86969),
                                        size: 22,
                                      ),
                                      onPressed: () {
                                        BlocProvider.of<CartBloc>(context).add(
                                            RemoveProduct(cartItems[index]));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  }),
                  Container(
                    height: 95,
                    width: 280,
                    padding: EdgeInsets.only(left: 8, top: 45),
                    child: ElevatedButton(
                      child: Text(
                        "Confirm Order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SingleChildScrollView(
                                child: AlertDialog(
                                  title: Text('Enter Details'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        controller: nameController,
                                        decoration:
                                            InputDecoration(hintText: 'Name'),
                                      ),
                                      TextField(
                                        controller: phoneController,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                            hintText: 'Phone Number'),
                                      ),
                                      TextField(
                                        controller: addressController,
                                        decoration: InputDecoration(
                                            hintText: 'Address'),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        _showConfirmationDialog(context);
                                      },
                                      child: Text('Okay'),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
