import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/navigate.dart';
import 'package:portfolio/core/styles.dart';

class ContactMeBlock extends StatelessWidget {
  const ContactMeBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.5,
      child: GestureDetector(
        onTap: () {
          navigateTo(context, Container());
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          "Have some\nQuestions?",
                          maxLines: 3,
                          maxFontSize: 15,
                          minFontSize: 10,
                          style:
                              GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                        ),
                      ),
                      Icon(
                        color: IconHClr,
                        Icons.arrow_outward_rounded,
                        size: deviceWidth * 0.014,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AutoSizeText.rich(
                          maxFontSize: 23,
                          minFontSize: 5,
                          maxLines: 1,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Contact ',
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.HeadingB),
                              ),
                              TextSpan(
                                text: 'Me',
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.HeadingI),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
