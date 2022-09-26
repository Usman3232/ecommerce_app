import 'dart:async';

import 'package:ecommerce_app/constants/height.dart';


import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({
    Key? key,
    required Completer<GoogleMapController> controller,
    required CameraPosition kGooglePlex,
  })  : _controller = controller,
        _kGooglePlex = kGooglePlex,
        super(key: key);

  final Completer<GoogleMapController> _controller;
  final CameraPosition _kGooglePlex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: AppHeights.height10,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 17.6,
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
      ],
    );
  }
}
