import 'package:ecommerce_app/views/pages/livetracking/components/live_tracking_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/height.dart';
import '../../../../constants/icons.dart';


import '../../../../models/live_tracking_model/live_tracking_cart_model.dart';
import '../../../../utils/size_config.dart';
import '../../pages/livetracking/components/delivery_rider_card.dart';
import '../../pages/livetracking/components/tracking_cart_widget.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3.9),
              child: SvgPicture.asset(
                AppIcons.message,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 4.95,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const LiveTrackingDetailsWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: SizeConfig.widthMultiplier * 19),
                  Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier * 2),
                      child: Icon(
                        Icons.circle_outlined,
                        color: Colors.black12,
                        size: SizeConfig.imageSizeMultiplier * 4,
                      )),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4.5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your item is being processed',
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: SizeConfig.textMultiplier * 1.53,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: SizeConfig.textMultiplier * 1,
                      ),
                      Text(
                        'Wonokromo, Surabaya',
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: SizeConfig.textMultiplier * 1.2),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: AppHeights.height52,
              ),
              const DliveryRiderCard(),
              SizedBox(
                height: AppHeights.height38,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: trackingCartList.length,
                  itemBuilder: (BuildContext context, i) {
                    return TrackingCartWidget(
                        image: trackingCartList[i].image,
                        title: trackingCartList[i].title,
                        size: trackingCartList[i].size,
                        color: trackingCartList[i].color,
                        price: trackingCartList[i].price,
                        count: trackingCartList[i].count);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
