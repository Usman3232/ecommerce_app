import 'package:country_picker/country_picker.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  DateTime? _selectedDate;
  var countryCode = 'US';
  var flag = '🇺🇸';
  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        birthController.text = DateFormat.yMMMd().format(_selectedDate!);
      });
    });
  }

  var choose = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 27,
              width: SizeConfig.widthMultiplier * double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 20.6,
                    width: SizeConfig.widthMultiplier * double.infinity,
                    child: SvgPicture.asset(
                      AppIcons.largedrawerlogo,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: AppHeights.height20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: SizeConfig.imageSizeMultiplier * 27.2,
                          width: SizeConfig.imageSizeMultiplier * 27.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppImages.drawerdp),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white,
                                  width: SizeConfig.widthMultiplier * 1)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.imageSizeMultiplier * 10,
                          width: SizeConfig.imageSizeMultiplier * 20,
                          child: SvgPicture.asset(AppIcons.camera),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.widthMultiplier * 2.2,
                    top: SizeConfig.widthMultiplier * 13,
                    right: SizeConfig.widthMultiplier * 2.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                        Text(
                          'My Profile',
                          style: TextStyle(
                            fontSize: SizeConfig.textMultiplier * 1.8,
                            color: AppColors.primarydarkColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6.13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.8,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 9.5,
                    child: AuthTextInputField(
                      radius: AppWidths.width15,
                      hintText: 'Full Name',
                      isoutline: true,
                      hintSize: SizeConfig.textMultiplier * 1.6,
                      textEditingController: nameController,
                    ),
                  ),
                  Text(
                    'Date of birth',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textMultiplier * 1.8),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.8,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 9.5,
                    child: AuthTextInputField(
                      isoutline: true,
                      radius: AppWidths.width15,
                      hintText: 'Date of birth',
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          _pickDateDialog();
                        },
                      ),
                      hintSize: SizeConfig.textMultiplier * 1.6,
                      textEditingController: birthController,
                    ),
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.8,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 9.5,
                    child: AuthTextInputField(
                      isoutline: true,
                      radius: AppWidths.width15,
                      hintText: 'Select Gender',
                      hintSize: SizeConfig.textMultiplier * 1.6,
                      textEditingController: genderController,
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Get.dialog(
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            choose = 'Male';
                                            genderController.text = choose;
                                          });
                                          Get.back();
                                        },
                                        child: Text(
                                          'Male',
                                          style: GoogleFonts.urbanist(
                                              color: AppColors.primarydarkColor,
                                              fontSize:
                                                  SizeConfig.textMultiplier * 2,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    const Divider(),
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            choose = 'Female';
                                            genderController.text = choose;
                                          });
                                          Get.back();
                                        },
                                        child: Text(
                                          'Female',
                                          style: GoogleFonts.urbanist(
                                              color: AppColors.primarydarkColor,
                                              fontSize:
                                                  SizeConfig.textMultiplier * 2,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    const Divider(),
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            choose = 'Other';
                                            genderController.text = choose;
                                          });
                                          Get.back();
                                        },
                                        child: Text(
                                          'Other',
                                          style: GoogleFonts.urbanist(
                                              color: AppColors.primarydarkColor,
                                              fontSize:
                                                  SizeConfig.textMultiplier * 2,
                                              fontWeight: FontWeight.w600),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textMultiplier * 1.8),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.8,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 9.5,
                    child: AuthTextInputField(
                      isoutline: true,
                      radius: AppWidths.width15,
                      hintText: 'john12@gmail.com',
                      inputType: TextInputType.emailAddress,
                      contentpadding: EdgeInsets.all(
                        SizeConfig.widthMultiplier * 3.9,
                      ),
                      hintSize: SizeConfig.textMultiplier * 1.6,
                      textEditingController: mailController,
                    ),
                  ),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textMultiplier * 1.8),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1.2,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: CountryListThemeData(
                                flagSize: 25,
                                backgroundColor: Colors.white,
                                textStyle: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 2.04,
                                    color: Colors.blueGrey),
                                bottomSheetHeight: SizeConfig.heightMultiplier *
                                    50, // Optional. Country list modal height
                                //Optional. Sets the border radius for the bottomsheet.
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                //Optional. Styles the search field.
                                inputDecoration: InputDecoration(
                                  labelText: 'Search',
                                  hintText: 'Start typing to search',
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF8C98A8)
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                ),
                              ),
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
                                EdgeInsets.all(SizeConfig.widthMultiplier * 3),
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
                  CustomTextButton(
                      title: 'Save',
                      colour: AppColors.primarylightColor,
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 90,
                      textcolour: Colors.white,
                      fontSize: SizeConfig.textMultiplier * 1.8,
                      radius: 15,
                      callback: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
