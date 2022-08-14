// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/basketbar.dart';
import 'package:flutter_restaurant/view/screens/checkout/widgets/analyricsPage.dart';
import 'package:flutter_restaurant/view/screens/checkout/widgets/sidenavbar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/explore_drawer.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/main.dart';
import 'package:flutter_restaurant/view/screens/basket/widget/top_bar_basket.dart';


class BasketScreen extends StatefulWidget {
  @override
  _BasketScreen createState() => _BasketScreen();
}

class _BasketScreen extends State<BasketScreen> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return  Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 9000),
          child: TopBarBasket(_opacity),
        ),
        drawer: ExploreDrawer(),
      body: Container(
        child:  Row(
          children: <Widget>[
            Expanded(
              child: MainBasket(),
            ),

            // Container(
            //   child: BasketBar(),
            // ),
          ],
          )
        ),
      );
  }
}
