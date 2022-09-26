import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/live_tracking_model/carousel_model.dart';
import 'package:ecommerce_app/models/live_tracking_model/live_tracking_cart_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/carousel_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'components/delivery_rider_card.dart';
import 'components/live_tracking_details_widget.dart';
import 'components/tracking_cart_widget.dart';

class LiveTrackingDetail extends StatefulWidget {
  const LiveTrackingDetail({Key? key}) : super(key: key);

  @override
  State<LiveTrackingDetail> createState() => _LiveTrackingDetailState();
}

class _LiveTrackingDetailState extends State<LiveTrackingDetail> {
  int activeStep = 4;
  int upperBound = 3;
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final pages = List.generate(
    listCarousel.length,
    (index) => CarouselCard(
      image: listCarousel[index].image,
      title: listCarousel[index].title,
      price: listCarousel[index].price,
      titleColor: Colors.black,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Live Tracking',
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.8,
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: SizeConfig.imageSizeMultiplier * 5,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 4.95,
            vertical: SizeConfig.heightMultiplier * 1),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: AppHeights.height218,
                width: AppWidths.widthFull,
                child: Stack(
                  children: [
                    PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      padEnds: false,
                      controller: controller,
                      itemCount: pages.length,
                      itemBuilder: (BuildContext context, index) {
                        return pages[index];
                      },
                    ),
                    Positioned(
                      bottom: SizeConfig.heightMultiplier * 1.4,
                      left: SizeConfig.widthMultiplier * 2.8,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.black,
                          dotHeight: SizeConfig.heightMultiplier * 0.4,
                          dotWidth: SizeConfig.widthMultiplier * 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppHeights.height45,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Live Tracking Details',
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 2,
                    color: AppColors.primarydarkColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const LiveTrackingDetailsWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: SizeConfig.widthMultiplier * 19),
                  Container(
                      margin: EdgeInsets.only(
                        bottom: SizeConfig.heightMultiplier * 2,
                      ),
                      child: Icon(
                        Icons.circle_outlined,
                        color: Colors.black12,
                        size: SizeConfig.imageSizeMultiplier * 4,
                      )),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4.5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your item is being processed',
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: SizeConfig.textMultiplier * 1.53,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: SizeConfig.textMultiplier * 1,
                      ),
                      Text(
                        'Wonokromo, Surabaya',
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: SizeConfig.textMultiplier * 1.2),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: AppHeights.height52,
              ),
               DliveryRiderCard(),
              SizedBox(
                height: AppHeights.height38,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: trackingCartList.length,
                  itemBuilder: (BuildContext context, i) {
                    return TrackingCartWidget(
                        image: trackingCartList[i].image,
                        title: trackingCartList[i].title,
                        size: trackingCartList[i].size,
                        color: trackingCartList[i].color,
                        price: trackingCartList[i].price,
                        count: trackingCartList[i].count);
                  }),
              Padding(
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 1.6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                        Text(
                          '₹610.19',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping costs',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                        Text(
                          '₹14.09',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Voucher',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                        Text(
                          '-₹10.00',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppHeights.height35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total price',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.8),
                        ),
                        Text(
                          '-₹614.28',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: SizeConfig.textMultiplier * 2.85,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
