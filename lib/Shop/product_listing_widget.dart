import 'package:easy_debounce/easy_debounce.dart';
import 'package:fitness_freak/app_theme.dart';
import 'package:fitness_freak/bloc/event/cart_event.dart';
import 'package:fitness_freak/Shop/product_detail_widget.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:fitness_freak/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_freak/bloc/cart_bloc.dart';
import 'package:fitness_freak/bloc/state/cart_state.dart';
import 'package:fitness_freak/models/product.dart';

class ProductListingWidget extends StatefulWidget {
  const ProductListingWidget({Key? key}) : super(key: key);

  @override
  _ProductListingWidgetState createState() => _ProductListingWidgetState();
}

class _ProductListingWidgetState extends State<ProductListingWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearchStarted = false;

  List<Product> searchedProducts = [];
  final List<Product> products = [
    Product(
        id: 1,
        name: 'Preacher Curl Bench',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/23433_seatedArmCurl1-600x600.png',
        price: 750.00),
    Product(
        id: 2,
        name: 'Smith Macine',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/23471_smithMachine5-600x600.png',
        price: 1945.00),
    Product(
        id: 3,
        name: 'Shoulder Press',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/23434_shoulder-600x600.png',
        price: 2150.0),
    Product(
        id: 4,
        name: 'Bench Press',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/23439_isoLateralHorizontalBenchPress3-600x600.png',
        price: 1750.00),
    Product(
        id: 5,
        name: 'Adjustable Bench',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/23445_adjustableBenchincflatdeclineBLK-600x600.png',
        price: 550.00),
    Product(
        id: 6,
        name: 'Leg Press',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/23479_ultimateLegPressBLK-600x600.png',
        price: 2250.00),
    Product(
        id: 7,
        name: 'Plate Set (2-55lb)',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/rubberGripPlates-600x600.png',
        price: 850.00),
    Product(
        id: 8,
        name: 'Leg Curl',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/2020/12/Fettle-iso-prone-hamstring-black-poc-2-SKU-23432-600x600.png',
        price: 1745.00),
    Product(
        id: 9,
        name: 'Cable Crossover',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/23543_adjustment-cable-crosover-600x600.png',
        price: 2945.00),
    Product(
        id: 10,
        name: 'Seated Row',
        image:
            'https://www.fettlefitness.com/wp-content/uploads/24409_WD1b-600x600.png',
        price: 1945.00),
  ];

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      // backgroundColor: Colors.grey,
      key: scaffoldKey,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF13C89F),
        centerTitle: true,
        title: Text(
          'Awesome Store',
          // style: AppTheme.of(context).title1,
        ),
        elevation: 0,
        // backgroundColor: Colors.white,
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Color(0xFF0A0F22),
                  ),
                  onPressed: () {
                    //Navigator.pushNamed(context, CartPage.routeName);
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text(''),
                  key: Key('cart'),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Mydrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 50,
              decoration: BoxDecoration(
                color: AppTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppTheme.of(context).primaryBackground,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                      child: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF95A1AC),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          onChanged: (_) => EasyDebounce.debounce(
                            'tFMemberController',
                            Duration(milliseconds: 0),
                            () {
                              isSearchStarted =
                                  textController!.text.isNotEmpty &&
                                      textController!.text.trim().length > 0;
                              print('isSearchStarted $isSearchStarted');
                              if (isSearchStarted) {
                                print('${textController!.text.trim()}');
                                searchedProducts = products
                                    .where((item) => item.name
                                        .toLowerCase()
                                        .contains(textController!.text
                                            .trim()
                                            .toLowerCase()))
                                    .toList();
                              }
                              setState(() {});
                            },
                          ),
                          decoration: InputDecoration(
                            labelText: 'Search product here...',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: AppTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF95A1AC),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
                  bool isGridView = cartState.isGridView;
                  return IconButton(
                      onPressed: () {
                        BlocProvider.of<CartBloc>(context)
                            .add(ChangeGallaryView(!isGridView));
                      },
                      icon: !isGridView
                          ? Icon(
                              Icons.grid_on,
                              color: Color(0xFF10C69B),
                            )
                          : Icon(
                              Icons.list,
                              color: Color(0xFF10C69B),
                            ));
                }),
              ],
            ),
          ),
          Expanded(
            child: ProductList(
              products: isSearchStarted ? searchedProducts : products,
            ),
          ),
        ],
      ),
    );
  }
}
