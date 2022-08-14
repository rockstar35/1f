import 'package:flutter_restaurant/view/screens/home/widgets/web_scrollbar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/bottom_bar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/carousel.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/destination_heading.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/explore_drawer.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/featured_heading.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/featured_tiles.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/responsive.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/middle_bar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/down_bar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/check_bar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/featured_second_heading.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/featured_second_tiles.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/discover_desc.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/search_box.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
                  Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                  },
                ),
              ],
              title: Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: ExploreDrawer(),
      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                      height: screenSize.height * 0.45,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/images/'
                            'Rectangle1.png',
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  ),
                  Column(
                    children: [
                      SizedBox(height: screenSize.height / 10),
                      Text(
                        'Time to order food',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: screenSize.height / 30),
                      Text(
                        'Find restaurants in your area',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: screenSize.height / 30),
                      SearchBox(),

                      SizedBox(height: screenSize.height / 30),

                      SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                        child: Image.asset(
                          'assets/images/'
                              'sample.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MiddleBar(),

                            FeaturedHeading(
                              screenSize: screenSize,
                            ),
                            FeaturedTiles(screenSize: screenSize),

                            DownBar(),
                            Container(
                              //children:[]
                            ),
                            FeaturedSecondHeading(
                              screenSize: screenSize,
                            ),
                            FeaturedSecondTiles(screenSize: screenSize),
                            CheckBar(),

                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: screenSize.height * 0.45,
              ),

              DestinationHeading(screenSize: screenSize),
              DestinationCarousel(),
              SizedBox(height: screenSize.height / 10),
              DiscoverDesc(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
