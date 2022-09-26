import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/chat/chat.dart';
import 'package:ecommerce_app/views/seller%20panal/seller%20bottom%20nav%20bar/messages/components/services_card.dart';
import 'package:ecommerce_app/views/seller%20panal/sellers%20model/services_model.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TextView(
            text: 'Messages',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: message_model.length,
                itemBuilder: (context, index) {
                  return MessageCard(
                    image: message_model[index].img,
                    title: message_model[index].title,
                    message: message_model[index].message,
                    time: message_model[index].time,
                    onpressed: () {},
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
