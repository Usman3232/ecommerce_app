import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/checkout_model/all_cart_checkout_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/available_items_cart.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/detail_cart_product.dart';
import 'package:ecommerce_app/views/pages/store%20policy/store_policy.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AllCartsCheckOut extends StatefulWidget {
  const AllCartsCheckOut({Key? key}) : super(key: key);

  @override
  State<AllCartsCheckOut> createState() => _AllCartsCheckOutState();
}

class _AllCartsCheckOutState extends State<AllCartsCheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
        title: Text(
          'Cart',
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textMultiplier * 1.92,
          ),
        ),
        centerTitle: true,
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
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: listAllCart.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(DetailCartProduct());
                      },
                      child: Padding(
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
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  height: AppHeights.height88,
                                  width: AppWidths.width88,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
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
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 0.5,
                                    ),
                                    Text(
                                      '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size}',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.53,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: AppHeights.height10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: SizeConfig.heightMultiplier *
                                              1.6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            '\$${listAllCart[index].price}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
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
                                                    listAllCart[index].value =
                                                        listAllCart[index]
                                                            .value;
                                                  } else {
                                                    listAllCart[index].value =
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
                                              size: SizeConfig.textMultiplier *
                                                  1.8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          InkWell(
                                              onTap: () {
                                                setState(() {
                                                  listAllCart[index].value =
                                                      listAllCart[index].value +
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
                      ),
                    );
                  }),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: AppHeights.height120,
                    width: double.infinity,
                    decoration: BoxDecoration(
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
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.53,
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
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.55,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                CustomTextButton(
                                  callback: () {
                                    Get.to(AvailableCartCheckout());
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
                        )))),
          ],
        ),
      ),
    );
  }
}

class AcceptButton extends StatelessWidget {
  const AcceptButton({
    Key? key,
    required this.isBorder,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final bool isBorder;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppHeights.height50,
        width: AppWidths.width150,
        decoration: BoxDecoration(
          border:
              isBorder ? Border.all(color: AppColors.primarydarkColor) : null,
          color: isBorder
              ? AppColors.primarydarkColor.withOpacity(0.1)
              : AppColors.primarydarkColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 1.92,
                color: isBorder ? AppColors.primarydarkColor : Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
