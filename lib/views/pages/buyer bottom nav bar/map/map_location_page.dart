import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:ecommerce_app/views/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocationPage extends StatefulWidget {
  const MapLocationPage({Key? key}) : super(key: key);

  @override
  _MapLocationPageState createState() => _MapLocationPageState();
}

class _MapLocationPageState extends State<MapLocationPage> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  final LatLng _latLng = const LatLng(28.3933, 70.3328);
  int value = 0;
  bool isfocus = false;
  bool isfocus2 = false;
  bool isfocus3 = false;
  bool isfocus4 = false;
  final double _zoom = 19.0;
  final Set<Marker> _markers = {};
  String images = 'assets/images/marker.png';
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final Uint8List markerIcon =
        await getBytesFromAsset(images.toString(), 100);

    _markers.add(Marker(
        markerId: const MarkerId('1'),
        position: const LatLng(28.3931, 70.3329),
        icon: BitmapDescriptor.fromBytes(markerIcon),
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              width: SizeConfig.widthMultiplier * 85,
              height: SizeConfig.heightMultiplier * 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: SizeConfig.widthMultiplier * 85,
                    height: SizeConfig.heightMultiplier * 16,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/marker_info.png'),
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          CupertinoIcons.xmark,
                          color: Colors.white,
                          size: SizeConfig.imageSizeMultiplier * 6,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.widthMultiplier * 2),
                    child: Row(
                      children: [
                        Text('Organic Shop',
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.textMultiplier * 2)),
                        const Spacer(),
                        const Icon(
                          Icons.star,
                          color: Color(0xffFCD240),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        const Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 1,
                        ),
                        Text('(1045 Reviews)',
                            style: GoogleFonts.urbanist(
                              color: Colors.black38,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const LatLng(28.3924, 70.3329),
          );
        }));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onMapCreated: (GoogleMapController controller) async {
              _customInfoWindowController.googleMapController = controller;
            },
            zoomGesturesEnabled: false,
            zoomControlsEnabled: false,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: _latLng,
              zoom: _zoom,
            ),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            width: SizeConfig.widthMultiplier * 85,
            height: SizeConfig.heightMultiplier * 22,
            offset: 35,
          ),
          Positioned(
            bottom: SizeConfig.heightMultiplier * 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.heightMultiplier * 3,
                    width: SizeConfig.widthMultiplier * 25,
                    decoration: BoxDecoration(
                      color: const Color(0xffDEFFFA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Service Provider',
                        style: GoogleFonts.urbanist(
                          fontSize: SizeConfig.textMultiplier * 1.28,
                          color: const Color(0xff33D8C0),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.heightMultiplier * 3,
                    width: SizeConfig.widthMultiplier * 25,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFE3E8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'ANYTIME SELLER',
                        style: GoogleFonts.urbanist(
                          fontSize: SizeConfig.textMultiplier * 1.28,
                          color: const Color(0xffFF5974),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.heightMultiplier * 3,
                    width: SizeConfig.widthMultiplier * 25,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF7E7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'CURATED SHOP',
                        style: GoogleFonts.urbanist(
                          fontSize: SizeConfig.textMultiplier * 1.28,
                          color: const Color(0xffF3AE31),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: SizeConfig.heightMultiplier * 5,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 10,
                      width: SizeConfig.widthMultiplier * 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.drag_handle,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SearchWidget(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (_) => Container(
                                height: SizeConfig.heightMultiplier * 44.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF8F8F8),
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                child: StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.widthMultiplier *
                                                6.13,
                                            right: SizeConfig.widthMultiplier *
                                                6.13,
                                            top: SizeConfig.widthMultiplier *
                                                6.13),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                              text: "Filters",
                                              fontWeight: FontWeight.w600,
                                              size: SizeConfig.textMultiplier *
                                                  2.4,
                                            ),
                                            SizedBox(
                                              height: AppHeights.height23,
                                            ),
                                            Row(
                                              children: [
                                                TextView(
                                                  text: "Distance",
                                                  fontWeight: FontWeight.w600,
                                                  size: SizeConfig
                                                          .textMultiplier *
                                                      2.04,
                                                ),
                                                Spacer(),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        if (value == 0) {
                                                          value = value;
                                                        } else
                                                          value = value - 1;
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                        AppIcons.minuscircle)),
                                                SizedBox(
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      2,
                                                ),
                                                TextView(
                                                  text:
                                                      value.toString() + " km",
                                                  color: AppColors.textColor,
                                                  fontWeight: FontWeight.w600,
                                                  size: SizeConfig
                                                          .textMultiplier *
                                                      1.8,
                                                ),
                                                SizedBox(
                                                  width: SizeConfig
                                                          .widthMultiplier *
                                                      2,
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        value = value + 1;
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                        AppIcons.addcircle)),
                                              ],
                                            ),
                                            SizedBox(
                                              height: AppHeights.height25,
                                            ),
                                            TextView(
                                              text: "Type",
                                              fontWeight: FontWeight.w600,
                                              size: SizeConfig.textMultiplier *
                                                  2.04,
                                            ),
                                            SizedBox(
                                              height: AppHeights.height20,
                                            )
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        physics: const BouncingScrollPhysics(),
                                        child: Row(
                                          children: [],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: AppHeights.height50 * 2,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(30))),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizeConfig.widthMultiplier *
                                                      6.13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomTextButton(
                                                callback: () {
                                                  setState(() {
                                                    value = 0;
                                                  });
                                                },
                                                radius: 90,
                                                height: AppHeights.height50,
                                                width: AppWidths.width150,
                                                colour: Colors.white,
                                                title: "Reset (4)",
                                                textcolour: Colors.black,
                                              ),
                                              CustomTextButton(
                                                callback: () {},
                                                radius: 90,
                                                height: AppHeights.height50,
                                                width: AppWidths.width150,
                                                colour:
                                                    AppColors.primarylightColor,
                                                title: "Apply",
                                                textcolour: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                }),
                              ));
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 10,
                      width: SizeConfig.widthMultiplier * 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset(
                        'assets/images/filter.png',
                        fit: BoxFit.fill,
                        height: SizeConfig.heightMultiplier * 2,
                        width: SizeConfig.widthMultiplier * 5,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
