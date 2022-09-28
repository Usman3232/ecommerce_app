import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/bottom%20sheets/distance_filter.dart';
import 'package:ecommerce_app/views/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  const SearchWidget(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (_) => const DistenceFilter());
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
