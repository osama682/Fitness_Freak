import 'package:badges/badges.dart';
import 'package:fitness_freak/app_theme.dart';
import 'package:fitness_freak/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../bloc/cart_bloc.dart';
import '../bloc/event/cart_event.dart';
import '../bloc/state/cart_state.dart';
import '../utils/utilities.dart';
import 'checkout_widget.dart';
import '../models/product.dart';
import '../widgets/count_controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_freak/Firebase_services/splash_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_freak/dbhelper.dart';

class ProductDetailWidget extends StatefulWidget {
  ProductDetailWidget({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  _ProductDetailWidgetState createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget>
    with TickerProviderStateMixin {
  String newName = '';
  String Price = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int? countControllerValue;
  bool loading = false;
  final quantityController = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('UserDetail');
  final dbHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // backgroundColor: AppTheme.of(context).secondaryBackground,
        backgroundColor: Color(0xFF10C69B),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF0A0F22),
            size: 24,
          ),
        ),
        title: Text(
          ' Awesome store',
          style: AppTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 22,
              ),
        ),
        actions: [
          BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
            List<Product> cartItem = cartState.cartItem;
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 24, 0),
              child: Badge(
                badgeContent: Text(
                  '${cartItem.length}',
                  style: AppTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                ),
                showBadge: true,
                shape: BadgeShape.circle,
                badgeColor: AppTheme.of(context).primaryColor,
                elevation: 4,
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                position: BadgePosition.topEnd(),
                animationType: BadgeAnimationType.scale,
                toAnimate: true,
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF0A0F22),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutWidget(),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      // backgroundColor: AppTheme.of(context).secondaryBackground,
      backgroundColor: Color(0xFF0A0F22),
      // backgroundColor: Colors.grey,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 16),
                    child: Hero(
                      tag: 'mainImage',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          widget.product.image,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 16, 16, 0),
                    child: Text(
                      newName = ' ${widget.product.name}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF10C69B),
                      ),
                      // style: AppTheme.of(context).title1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                    child: Text(
                      Price = '\$${widget.product.price}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  //   child: Text(
                  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
                  //     style: TextStyle(
                  //       fontSize: 15,
                  //       color: Colors.white70,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF1D1D35),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x320F1113),
                    offset: Offset(0, -2),
                  )
                ],
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 34),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130,
                      height: 50,
                      // decoration: BoxDecoration(
                      //   color: AppTheme.of(context).secondaryBackground,
                      //   borderRadius: BorderRadius.circular(12),
                      //   shape: BoxShape.rectangle,
                      //   border: Border.all(
                      //     // color: AppTheme.of(context).primaryBackground,
                      //     width: 2,
                      //   ),
                      // ),
                      child: TextField(
                        controller: quantityController,
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
                          border: OutlineInputBorder(),
                          labelText: "Quanity",
                          labelStyle: TextStyle(
                            color: Colors.white54, //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                    MyButtonWidget(
                      onPressed: () {
                        print("Button is pressed");
                        var _price = widget.product.price;
                        Product p = widget.product;
                        p.quantity = countControllerValue!.toInt();
                        BlocProvider.of<CartBloc>(context).add(AddProduct(p));
                        double multi = _price * p.quantity;
                        // result = multi.toString();
                        // print(result);
                        databaseRef
                            .child(DateTime.now()
                                .millisecondsSinceEpoch
                                .toString())
                            .push()
                            .set({
                          'Name': newName,
                          'Price': Price,
                          'Quantity': quantityController.text.toString()
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
                          msg: "Added",
                          fontSize: 15,
                        );
                      },
                      text: 'Add to Cart',
                      options: ButtonOptions(
                          width: 160,
                          height: 50,
                          // color: AppTheme.of(context).primaryColor,
                          textStyle: AppTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0A0F22),
                              ),
                          elevation: 5,
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
