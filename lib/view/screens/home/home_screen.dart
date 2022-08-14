import 'package:flutter/material.dart';
import 'package:flutter_restaurant/helper/product_type.dart';
import 'package:flutter_restaurant/helper/responsive_helper.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/auth_provider.dart';
import 'package:flutter_restaurant/provider/banner_provider.dart';
import 'package:flutter_restaurant/provider/cart_provider.dart';
import 'package:flutter_restaurant/provider/category_provider.dart';
import 'package:flutter_restaurant/provider/localization_provider.dart';
import 'package:flutter_restaurant/provider/product_provider.dart';
import 'package:flutter_restaurant/provider/profile_provider.dart';
import 'package:flutter_restaurant/provider/set_menu_provider.dart';
import 'package:flutter_restaurant/provider/splash_provider.dart';
import 'package:flutter_restaurant/utill/app_constants.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/utill/routes.dart';
import 'package:flutter_restaurant/utill/styles.dart';
import 'package:flutter_restaurant/view/base/title_widget.dart';
import 'package:flutter_restaurant/view/base/web_app_bar.dart';
import 'package:flutter_restaurant/view/screens/home/web/widget/category_web_view.dart';
import 'package:flutter_restaurant/view/base/footer_view.dart';
import 'package:flutter_restaurant/view/screens/home/web/widget/set_menu_view_web.dart';
import 'package:flutter_restaurant/view/screens/home/widget/banner_view.dart';
import 'package:flutter_restaurant/view/screens/home/widget/category_view.dart';
import 'package:flutter_restaurant/view/screens/home/widget/main_slider.dart';
import 'package:flutter_restaurant/view/screens/home/widget/product_view.dart';
import 'package:flutter_restaurant/view/screens/home/widget/set_menu_view.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/floating_quick_access_bar.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/sideNavBar.dart';
import 'package:flutter_restaurant/view/screens/menu/widget/options_view.dart';
import 'package:provider/provider.dart';

/////////////////////////////////////////////////////
import 'package:flutter_restaurant/view/screens/home/widgets/discover_heading.dart';
import 'package:flutter_restaurant/view/screens/home/widgets/discover_tiles.dart';
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

