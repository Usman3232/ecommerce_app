import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/height.dart';
import '../../../../constants/width.dart';
import '../../../../models/checkout_model/all_cart_checkout_model.dart';
import '../../../../utils/size_config.dart';

class ViewInvoice extends StatefulWidget {
  const ViewInvoice({Key? key}) : super(key: key);

  @override
  State<ViewInvoice> createState() => _ViewInvoiceState();
}

class _ViewInvoiceState extends State<ViewInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: AppHeights.height110,
        width: AppWidths.widthFull,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextButton(
              callback: () {},
              radius: 20,
              title: 'ACCEPT',
              height: AppHeights.height45,
              width: AppWidths.width135,
              colour: AppColors.primarylightColor,
            ),
            CustomTextButton(
              callback: () {},
              radius: 20,
              title: 'Reject',
              textcolour: AppColors.primarydarkColor,
              height: AppHeights.height45,
              width: AppWidths.width135,
              colour: const Color(0xffF1F4F9),
            ),
          ],
        ),
      ),
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
            color: Colors.black,
            size: SizeConfig.imageSizeMultiplier * 5,
          ),
        ),
        title: TextView(
          text: 'Invoice',
          color: AppColors.primarydarkColor,
          size: SizeConfig.textMultiplier * 1.92,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 6.13,
              top: SizeConfig.heightMultiplier * 1.6,
              right: SizeConfig.widthMultiplier * 6.13),
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listAllCart.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.widthMultiplier * 6.13),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                height: AppHeights.height88,
                                width: AppWidths.width88,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: AppColors.primarydarkColor
                                      .withOpacity(0.1),
                                ),
                                child: Image.asset(
                                  listAllCart[index].image,
                                  height: AppHeights.height50,
                                  width: AppWidths.width64,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jordan 1 Retro High Tie Dye',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.textMultiplier * 1.8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 0.5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size}',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.53,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'x1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppHeights.height10,
                                  ),
                                  Text(
                                    '\$${listAllCart[index].price}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.textMultiplier * 1.8,
                                      fontWeight: FontWeight.w600,
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
                height: SizeConfig.heightMultiplier * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Subtotal",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$610.19",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Shipping costs",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$14.09",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Voucher",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "-\$10.00",
                    size: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primarylightColor,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Grand Total",
                    size: SizeConfig.textMultiplier * 2.17,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$705.00",
                    size: SizeConfig.textMultiplier * 2.55,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
