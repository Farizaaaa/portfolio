import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/download_resume.dart';
import 'package:portfolio/components/notify_snackbar.dart';
import 'package:portfolio/core/styles.dart';

class ResumeBlock extends StatelessWidget {
  const ResumeBlock({
    super.key,
    required this.rurl,
    required this.deviceWidth,
  });

  final String rurl;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.3,
      child: GestureDetector(
        onTap: () {
          downloadResume(rurl);
          notifySnackBar(context, "My Resume Will Be Downloaded Shortly");
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CustomBackdropFilter(
            borderRadius: containerStyle.borderRadius,
            margin: containerStyle.margin,
            child: Container(
              decoration: BoxDecoration(
                color: containerStyle.colorR,
                borderRadius: containerStyle.borderRadius,
              ),
              padding: containerStyle.padding,
              // margin: containerStyle.margin,
              width: deviceWidth * containerStyle.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    color: textStyles.B.color,
                    Icons.download_rounded,
                    size: deviceWidth * 0.014,
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
                                text: "My ",
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.HeadingB,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: "Resume",
                                style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.HeadingI,
                                  color: Colors.black,
                                  // backgroundColor: const Color.fromARGB(255, 119, 119, 119)
                                ),
                              ),
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
