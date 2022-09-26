import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/views/drawer/drawer.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/favourite/favourite.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/home_page.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/map/map_location_page.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/products/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyerBottomNavBar extends StatefulWidget {
  const BuyerBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BuyerBottomNavBar> createState() => _BuyerBottomNavBarState();
}

class _BuyerBottomNavBarState extends State<BuyerBottomNavBar> {
  List<Widget> screens = [
    HomePage(),
    ProductPage(),
    MapLocationPage(),
    Favourite(),
  ];
  List images = [
    AppIcons.bottomhomeicon,
    AppIcons.bottombagicon,
    AppIcons.bottomlocationicon,
    AppIcons.bottomstaricon,
  ];
  List unselectedImages = [
    AppIcons.bottomhomeicon,
    AppIcons.bottombagicon,
    AppIcons.bottomlocationicon,
    AppIcons.bottomstaricon,
  ];
  int currentindex = 0;
  final buttonCont = Get.find<ButtonsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: const MyDrawer(),
      extendBodyBehindAppBar: true,
      body: screens[currentindex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: images.length,
        tabBuilder: (index, isActive) {
          final color = isActive ? Colors.blue : Colors.grey;
          final image = isActive ? images[index] : unselectedImages[index];
          return SizedBox(
            height: AppHeights.height24,
            width: AppWidths.width25,
            child: Image.asset(
              image,
              color: color,
            ),
          );
        },
        activeIndex: currentindex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 15,
        rightCornerRadius: 15,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
