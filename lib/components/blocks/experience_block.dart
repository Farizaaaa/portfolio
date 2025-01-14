import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/Data/exp.dart';
import 'package:portfolio/core/styles.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceBlock extends StatelessWidget {
  const ExperienceBlock({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight / 1.5,
      child: CustomBackdropFilter(
        borderRadius: containerStyle.borderRadius,
        margin: containerStyle.margin,
        child: Container(
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
          ),
          padding: containerStyle.paddingNew,
          // margin: containerStyle.margin,
          width: deviceWidth * containerStyle.width,
          child: Column(
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
                            text: 'My ',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingB),
                          ),
                          TextSpan(
                            text: 'Experience',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingI),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    color: textStyles.B.color,
                    Icons.work_history_rounded,
                    size: deviceWidth * 0.014,
                  )
                ],
              ),

              ///padding box
              SizedBox(
                height: deviceHeight * 0.015,
              ),
              ////
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(scrollbars: false),
                  child: ListView.builder(
                    itemCount: experiences.length,
                    itemBuilder: (context, index) {
                      return TimelineTile(
                        isFirst: experiences[index].start,
                        isLast: experiences[index].end,
                        afterLineStyle: LineStyle(
                          thickness: 2,
                          color: EducationcontainerStyle.color,
                        ),
                        beforeLineStyle: LineStyle(
                          thickness: 2,
                          color: EducationcontainerStyle.color,
                        ),
                        indicatorStyle: IndicatorStyle(
                          color: EducationcontainerStyle.color,
                          iconStyle: IconStyle(
                              color: Colors.white,
                              fontSize: 25,
                              iconData: Icons.arrow_right_rounded),
                        ),
                        alignment: TimelineAlign.start,
                        endChild: Expanded(
                          child: Container(
                            padding: EducationcontainerStyle.padding,
                            margin: EducationcontainerStyle.margin,
                            decoration: BoxDecoration(
                              color: EducationcontainerStyle.color,
                              borderRadius:
                                  EducationcontainerStyle.borderRadius,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    experiences[index].role,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_H_B),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Row(
                                    children: [
                                      Text(
                                        experiences[index].startTime,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                      Text(
                                        ' - ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                      Text(
                                        experiences[index].endTime,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                      Text(
                                        ' • ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                      Text(
                                        experiences[index].duration,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      // color: Colors.amber,
                                      width: deviceWidth * 0.1,
                                      child: Text(
                                        experiences[index].companyName,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_N),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
