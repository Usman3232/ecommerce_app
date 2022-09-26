import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/seller panal/seller bottom nav bar/seller_bottom_nav_bar.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ButtonsController>(
        init: ButtonsController(),
        builder: (cont) {
          if (cont.isSellerPanel.value) {
            return SellerBottomNavBar();
          } else {
            return BuyerBottomNavBar();
          }
        });
  }
}
