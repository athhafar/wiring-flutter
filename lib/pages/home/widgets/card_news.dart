import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/colors.dart';
import '../../utilities/typhography.dart';

class CardNews extends StatelessWidget {
  CardNews({
    super.key,
    required this.image,
    required this.jobTitle,
    required this.company,
    required this.jobTypes,
    required this.location,
    required this.workSettings,
    required this.time,
    required this.onTap,
  });

  final String image;
  final String jobTitle;
  final String company;
  final String jobTypes;
  final String location;
  final String workSettings;
  final String time;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: kColorNeutral2),
        color: kColorNeutral1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: kColorNeutral1,
                          borderRadius: BorderRadius.circular(8),
                          // shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                image,
                              ),
                              fit: BoxFit.fitHeight)),
                    ),
                    Flexible(
                      child: Container(
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
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: kColorPrimary1_1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          jobTypes,
                          style: TStyle.captionRegular.copyWith(
                            color: kColorPrimary1_8,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 6),
                      child: Icon(
                        Icons.access_alarm,
                        weight: 12,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TStyle.captionRegular.copyWith(
                          color: kColorNeutral5,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm,
                          weight: 12,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            workSettings,
                            style: TStyle.captionRegular.copyWith(
                              color: kColorNeutral5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 6),
                            child: Icon(
                              Icons.access_alarm,
                              weight: 12,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              time,
                              style: TStyle.captionRegular.copyWith(
                                color: kColorSecondary2,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
