import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';

class NameBlock extends StatelessWidget {
  const NameBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.3,
      child: CustomBackdropFilter(
        borderRadius: containerStyle.borderRadius,
        margin: containerStyle.margin,
        child: Container(
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
          ),
          padding: containerStyle.padding,
          // margin: containerStyle.margin,
          width: deviceWidth * containerStyle.width,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Fariza",
                    style:
                        GoogleFonts.chakraPetch(textStyle: textStyles.Name1)),
                TextSpan(
                    text: "<A/A>",
                    style:
                        GoogleFonts.chakraPetch(textStyle: textStyles.Name2)),
              ])),
            ),
          ),
        ),
      ),
    );
  }
}
