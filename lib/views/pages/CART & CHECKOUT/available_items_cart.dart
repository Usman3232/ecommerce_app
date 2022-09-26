import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/checkout_model/all_cart_checkout_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/checkout.dart';
import 'package:ecommerce_app/views/pages/store%20policy/store_policy.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AvailableCartCheckout extends StatefulWidget {
  const AvailableCartCheckout({Key? key}) : super(key: key);

  @override
  State<AvailableCartCheckout> createState() => _AvailableCartCheckoutState();
}

class _AvailableCartCheckoutState extends State<AvailableCartCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.imageSizeMultiplier * 5,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textMultiplier * 1.92,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 2,
                right: SizeConfig.widthMultiplier * 4),
            child: InkWell(
              onTap: () {
                Get.to(StorePolicy());
              },
              child: Text(
                'Store Policy',
                style: TextStyle(
                  color: AppColors.primarydarkColor,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: SizeConfig.heightMultiplier * 100,
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 6.13,
                    top: SizeConfig.heightMultiplier * 1.6),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: listAllCart.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.widthMultiplier * 6.13),
                              child: Slidable(
                                key: const ValueKey(0),
                                endActionPane: ActionPane(
                                  extentRatio: 0.2,
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      onPressed: null,
                                      backgroundColor: const Color(0xffFF4C5E),
                                      foregroundColor: Colors.white,
                                      icon: CupertinoIcons.trash,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              SizeConfig.widthMultiplier * 3.9),
                                      child: Container(
                                        height: AppHeights.height88,
                                        width: AppWidths.width88,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: AppColors.primarydarkColor
                                                .withOpacity(0.1),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                listAllCart[index].image,
                                              ),
                                            )),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              SizeConfig.widthMultiplier * 1),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: AppHeights.height23,
                                              width: AppWidths.width23,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff4CD964),
                                              ),
                                              child: Icon(Icons.check,
                                                  color: Colors.white,
                                                  size: SizeConfig
                                                          .imageSizeMultiplier *
                                                      4),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jordan 1 Retro High Tie Dye',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    0.5,
                                          ),
                                          Text(
                                            '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size}',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.53,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: AppHeights.height10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: SizeConfig
                                                        .heightMultiplier *
                                                    1.6),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  '\$${listAllCart[index].price}',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.8,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                const Spacer(),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        if (listAllCart[index]
                                                                .value ==
                                                            0) {
                                                          listAllCart[index]
                                                                  .value =
                                                              listAllCart[index]
                                                                  .value;
                                                        } else {
                                                          listAllCart[index]
                                                                  .value =
                                                              listAllCart[index]
                                                                      .value -
                                                                  1;
                                                        }
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                        AppIcons.minuscircle)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: SizeConfig
                                                              .heightMultiplier *
                                                          1),
                                                  child: TextView(
                                                    text: listAllCart[index]
                                                        .value
                                                        .toString(),
                                                    size: SizeConfig
                                                            .textMultiplier *
                                                        1.8,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        listAllCart[index]
                                                                .value =
                                                            listAllCart[index]
                                                                    .value +
                                                                1;
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                        AppIcons.addcircle))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                      SizedBox(
                        height: AppHeights.height23,
                      ),
                      Text(
                        "All Item(s) are available",
                        style: TextStyle(
                          color: const Color(0xff4CD964),
                          fontSize: SizeConfig.textMultiplier * 1.92,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: AppHeights.height50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: SizeConfig.widthMultiplier * 6.13),
                        child: Container(
                          width: AppWidths.widthFull,
                          decoration: BoxDecoration(
                            color: AppColors.primarydarkColor.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                            child: Text(
                              "Kindly make the payment once you collect the product from the seller as the order will be collected from the provided address!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primarydarkColor,
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppHeights.height139,
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: AppHeights.height120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 6.13),
                    child: Column(
                      children: [
                        SizedBox(
                          height: AppHeights.height21,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Grand Total",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 0.5,
                                ),
                                Text(
                                  "\$705.00",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: SizeConfig.textMultiplier * 2.55,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            CustomTextButton(
                              callback: () {
                                Get.to(CheckoutPage());
                              },
                              title: 'CHECK OUT',
                              height: AppHeights.height50,
                              width: AppWidths.width150,
                              radius: 30,
                              textcolour: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              colour: AppColors.primarylightColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
