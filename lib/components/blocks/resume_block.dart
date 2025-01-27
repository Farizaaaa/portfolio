import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeBlock extends StatelessWidget {
  const ResumeBlock({
    super.key,
    required this.rurl,
    required this.deviceWidth,
  });

  final String rurl;
  final double deviceWidth;

  // Function to launch the URL
  Future<void> _launchURL() async {
    final Uri url = Uri.parse(
        'https://github.com/Farizaaaa/resume/blob/main/Fariza_A_A%20(2).pdf');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.3,
      child: GestureDetector(
        onTap: () {
          _launchURL(); // Launch resume URL on tap
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click, // Change cursor on hover
          child: CustomBackdropFilter(
            borderRadius: containerStyle.borderRadius,
            margin: containerStyle.margin,
            child: Container(
              decoration: BoxDecoration(
                color: containerStyle.colorR,
                borderRadius: containerStyle.borderRadius,
              ),
              padding: containerStyle.padding,
              width: deviceWidth * containerStyle.width,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center content horizontally
                children: [
                 
                  const SizedBox(
                      height: 8.0), // Add spacing between icon and text
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center text horizontally
                    children: [
                      // No need for Expanded here, just let the text widget take its natural size
                      AutoSizeText.rich(
                        maxFontSize: 23,
                        minFontSize: 5,
                        maxLines: 1,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "My ",
                              style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingB,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "Resume",
                              style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingI,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
