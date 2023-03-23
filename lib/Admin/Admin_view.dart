import 'package:fitness_freak/Shop/checkout_widget.dart';
import 'package:fitness_freak/app_theme.dart';
import 'package:fitness_freak/bloc/cart_bloc.dart';
import 'package:fitness_freak/bloc/event/cart_event.dart';
import 'package:fitness_freak/bloc/state/cart_state.dart';
import 'package:fitness_freak/models/product.dart';
import 'package:fitness_freak/Shop/product_detail_widget.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class admin_page extends StatefulWidget {
  const admin_page({Key? key}) : super(key: key);

  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<admin_page> {
  final auth = FirebaseAuth.instance;
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
      appBar: AppBar(
        backgroundColor: Color(0xFF10C69B),
        automaticallyImplyLeading: false,
        title: Text(
          'Admin Panel',
          style: AppTheme.of(context).title1,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                auth.signOut().then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mylogin()));
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                });
              },
              icon: Icon(Icons.logout))
        ],
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 8, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Hero(
                                        tag: 'ControllerImage',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Text(
                                                cartItems[index].name,
                                                style: AppTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                        fontSize: 17,
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF10C69B)),
                                              ),
                                            ),
                                            Text(
                                              '\$${cartItems[index].price}',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 0, 0),
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
                                      // IconButton(
                                      //   icon: Icon(
                                      //     Icons.delete_outline_rounded,
                                      //     color: Color(0xFFE86969),
                                      //     size: 22,
                                      //   ),
                                      //   onPressed: () {
                                      //     BlocProvider.of<CartBloc>(context)
                                      //         .add(RemoveProduct(
                                      //             cartItems[index]));
                                      //   },
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    }),
                    // Container(
                    //   height: 95,
                    //   width: 280,
                    //   padding: EdgeInsets.only(left: 8, top: 45),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       Fluttertoast.showToast(
                    //         msg: "Order Confirmed Successfully!",
                    //         fontSize: 15,
                    //       );
                    //     },
                    //     child: Text(
                    //       "Confirm Order",
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold, fontSize: 22),
                    //     ),
                    //     style: ElevatedButton.styleFrom(
                    //       // backgroundColor: Colors.indigo,
                    //       shape: new RoundedRectangleBorder(
                    //         borderRadius: new BorderRadius.circular(30),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    //         Padding(
                    //           padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.max,
                    //             children: [
                    //               Text(
                    //                 'Price Breakdown',
                    //                 // style: AppTheme.of(context).bodyText2,
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                     ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.max,
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(
                    //                 'Base Price',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //               Text(
                    //                 result,
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.max,
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(
                    //                 'Taxes',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //               Text(
                    //                 '\$24.20',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.max,
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(
                    //                 'Cleaning Fee',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //               Text(
                    //                 '\$40.00',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.max,
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Row(
                    //                 mainAxisSize: MainAxisSize.max,
                    //                 children: [
                    //                   Text(
                    //                     'Total',
                    //                     style: AppTheme.of(context).title2.override(
                    //                           fontFamily: 'Poppins',
                    //                           color: Colors.white,
                    //                           fontSize: 19,
                    //                         ),
                    //                   ),
                    //                   IconButton(
                    //                     icon: Icon(
                    //                       Icons.info_outlined,
                    //                       color: Colors.white,
                    //                       size: 18,
                    //                     ),
                    //                     onPressed: () {
                    //                       print('IconButton pressed ...');
                    //                     },
                    //                   ),
                    //                 ],
                    //               ),
                    //               Text(
                    //                 '\$230.20',
                    //                 style: AppTheme.of(context).title2.override(
                    //                       fontFamily: 'Poppins',
                    //                       color: Colors.white,
                    //                       fontSize: 19,
                    //                     ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   width: double.infinity,
                    //   height: 100,
                    //   decoration: BoxDecoration(
                    //     // color: AppTheme.of(context).primaryColor,
                    //     color: Color(0XFF10C69B),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         blurRadius: 4,
                    //         color: Color(0x320E151B),
                    //         offset: Offset(0, -2),
                    //       )
                    //     ],
                    //     // borderRadius: BorderRadius.only(
                    //     //   bottomLeft: Radius.circular(0),
                    //     //   bottomRight: Radius.circular(0),
                    //     //   topLeft: Radius.circular(16),
                    //     //   topRight: Radius.circular(16),
                    //     // ),
                    //   ),
                    //   alignment: AlignmentDirectional(0, -0.35),
                    //   child: Text(
                    //     'Checkout (\$230.20)',
                    //     style: AppTheme.of(context).title2.override(
                    //           fontFamily: 'Poppins',
                    //           color: Color(0XFF0A0F22),
                    //         ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
