import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constnats.dart';
import 'package:flutter_app/services/assets_manager.dart';
import 'package:flutter_app/widgets/text_widget.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex == 0 ? AssetsManager.userImg : AssetsManager.botImg,
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextWidget(label: msg),
                ),
                chatIndex == 0
                    ? const SizedBox.shrink()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.thumb_down_alt_outlined,
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_up_outlined,
                            color: Colors.white,
                            size: 14,
                          )
                        ],
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