class HomeScreen extends StatefulWidget {
  final bool fromAppBar;
  HomeScreen(this.fromAppBar);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> drawerGlobalKey = GlobalKey();
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }
  Future<void> _loadData(BuildContext context, bool reload) async {
    if(Provider.of<AuthProvider>(context, listen: false).isLoggedIn()){
       Provider.of<ProfileProvider>(context, listen: false).getUserInfo(context);
    }
    if(reload) {
      print('offset : ${Provider.of<ProductProvider>(context, listen: false).offset}');
      Provider.of<ProductProvider>(context, listen: false).seeMoreReturn();
       Provider.of<CategoryProvider>(context, listen: false).getCategoryList(
        context, true, Provider.of<LocalizationProvider>(context, listen: false).locale.languageCode,
      );
       Provider.of<SetMenuProvider>(context, listen: false).getSetMenuList(
        context, reload,Provider.of<LocalizationProvider>(context, listen: false).locale.languageCode,);

      Provider.of<ProductProvider>(context, listen: false).getPopularProductList(
        context,reload, Provider.of<ProductProvider>(context, listen: false).offset.toString(), Provider.of<LocalizationProvider>(context, listen: false).locale.languageCode,
      );
        Provider.of<BannerProvider>(context, listen: false).getBannerList(context, reload);

    }else{
       Provider.of<CategoryProvider>(context, listen: false).getCategoryList(
        context, true, Provider.of<LocalizationProvider>(context, listen: false).locale.languageCode,
      );
       Provider.of<SetMenuProvider>(context, listen: false).getSetMenuList(
        context, reload,Provider.of<LocalizationProvider>(context, listen: false).locale.languageCode,);
       Provider.of<BannerProvider>(context, listen: false).getBannerList(context, reload);
    }

  }

  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false).seeMoreReturn();
    if(!widget.fromAppBar || Provider.of<CategoryProvider>(context, listen: false).categoryList == null) {
      _loadData(context, false);
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      key: drawerGlobalKey,
      endDrawerEnableOpenDragGesture: false,
      extendBodyBehindAppBar: true,
      backgroundColor: ResponsiveHelper.isDesktop(context) ? Theme.of(context).cardColor : ColorResources.getBackgroundColor(context),
      drawer: ResponsiveHelper.isTab(context) ? Drawer(child: OptionsView(onTap: null)) : SizedBox(),
      appBar: ResponsiveHelper.isDesktop(context) ? PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: TopBarContents(_opacity),
      ) : null,

      body: ResponsiveHelper.isDesktop(context) ? WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.white,
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
                  SizedBox(height: 10,),
                  Container(
                      color: Color.fromARGB(255, 248, 102, 0),
                      child: SizedBox(
                        height: screenSize.height * 0.5,
                        width: screenSize.width,

                      )
                  ),
                  Column(
                    children: [
                      //////////////////////////////////////////
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
                      // Container(
                      //     child: SizedBox(
                      //       height: screenSize.height * 0.45,
                      //       width: screenSize.width+1400,
                      //       child: Image.asset(
                      //         'assets/images/'
                      //             'Rectangle1.png',
                      //         fit: BoxFit.fitHeight,
                      //       ),
                      //     ),
                      //     //transform: Matrix4.rotationZ(0.1),
                      // ),
                        SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                        child: Image.asset(
                          'assets/images/'
                              'desktop.jpg',
                          fit: BoxFit.fitWidth,

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
                            Container(),
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

              DiscoverHeading(screenSize: screenSize),
              FloatingQuickAccessBar(screenSize: screenSize),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black87,
                  width: double.maxFinite,
                  height: 1,
                ),
              ),
              DestinationCarousel(),

              SizedBox(height: screenSize.height / 10),
              DiscoverDesc(),
              BottomBar(),
            ],
          ),
        ),
      ) :SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            Provider.of<ProductProvider>(context, listen: false).offset = 1;
            await _loadData(context, true);
          },
          backgroundColor: Theme.of(context).primaryColor,
          child: Scrollbar(
            controller: _scrollController,
            child: CustomScrollView(controller: _scrollController, slivers: [

              // AppBar
              ResponsiveHelper.isDesktop(context) ? SliverToBoxAdapter(child: SizedBox()) : SliverAppBar(
                  floating: true,
                  elevation: 0,
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  backgroundColor: Theme.of(context).cardColor,
                  pinned: ResponsiveHelper.isTab(context) ? true : false,
                  leading: ResponsiveHelper.isTab(context) ? IconButton(
                    onPressed: () => drawerGlobalKey.currentState.openDrawer(),
                    icon: Icon(Icons.menu,color: Colors.black),
                  ): null,
                  title: Consumer<SplashProvider>(builder:(context, splash, child) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveHelper.isWeb() ? FadeInImage.assetNetwork(
                        placeholder: Images.placeholder_rectangle, height: 40, width: 40,
                        image: splash.baseUrls != null ? '${splash.baseUrls.restaurantImageUrl}/${splash.configModel.restaurantLogo}' : '',
                        imageErrorBuilder: (c, o, s) => Image.asset(Images.placeholder_rectangle, height: 40, width: 40),
                      ) : Image.asset(Images.logo, width: 40, height: 40),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          ResponsiveHelper.isWeb() ? splash.configModel.restaurantName : AppConstants.APP_NAME,
                          style: rubikBold.copyWith(color: Theme.of(context).primaryColor),
                          maxLines: 1, overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )),
                  actions: [
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, Routes.getNotificationRoute()),
                      icon: Icon(Icons.notifications, color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                    ResponsiveHelper.isTab(context) ? IconButton(
                      onPressed: () => Navigator.pushNamed(context, Routes.getDashboardRoute('cart')),
                      icon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(Icons.shopping_cart, color: Theme.of(context).textTheme.bodyText1.color),
                          Positioned(
                            top: -10, right: -10,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                              child: Center(
                                child: Text(
                                  Provider.of<CartProvider>(context).cartList.length.toString(),
                                  style: rubikMedium.copyWith(color: Colors.white, fontSize: 8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) : SizedBox(),
                  ],
                ),

              // Search Button
             if(!ResponsiveHelper.isWeb())  SliverPersistentHeader(
                pinned: true,
                delegate: SliverDelegate(child: Center(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.getSearchRoute()),
                    child: Container(
                      height: 60, width: 1170,
                      color: Theme.of(context).cardColor,
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL, vertical: 5),
                      child: Container(
                        decoration: BoxDecoration(color: ColorResources.getSearchBg(context), borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL), child: Icon(Icons.search, size: 25)),
                          Expanded(child: Text(getTranslated('search_items_here', context), style: rubikRegular.copyWith(fontSize: 12))),
                        ]),
                      ),
                    ),
                  ),
                )),
              ),

              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 1170,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                          ResponsiveHelper.isDesktop(context) ? Padding(
                            padding: EdgeInsets.only(top: Dimensions.PADDING_SIZE_DEFAULT),
                            child: MainSlider(),
                          ):  SizedBox(),

                          ResponsiveHelper.isDesktop(context)? CategoryViewWeb() : CategoryView(),
                          ResponsiveHelper.isDesktop(context)? SetMenuViewWeb() :  SetMenuView(),

                          ResponsiveHelper.isDesktop(context) ?  SizedBox(): BannerView(),

                        ResponsiveHelper.isDesktop(context) ? Row(
                            mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                child: Text(getTranslated('popular_item', context), style: rubikRegular.copyWith(fontSize: Dimensions.FONT_SIZE_OVER_LARGE)),
                              ),
                            ],
                          ) :
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: TitleWidget(title: getTranslated('popular_item', context)),
                          ),
                          ProductView(productType: ProductType.POPULAR_PRODUCT, scrollController: _scrollController),

                        ]),
                      ),
                      if(ResponsiveHelper.isDesktop(context)) FooterView(),
                    ],
                  ),
                ),
              ),
            //  if(ResponsiveHelper.isDesktop(context)) FooterView(),
            ]),
          ),
        ),
      ),

    );
  }
}
//ResponsiveHelper

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;

  SliverDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 60 || oldDelegate.minExtent != 60 || child != oldDelegate.child;
  }
}
