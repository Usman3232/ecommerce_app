import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constants/icons.dart';
import '../../../utils/size_config.dart';
import '../../widgets/TextView.dart';
import '../../widgets/custom_text_button.dart';

class DetailCartProduct extends StatefulWidget {
  const DetailCartProduct({Key? key}) : super(key: key);

  @override
  State<DetailCartProduct> createState() => _DetailCartProductState();
}

class _DetailCartProductState extends State<DetailCartProduct> {
  int value = 0;
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
        ), //size5
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Color(0xff536F95),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppHeights.height14,
                ),
                Container(
                  height: AppHeights.height151,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                    color: const Color(0xff536F95).withOpacity(0.1),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/images/detail_shoe.png",
                    height: AppHeights.height120,
                    width: AppWidths.width258,
                  )),
                ),
                SizedBox(
                  height: AppHeights.height14,
                ),
                Text(
                  "Jordan 1 Retro High Tie Dye",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.textMultiplier * 2.04,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: AppHeights.height8,
                ),
                Text(
                  "Adidas . Grey . 42",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff666666),
                    fontSize: SizeConfig.textMultiplier * 1.53,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                Row(
                  children: [
                    Text(
                      '\$235,00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          setState(() {
                            if (value == 0) {
                              value = value;
                            } else {
                              value = value - 1;
                            }
                          });
                        },
                        child: SvgPicture.asset(AppIcons.minuscircle)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.heightMultiplier * 1),
                      child: TextView(
                        text: value.toString(),
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            value = value + 1;
                          });
                        },
                        child: SvgPicture.asset(AppIcons.addcircle))
                  ],
                ),
                SizedBox(
                  height: AppHeights.height139,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All Items are available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4CD964),
                          letterSpacing: 1,
                        ),
                      )),
                ),
                SizedBox(
                  height: AppHeights.height48,
                ),
                Container(
                  height: AppHeights.height120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(SizeConfig.heightMultiplier * 1)),
                    color: AppColors.primarydarkColor.withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1),
                    child: Text(
                      "Kindly make the payment once you collect the product from the seller as the order will be colledted from the provided address!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primarydarkColor,
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        height: 2,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: AppHeights.height110,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppHeights.height20,
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
                                height: SizeConfig.heightMultiplier * 2,
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
                            callback: () {},
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
    );
  }
}
