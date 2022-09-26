import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/sellers%20model/order_deliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../constants/icons.dart';

class OrdersDelivered extends StatefulWidget {
  const OrdersDelivered({Key? key}) : super(key: key);

  @override
  State<OrdersDelivered> createState() => _OrdersDeliveredState();
}

class _OrdersDeliveredState extends State<OrdersDelivered> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeights.height10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listoforderdelivered.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: AppHeights.height88,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9.0, vertical: 15),
                          child: Row(
                            children: [
                              Container(
                                height: AppHeights.height57,
                                width: AppWidths.width64,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    listoforderdelivered[i].image,
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
                                    RichText(
                                      text: TextSpan(
                                        text: listoforderdelivered[i].title,
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.8,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: listoforderdelivered[i]
                                                  .location,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.28)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listoforderdelivered[i].noofproducts,
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.28,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Text(
                                          listoforderdelivered[i].price,
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
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 65,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff48D145),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              listoforderdelivered[i].status,
                                              style: const TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Text(listoforderdelivered[i].date,
                                        //   style: const TextStyle(
                                        //     fontSize: 10,
                                        //     fontWeight: FontWeight.w500,
                                        //     letterSpacing: 1,
                                        //   ),
                                        // ),
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
              SizedBox(
                height: AppHeights.height10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
