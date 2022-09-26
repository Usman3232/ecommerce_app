import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';


import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/livetracking/live_tracking_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapDeliveryAddress extends StatelessWidget {
  const MapDeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3),
      child: Column(
        children: [
          Container(
            height: AppHeights.height38,
            width: SizeConfig.widthMultiplier * double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(SizeConfig.widthMultiplier * 6.6),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.heightMultiplier * 1.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Call delivery Rider',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.phone_in_talk,
                        color: AppColors.primarylightColor,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: AppHeights.height10),
          Container(
            // height: 154,
            height: SizeConfig.heightMultiplier*20,
            width: SizeConfig.widthMultiplier * double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(SizeConfig.widthMultiplier * 2)),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3.9),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Address',
                          style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 0.5,
                        ),
                        Text(
                          '27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157',
                          style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.5,
                              color: const Color(0xffAE9A99),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier*1,
                        ),
                        Text(
                          'Expected Delivery Time: 8:50 PM',
                          style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.53,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: AppHeights.height8,
                        ),
                        Text(
                          '₹3500',
                          style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 2.55,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black12,
                    indent: SizeConfig.heightMultiplier * 2,
                    endIndent: SizeConfig.heightMultiplier * 2,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.9),
                    child: TextButton(
                        onPressed: () {
                          Get.to(LiveTrackingDetail());
                        },
                        child: Text(
                          'View\nDetails',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primarylightColor,
                              fontSize: SizeConfig.textMultiplier * 1.53),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
