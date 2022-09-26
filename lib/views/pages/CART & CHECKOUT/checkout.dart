import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/payment%20checkout/payment_checkout.dart';
import 'package:ecommerce_app/views/pages/store%20policy/store_policy.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                  color: AppColors.primarylightColor,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 6.13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppHeights.height10,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                SizedBox(
                  height: AppHeights.height235,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    shadowColor: Colors.blueGrey.withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 3.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: AppHeights.height33,
                                width: SizeConfig.widthMultiplier * 8.6,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(AppIcons.home),
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 1,
                              ),
                              Text(
                                'My home',
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.53,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Joshua Gillani",
                            style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.53,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 0.3,
                          ),
                          Text(
                            "+62 8888 7777",
                            style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.53,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: AppHeights.height20,
                          ),
                          Text(
                            "27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157",
                            style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 1.53,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: AppHeights.height25,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: AppHeights.height50,
                              width: AppWidths.width267,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                SizeConfig.widthMultiplier *
                                                    3.9))),
                                    primary: AppColors.primarylightColor,
                                  ),
                                  child: Text(
                                    'Choose another address',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.textMultiplier * 1.8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                Text(
                  "Special Intruction",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                SizedBox(
                  width: AppWidths.widthFull,
                  child: AuthTextInputField(
                    radius: AppWidths.width15,
                    bordercolor: Colors.black,
                    maxLine: 2,
                    contentpadding: EdgeInsets.only(
                        bottom: 10,
                        left: SizeConfig.widthMultiplier * 4.55,
                        top: SizeConfig.widthMultiplier * 4.55),
                    hintText: 'e.g: “No Straw” (Optional)',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier * 1.6,
                  ),
                ),
                Text(
                  "Voucher",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 62,
                      child: AuthTextInputField(
                        radius: AppWidths.width15,
                        bordercolor: Colors.black,
                        hintText: 'Enter your code',
                        isoutline: true,
                        hintSize: SizeConfig.textMultiplier * 1.6,
                      ),
                    ),
                    Container(
                      height: AppHeights.height50,
                      width: AppWidths.width64,
                      margin: EdgeInsets.only(bottom: AppHeights.height20),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            primary: AppColors.primarylightColor,
                          ),
                          child: Text(
                            'Use',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$610.19",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.8,
                ),
                Row(
                  children: [
                    Text(
                      "Shipping costs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$14.09",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.8,
                ),
                Row(
                  children: [
                    Text(
                      "Voucher",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$10.00",
                      style: TextStyle(
                          color: AppColors.primarylightColor,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 16.5,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 4.95,
                    vertical: SizeConfig.widthMultiplier * 4.25),
                child: Row(
                  children: [
                    Container(
                        height: SizeConfig.heightMultiplier * 14,
                        width: SizeConfig.widthMultiplier * 34.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: const Color(0xff7496C2).withOpacity(0.1),
                            image: DecorationImage(
                                image: AssetImage(AppImages.backgroundVisa))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                            child: Row(
                              children: [
                                Text(
                                  'Last 4 digits : ',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.28,
                                      color: Colors.black),
                                ),
                                Text(
                                  '8659',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.53),
                                )
                              ],
                            ),
                          ),
                        )),
                    const Spacer(),
                    Column(
                      children: [
                        // SizedBox(
                        //   height: AppHeights.height8,
                        // ),
                        Row(
                          children: [
                            Text(
                              "Grand Total",
                              style: TextStyle(
                                color: AppColors.primarylightColor,
                                fontSize: SizeConfig.textMultiplier * 1.53,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 2,
                            ),
                            Text(
                              "\$705.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 2.55,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppHeights.height8,
                        ),
                        CustomTextButton(
                          callback: () {
                            Get.to(PaymentCheckOut());
                          },
                          title: 'PLACE ORDER',
                          height: AppHeights.height48,
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
