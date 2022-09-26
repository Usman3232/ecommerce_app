import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/seller%20panal/summary%20statement/summary_statement.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SyncDatePicker extends StatefulWidget {
  const SyncDatePicker({Key? key});
  @override
  State<StatefulWidget> createState() => SyncDatePickerState();
}

class SyncDatePickerState extends State<SyncDatePicker>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }

  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // print(args.value);
    setState(() {
      print("date");
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
      //print(args.value.startDate);
      DateTime asd = args.value.startDate;

      //Get.back();
      // print("Selected date is $_selectedDate");
      // print("date count $_dateCount");
      // print("range count $_rangeCount");
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
            scale: scaleAnimation!,
            child: Container(
              height: size.height * 0.54,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: size.width * 0.04,
                  right: size.width * 0.04),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 3),
                    child: Row(
                      children: [
                        TextView(
                          text: "Pick a date",
                          size: SizeConfig.textMultiplier * 2.2,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff434347),
                        ),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(AppIcons.cancel))
                      ],
                    ),
                  ),
                  SfDateRangePicker(
                      onSelectionChanged: _onSelectionChanged,
                      // enablePastDates: true,
                      // confirmText: 'OK',
                      headerStyle: const DateRangePickerHeaderStyle(
                        textStyle: TextStyle(color: Colors.black),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        textStyle: const TextStyle(color: Colors.black),
                        todayTextStyle: TextStyle(
                          color: AppColors.primarylightColor,
                        ),
                      ),
                      yearCellStyle: const DateRangePickerYearCellStyle(
                        textStyle: TextStyle(),
                      ),
                      selectionColor: AppColors.primarylightColor,
                      rangeSelectionColor: AppColors.primarylightColor,
                      endRangeSelectionColor: AppColors.primarylightColor,
                      startRangeSelectionColor: AppColors.primarylightColor,
                      todayHighlightColor: AppColors.primarylightColor,
                      toggleDaySelection: true,
                      selectionTextStyle: TextStyle(),
                      rangeTextStyle: TextStyle(color: Colors.black),
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                        DateTime.now(),
                        DateTime.now(),
                      )),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SummaryStatement());
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 90,
                      decoration: BoxDecoration(
                          color: AppColors.primarylightColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              fontSize: SizeConfig.textMultiplier * 2,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
