import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/checkout_model/all_cart_checkout_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/OrderTracking/components/delivery_card_details.dart';
import 'package:ecommerce_app/views/seller%20panal/OrderTracking/order_delivered.dart';
import 'package:ecommerce_app/views/seller%20panal/OrderTracking/order_status_seller.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OutForDelivery extends StatefulWidget {
  const OutForDelivery({Key? key}) : super(key: key);

  @override
  State<OutForDelivery> createState() => _OutForDeliveryState();
}

class _OutForDeliveryState extends State<OutForDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: SizeConfig.imageSizeMultiplier * 6,
        ),
        title: Text(
          "New Incoming Order",
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.textMultiplier * 1.92,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 20,
              color: AppColors.primarydarkColor,
            ),
          ),

          SvgPicture.asset(AppIcons.message,color: Colors.black,),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*6,vertical: SizeConfig.heightMultiplier*5.5),
        child: Column(
          children: [
            CustomTextButton(
                callback: (){
                  Get.to( OrderStatusSeller());
                  // Get.to(OrdersDelivered());
            },
              colour: const Color(0xffAEC274),
              title: 'Out for delivery',
              textcolour: Colors.white,
              radius: 100,
              height: SizeConfig.heightMultiplier*3,
              fontSize: SizeConfig.textMultiplier*1.3,
            ),
            SizedBox(height: SizeConfig.heightMultiplier*1,),
            const DeliveryCardDetails(),
            SizedBox(height: SizeConfig.heightMultiplier*4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Details',style: TextStyle(color: AppColors.primarylightColor,fontWeight: FontWeight.w600,fontSize: SizeConfig.textMultiplier*2),),
                Text('Total: 12,500 ₹',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: SizeConfig.textMultiplier*2.5,letterSpacing: 1),),
              ],
            ),
            SizedBox(height: SizeConfig.heightMultiplier*4,),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: listAllCart.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.widthMultiplier * 6.13),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  height: SizeConfig.heightMultiplier * 10.9,
                                  width: SizeConfig.widthMultiplier * 22.2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                                      '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size} x 1',
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
                                          CustomTextButton(callback: (){

                                          },
                                            title: 'UNAVAILABLE',
                                            textcolour: Colors.redAccent,
                                            fontWeight: FontWeight.w600,
                                            fontSize: SizeConfig.textMultiplier*1.2,
                                            colour: const Color(0xffFFEDEF),
                                            radius: 100,
                                          )
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
            ),
          ],
        ),
      ),
    );
  }
}

