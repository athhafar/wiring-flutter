import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utilities/colors.dart';
import '../utilities/typhography.dart';


class ButtonPrimary extends StatefulWidget {
  const ButtonPrimary(
      {Key? key,
      required this.textButton,
      required this.onTap,
      this.paddingVertical = 16,
      this.paddingHorizontal = 16,
      this.isActive = true,
      this.icColor = Colors.white,
        this.textColor = kColorNeutral1,
      this.color = kColorPrimary1,
        this.iconLeft = ""})
      : super(key: key);

  final Color color;
  final Color textColor;
  final String textButton;
  final VoidCallback onTap;
  final double paddingVertical, paddingHorizontal;
  final bool isActive;
  final Color icColor;
  final String iconLeft;

  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.isActive ? widget.color : kColorNeutral2,
          borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (!widget.isActive) {
              return;
            }
            FocusScope.of(context).unfocus();
            widget.onTap();
          },
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: widget.paddingHorizontal, vertical: widget.paddingVertical),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.iconLeft.isNotEmpty ? Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(widget.iconLeft, color: Colors.white, width: 20,)) : const SizedBox(),
                Text(
                  widget.textButton,
                  style: TStyle.title.copyWith(color: widget.isActive ? widget.textColor : kColorNeutral1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
