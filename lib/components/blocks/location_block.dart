import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';

class LocationBlock extends StatelessWidget {
  const LocationBlock({
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
          // constraints: const BoxConstraints(
          //   maxHeight: 248.3,
          //   // maxWidth: 300,
          // ),
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
          ),
          padding: containerStyle.padding,
          // height: 248.3,

          // margin: containerStyle.margin,
          width: deviceWidth * containerStyle.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                color: textStyles.B.color,
                Icons.code,
                size: deviceWidth * 0.014,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\nFlutter",
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                      ),
                      TextSpan(
                        text: " Developer     ",
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                      ),
                      TextSpan(
                        text: "\nB.E ",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.B, fontSize: 20),
                      ),
                      TextSpan(
                        text: "CSE",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.I, fontSize: 20),
                      ),
                      TextSpan(
                        text: " Student",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.B, fontSize: 20),
                      ),
                      TextSpan(
                        text: "\nKerala",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.I,
                            fontSize: kDefaultFontSize),
                      ),
                      TextSpan(
                        text: ", India",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.B,
                            fontSize: kDefaultFontSize),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
