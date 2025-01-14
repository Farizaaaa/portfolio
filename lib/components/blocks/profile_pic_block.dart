import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/Data/profilePic_book.dart';
import 'package:portfolio/core/styles.dart';

class ProfilePhotoBlock extends StatelessWidget {
  const ProfilePhotoBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.8,
      child: CustomBackdropFilter(
        borderRadius: containerStyle.borderRadius,
        margin: containerStyle.margin,
        child: Container(
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
            image: const DecorationImage(
              image: AssetImage(profilepic),
              fit: BoxFit.fitHeight,
            ),
          ),
          padding: containerStyle.padding,
          // margin: containerStyle.margin,
          width: deviceWidth * containerStyle.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                color: textStyles.B.color,
                Icons.verified_rounded,
                size: deviceWidth * 0.014,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
