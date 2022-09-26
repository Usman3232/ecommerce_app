import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/order_history_listview_widget.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order History',
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
            horizontal: SizeConfig.widthMultiplier * 5.8,
            vertical: SizeConfig.heightMultiplier * 1.8),
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.white,
              indicatorPadding: EdgeInsets.all(SizeConfig.widthMultiplier * 1),
              indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.primarylightColor,
                  borderRadius: BorderRadius.circular(15)),
              tabs: const [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Complete',
                ),
                Tab(
                  text: 'Cancel',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.primarydarkColor,
              indicatorWeight: 3,
              padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 1),
            ),
            SizedBox(
              height: AppHeights.height8,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  OrderHistoryListView(),
                  OrderHistoryListView(),
                  OrderHistoryListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
