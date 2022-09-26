import 'dart:async';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/add%20new%20my%20address/add_new_address.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  bool card1 = false;
  bool card2 = false;
  List<LatLng> latLng = [
    const LatLng(33.738045, 73.084488),
    const LatLng(33.567997728, 72.635997456)
  ];
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 17,
  );
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'My Address',
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
          horizontal: SizeConfig.widthMultiplier * 6.13,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  card2 = false;
                  card1 = true;
                });
              },
              child: SizedBox(
                // height: AppHeights.height120,
                height: SizeConfig.heightMultiplier * 15.5,
                child: Card(
                  color: Colors.white,
                  elevation: card1 ? 3 : 0,
                  shadowColor: Colors.blueGrey.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3.9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My home',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.53,
                                    color: const Color(0xff896C6B),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 3.9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: AppHeights.height33,
                                  width: SizeConfig.widthMultiplier * 8.5,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff7496C2)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.widthMultiplier * 1),
                                    child: SvgPicture.asset(
                                      AppIcons.location,
                                    ),
                                  ),
                                ),
                                SizedBox(width: SizeConfig.widthMultiplier * 3),
                                SizedBox(
                                    width: SizeConfig.widthMultiplier * 62,
                                    child: Text(
                                      'Independence Street No. 27, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.53,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.widthMultiplier * 11,
                                  top: SizeConfig.heightMultiplier * 0.5),
                              child: Text(
                                'Joshua / +62 8888 7777',
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  card2 = true;
                  card1 = false;
                });
              },
              child: SizedBox(
                height: SizeConfig.heightMultiplier * 17,
                child: Card(
                  color: Colors.white,
                  elevation: card2 ? 3 : 0,
                  shadowColor: Colors.blueGrey.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.widthMultiplier * 4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3.9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Office',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.53,
                                    color: const Color(0xff896C6B),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 3.9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: AppHeights.height33,
                                  width: SizeConfig.widthMultiplier * 8.5,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff7496C2)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.widthMultiplier * 1),
                                    child: SvgPicture.asset(
                                      AppIcons.location,
                                    ),
                                  ),
                                ),
                                SizedBox(width: SizeConfig.widthMultiplier * 3),
                                SizedBox(
                                    width: SizeConfig.widthMultiplier * 62,
                                    child: Text(
                                      'R. E. Martadinata Street No.71,Gungparang, Sukabumi, Jawa Barat 43111',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.53,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.widthMultiplier * 11,
                                  top: SizeConfig.heightMultiplier * 0.5),
                              child: Text(
                                'Joshua Gillani / +62 8888 7777 /\n(0266) 234567',
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppHeights.height20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black38,
                      size: SizeConfig.imageSizeMultiplier * 8,
                    ))
              ],
            ),
            SizedBox(
              height: AppHeights.height8,
            ),
            Container(
              height: AppHeights.height289,
              width: AppWidths.widthFull,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: GoogleMap(
                zoomControlsEnabled: false,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                initialCameraPosition: _kGooglePlex,
                mapType: MapType.normal,
              ),
            ),
            CustomTextButton(
                title: 'Add new address',
                colour: AppColors.primarylightColor,
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 90,
                textcolour: Colors.white,
                fontSize: SizeConfig.textMultiplier * 1.8,
                radius: 15,
                callback: () {
                  Get.to(const AddNewAddress());
                }),
          ],
        ),
      ),
    );
  }
}
