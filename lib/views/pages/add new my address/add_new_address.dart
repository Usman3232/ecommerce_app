import 'dart:async';
import 'package:country_picker/country_picker.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/my_location.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  TextEditingController nameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController suitController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  List<LatLng> latLng = [
    const LatLng(33.738045, 73.084488),
    const LatLng(33.567997728, 72.635997456)
  ];
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 17,
  );
  final Completer<GoogleMapController> _controller = Completer();

  var state;
  var countryCode = 'US';
  var flag = '🇺🇸';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Add New Address',
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 6.13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address title',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: 'Title Address',
                  contentpadding: EdgeInsets.all(
                    SizeConfig.widthMultiplier * 3.9,
                  ),
                  hintSize: SizeConfig.textMultiplier * 1.6,
                  textEditingController: titleController,
                ),
                Text(
                  'Fullname',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  radius: AppWidths.width15,
                  hintText: 'Full Name',
                  isoutline: true,
                  contentpadding: EdgeInsets.all(
                    SizeConfig.widthMultiplier * 3.9,
                  ),
                  hintSize: SizeConfig.textMultiplier * 1.6,
                  textEditingController: nameController,
                ),
                Text(
                  'Street Address',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: 'Street Address',
                  contentpadding: EdgeInsets.all(
                    SizeConfig.widthMultiplier * 3.9,
                  ),
                  hintSize: SizeConfig.textMultiplier * 1.6,
                  textEditingController: streetController,
                ),
                Text(
                  'Apt, suite, etc.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: 'B 206',
                  inputType: TextInputType.text,
                  contentpadding: EdgeInsets.all(
                    SizeConfig.widthMultiplier * 3.9,
                  ),
                  hintSize: SizeConfig.textMultiplier * 1.8,
                  textEditingController: suitController,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 52.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'State',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.textMultiplier * 1.8),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          AuthTextInputField(
                            isoutline: true,
                            contentpadding: EdgeInsets.all(
                                SizeConfig.widthMultiplier * 3.9),
                            radius: SizeConfig.widthMultiplier * 4,
                            hintText: 'Indonesia',
                            textEditingController: stateController,
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              onPressed: () {
                                showCountryPicker(
                                    context: context,
                                    onSelect: (Country country) {
                                      setState(() {
                                        stateController.text = country.name;
                                      });
                                    });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Zip Code',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.textMultiplier * 1.8),
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            AuthTextInputField(
                              isoutline: true,
                              inputType: TextInputType.number,
                              contentpadding: EdgeInsets.all(
                                  SizeConfig.widthMultiplier * 3.9),
                              radius: SizeConfig.widthMultiplier * 4,
                              hintText: "12345",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Mobile Number',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            onSelect: (Country country) {
                              setState(() {
                                countryCode = country.countryCode;
                                flag = country.flagEmoji;
                              });
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 2.5),
                        height: SizeConfig.heightMultiplier * 6,
                        width: SizeConfig.widthMultiplier * 25,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                              SizeConfig.widthMultiplier * 4),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '$flag ',
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 3),
                              ),
                              Text(
                                countryCode,
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 2,
                                    color: Colors.blueGrey),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3),
                        child: AuthTextInputField(
                          isoutline: true,
                          contentpadding:
                              EdgeInsets.all(SizeConfig.widthMultiplier * 3.9),
                          radius: SizeConfig.widthMultiplier * 4,
                          inputAction: TextInputAction.done,
                          hintText: "(+62) 8888 7777",
                          inputformatter: [
                            MaskedInputFormatter('(+##) #### ######'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                MyLocation(controller: _controller, kGooglePlex: _kGooglePlex),
                SizedBox(height: AppHeights.height27),
                CustomTextButton(
                    title: 'Save',
                    colour: AppColors.primarylightColor,
                    height: SizeConfig.heightMultiplier * 7,
                    width: SizeConfig.widthMultiplier * 90,
                    textcolour: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                    radius: 15,
                    callback: () {}),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 12,
                )
              ],
            ),
          ),
        ));
  }
}
