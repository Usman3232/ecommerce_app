import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/images.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/add%20new%20card/add_new_card.dart';
import 'package:ecommerce_app/views/pages/order%20status/negativestatus.dart';
import 'package:ecommerce_app/views/pages/store%20policy/store_policy.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter { A, B, C }

class PaymentCheckOut extends StatefulWidget {
  const PaymentCheckOut({Key? key}) : super(key: key);

  @override
  State<PaymentCheckOut> createState() => _PaymentCheckOutState();
}

class _PaymentCheckOutState extends State<PaymentCheckOut> {
  SingingCharacter? _character = SingingCharacter.A;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: SizeConfig.imageSizeMultiplier * 4.5,
            )),
        title: Text(
          "Payment",
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontSize: SizeConfig.textMultiplier * 1.92,
            fontWeight: FontWeight.w600,
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
                "Store Policy",
                style: TextStyle(
                  color: AppColors.primarylightColor,
                  fontSize: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6.13),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: AppWidths.widthFull,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: AppColors.primarydarkColor),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Credit Card ',
                      style: TextStyle(
                        color: const Color(0xff2B0806).withOpacity(0.8),
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    collapsedTextColor: Colors.black,
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    children: [
                      Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              AppImages.cardLogo,
                              height: AppHeights.height27,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 1.53,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.A,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppImages.visa,
                              height: AppHeights.height27,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 1.53,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.B,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppImages.american,
                              height: AppHeights.height27,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 1.53,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.C,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: AppHeights.height8,
                          ),
                          SizedBox(
                            height: AppHeights.height50,
                            width: AppWidths.width267,
                            child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const CARDACTIVATION()));
                                  Get.to(AddNewCard());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  primary: AppColors.primarylightColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1,
                                    ),
                                    Text(
                                      'Add new card',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.53,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: AppHeights.height27,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppHeights.height20,
                ),
                SizedBox(
                  width: AppWidths.widthFull,
                  child: AuthTextInputField(
                    radius: AppWidths.width15,
                    bordercolor: Colors.black,
                    hintText: 'COD/Pay at Premises',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier * 1.6,
                  ),
                ),
                SizedBox(
                  width: AppWidths.widthFull,
                  child: AuthTextInputField(
                    radius: AppWidths.width15,
                    bordercolor: Colors.black,
                    hintText: 'Paypal',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier * 1.6,
                  ),
                ),
                SizedBox(
                  height: AppHeights.height18,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                width: AppWidths.widthFull,
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
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 6.13),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppHeights.height20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '\$550.69',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.textMultiplier * 2.85,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppHeights.height20,
                      ),
                      SizedBox(
                        height: AppHeights.height62,
                        width: AppWidths.widthFull,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(NegativeStatus());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              primary: AppColors.primarylightColor,
                            ),
                            child: Text(
                              'PAY NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.textMultiplier * 2.04,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
