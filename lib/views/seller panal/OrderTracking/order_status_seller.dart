import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../sellers model/order_status_seller_model.dart';

class OrderStatusSeller extends StatefulWidget {
  const OrderStatusSeller({Key? key}) : super(key: key);

  @override
  State<OrderStatusSeller> createState() => _OrderStatusSellerState();
}

class _OrderStatusSellerState extends State<OrderStatusSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
            color: Colors.black,
          ),
          Padding(
              padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3.9),
              child: SvgPicture.asset(
                AppIcons.message,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  physics:  BouncingScrollPhysics(),
                  itemCount: listoforder.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        // height: AppHeights.height88,
                        height: SizeConfig.heightMultiplier * 12.5,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.heightMultiplier * 1,
                              vertical: SizeConfig.widthMultiplier * 3.9),
                          child: Row(
                            children: [
                              Container(
                                height: AppHeights.height57,
                                width: AppWidths.width64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.4),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      listoforder[i].image,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: AppWidths.width15,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listoforder[i].title,
                                          style: TextStyle(
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.53,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          listoforder[i].price,
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.53,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listoforder[i].noofproducts,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        listoforder[i].status == "Pending"
                                            ? Text(
                                                listoforder[i].time,
                                                style: const TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              )
                                            : const Text(''),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: listoforder[i].status ==
                                                    "Pending"
                                                ? const Color(0xffFF6D5F)
                                                : listoforder[i].status ==
                                                        "Waiting For Payment"
                                                    ? const Color(0xffECAD34)
                                                    : listoforder[i].status ==
                                                            "Processing"
                                                        ? const Color(
                                                            0xffFCC966)
                                                        : listoforder[i]
                                                                    .status ==
                                                                "Waiting For Delivery Partner"
                                                            ? const Color(
                                                                0xff83AE82)
                                                            : null,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                listoforder[i].status,
                                                style: const TextStyle(
                                                  fontSize: 7,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        listoforder[i].status == "Pending"
                                            ? Image.asset(
                                                AppImages.confirmationtime,
                                                height: 21,
                                                width: 21,
                                                fit: BoxFit.fill,
                                              )
                                            : const Text(""),
                                      ],
                                    ),
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
            SizedBox(
              height: AppHeights.height8,
            ),
          ],
        ),
      ),
    );
  }
}
