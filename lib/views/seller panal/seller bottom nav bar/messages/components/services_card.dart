import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.image,
    required this.title,
    required this.message,
    required this.time,
    required this.onpressed,
  }) : super(key: key);
  final String image, title, message, time;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onpressed();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 10,
            width: SizeConfig.widthMultiplier * 100,
            // color: Colors.red,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: SizeConfig.widthMultiplier * 8,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(
                        text: title,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        size: SizeConfig.textMultiplier * 2.2,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.1,
                      ),
                      TextView(
                        text: message,
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        size: SizeConfig.textMultiplier * 2,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                TextView(
                  text: time,
                  color: Colors.black45,
                  fontWeight: FontWeight.w300,
                  size: SizeConfig.textMultiplier * 2,
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 25,
        )
      ],
    );
  }
}
