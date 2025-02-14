import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeBlockDesktop extends StatelessWidget {
  const ContactMeBlockDesktop({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  Future<void> _launchURL() async {
    final Uri url = Uri.parse("https://linkedin.com/in/fariza-a-a-661820253");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.5,
      child: GestureDetector(
        onTap: () {
          _launchURL();
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
              width: deviceWidth * containerStyle.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // First Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
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
                  // Second Row
                  Row(
                    children: [
                      Flexible(
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




//

class ContactMeBlockMobile extends StatelessWidget {
  const ContactMeBlockMobile(
      {super.key, required this.deviceWidth, required this.deviceHeight});
  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerStyle.color,
        borderRadius: mobile_containerStyle.borderRadius,
      ),
      padding: mobile_containerStyle.padding,
      width: deviceWidth * mobile_containerStyle.width,
      height: 103,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AutoSizeText(
                  "Have some Questions?",
                  maxLines: 3,
                  maxFontSize: 15,
                  minFontSize: 10,
                  style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                ),
              ),
              Icon(
                color: IconHClr,
                Icons.arrow_outward_rounded,
                size: deviceWidth * mobile_containerStyle.iconSize,
              ),
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.015,
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
    );
  }
}

//

class ContactMeBlockTablet extends StatelessWidget {
  const ContactMeBlockTablet(
      {super.key, required this.deviceWidth, required this.deviceHeight});

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerStyle.color,
        borderRadius: containerStyle.borderRadius,
      ),
      padding: tablet_containerStyle.padding,
      // margin: tablet_containerStyle.marginCol2,
      width: deviceWidth * tablet_containerStyle.width,
      height: tablet_containerStyle.row3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AutoSizeText(
                  "Have some \nQuestions?",
                  maxLines: 3,
                  maxFontSize: 15,
                  minFontSize: 10,
                  style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                ),
              ),
              Icon(
                color: IconHClr,
                Icons.arrow_outward_rounded,
                size: deviceWidth < 900
                    ? tablet_containerStyle.iconSizeS
                    : tablet_containerStyle.iconSizeL,
              ),
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.015,
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
    );
  }
}
