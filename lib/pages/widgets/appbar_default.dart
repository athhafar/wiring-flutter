import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../button/button_action.dart';
import '../utilities/colors.dart';
import '../utilities/typhography.dart';

class AppBarDefault extends StatelessWidget {
  const AppBarDefault(
      {Key? key,
      this.actions = const [],
      required this.title,
      this.withLeading = true,
      this.useShadow = true,
      this.bgColor = kColorNeutral1,
      this.textColor = kColorNeutral10,
      this.onTapBack = onTapBackDefault})
      : super(key: key);
  final List<Widget> actions;
  final String title;
  final bool withLeading;
  final bool useShadow;
  final VoidCallback onTapBack;
  final Color bgColor;
  final Color textColor;

  static onTapBackDefault() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top + 16,
        left: withLeading ? 8 : 0,
        right: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: useShadow
            ? [
                BoxShadow(
                  color: kColorNeutral10.withOpacity(0.1),
                  offset: const Offset(0, 0.5),
                  blurRadius: 2,
                )
              ]
            : null,
      ),
      child: Row(
        children: [
          withLeading
              ? Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: ButtonAction(
                    onTap: onTapBack,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3114/3114883.png',width: 24,),
                  ),
                )
              : const SizedBox(
                  width: 18,
                ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Text(
            title,
            style: TStyle.header1.copyWith(color: textColor),
            overflow: TextOverflow.ellipsis,
          )),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Row(
              children: actions,
            ),
          )
        ],
      ),
    );
  }
}
