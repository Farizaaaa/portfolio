import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';

class DesignationBlock extends StatelessWidget {
  const DesignationBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return CustomBackdropFilter(
      borderRadius: containerStyle.borderRadius,
      margin: containerStyle.margin,
      child: Container(
        decoration: BoxDecoration(
          color: containerStyle.color,
          borderRadius: containerStyle.borderRadius,
        ),
        padding: containerStyle.padding,
        width: deviceWidth * containerStyle.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  color: textStyles.B.color,
                  Icons.lightbulb,
                  size: deviceWidth * 0.014,
                ),
              ],
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Flutter",
                      style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                    ),
                    TextSpan(
                      text: " Developer ",
                      style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
