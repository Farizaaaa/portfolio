import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/navigate.dart';
import 'package:portfolio/core/styles.dart';

class AboutBlock extends StatelessWidget {
  const AboutBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 317.0,
      child: GestureDetector(
        onTap: () {
          navigateTo(context, Container());
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomBackdropFilter(
            margin: containerStyle.margin,
            borderRadius: containerStyle.borderRadius,
            child: Container(
              decoration: BoxDecoration(
                color: containerStyle.color,
                borderRadius: containerStyle.borderRadius,
              ),
              padding: containerStyle.padding,
              // margin: containerStyle.margin,
              width: deviceWidth * containerStyle.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AutoSizeText.rich(
                          maxFontSize: 23,
                          minFontSize: 5,
                          maxLines: 1,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'About ',
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
                      Icon(
                        color: IconHClr,
                        Icons.arrow_outward_rounded,
                        size: deviceWidth * 0.014,
                      )
                    ],
                  ),
                  AutoSizeText(
                    minFontSize: 10,
                    maxFontSize: 15,
                    maxLines: 10,
                    style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
"Passionate about creating innovative mobile solutions, with two years of expertise in designing, developing, and deploying scalable, user-friendly applications using Flutter. Proficient in delivering high-quality solutions, collaborating with cross-functional teams, and staying updated with emerging industry trends"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
