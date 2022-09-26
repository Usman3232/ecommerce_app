import 'package:ecommerce_app/constants/colors.dart';


import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/height.dart';

import '../../widgets/custom_text_button.dart';
import '../Curated Store Seller/curated_store_seller.dart';

class EditProductDialogue extends StatelessWidget {
  const EditProductDialogue({
    Key? key,
    required this.productController,
    required this.priceController,
    required this.descriptionController,
    required this.discountController,
  }) : super(key: key);

  final TextEditingController productController;
  final TextEditingController priceController;
  final TextEditingController descriptionController;
  final TextEditingController discountController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              width: SizeConfig.widthMultiplier * 90,
              child: SingleChildScrollView(
                child: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppHeights.height10,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(CupertinoIcons.xmark)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 6.35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AppHeights.height10,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                " Edit Product",
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2.55,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: AppHeights.height20,
                            ),
                            Container(
                              height: AppHeights.height96,
                              width: AppWidths.widthFull,
                              decoration: BoxDecoration(
                                color: AppColors.primarylightColor
                                    .withOpacity(0.3),
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              height: AppHeights.height20,
                            ),
                            Text(
                              "Name of Product",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            AuthTextInputField(
                              hintText: 'Product name',
                              textEditingController: productController,
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            PriceDiscount(
                                priceController: priceController,
                                discountController: discountController),
                            SizedBox(
                              height: AppHeights.height14,
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            ExpansionTile(
                                textColor: Colors.black,
                                iconColor: Colors.black,
                                title: Text(
                                  "Glasses",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: SizeConfig.textMultiplier * 1.8,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                  ),
                                )),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            Text("Discription",
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 1.8,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                )),
                            SizedBox(
                              height: AppHeights.height10,
                            ),
                            AuthTextInputField(
                              hintText: 'description',
                              maxLine: 3,
                              textEditingController: descriptionController,
                            ),
                            const CustomColorWidget(),
                            SizedBox(
                              height: AppHeights.height57,
                            ),
                            CustomTextButton(
                              callback: () {},
                              title: 'SAVE PRODUCT',
                              textcolour: Colors.white,
                              colour: AppColors.primarylightColor,
                              radius: 20,
                              height: AppHeights.height45,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: AppHeights.height23,
                            ),
                            CustomTextButton(
                              callback: () {},
                              title: 'Remove PRODUCT',
                              textcolour: Colors.white,
                              colour: Colors.redAccent,
                              radius: 20,
                              height: AppHeights.height45,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: AppHeights.height38,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ))),
    );
  }
}
