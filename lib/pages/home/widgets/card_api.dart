import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/colors.dart';
import '../../utilities/typhography.dart';

class CardApi extends StatelessWidget {
  CardApi({
    super.key,
    required this.jobTitle,
    required this.company,
  });

  final String jobTitle;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            jobTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TStyle.body2.copyWith(
              color: kColorPrimary2,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            company,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TStyle.captionRegular.copyWith(
              color: kColorNeutral10,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
