import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/next_prev_controller.dart';
import 'package:portfolio/core/Data/education.dart';
import 'package:portfolio/core/styles.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EducationBlockDesktop extends StatelessWidget {
  const EducationBlockDesktop({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight / 3,
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
                            text: 'Education',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingI),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    color: textStyles.B.color,
                    Icons.school_rounded,
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
                    itemCount: educations.length,
                    itemBuilder: (context, index) {
                      return TimelineTile(
                        isFirst: educations[index].start,
                        isLast: educations[index].end,
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
                          flex: 5,
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
                                    educations[index].institutionName,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_H_B),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Row(
                                    children: [
                                      Text(
                                        educations[index].startTime,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                      const Text(" - "),
                                      Text(
                                        educations[index].endTime,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_L),
                                      ),
                                    ],
                                  ),
                                ),
                                educations[index].department != ''
                                    ? FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          educations[index].department,
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.edu_P_N),
                                        ),
                                      )
                                    : const Offstage(),
                                educations[index].grade != ''
                                    ? FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          educations[index].grade,
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.edu_P_N),
                                        ),
                                      )
                                    : const Offstage(),
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





//

class EducationBlockMobile extends StatelessWidget {
  const EducationBlockMobile(
      {super.key, required this.deviceWidth, required this.deviceHeight});
  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mobile_containerStyle.color,
        borderRadius: mobile_containerStyle.borderRadius,
      ),
      padding: const EdgeInsets.only(top: 16),
      // margin: mobile_containerStyle.margin,
      width: deviceWidth * mobile_containerStyle.width,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
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
                          text: 'Education',
                          style: GoogleFonts.chakraPetch(
                              textStyle: textStyles.HeadingI),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  color: textStyles.B.color,
                  Icons.school_rounded,
                  size: deviceWidth * mobile_containerStyle.iconSize,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 171,
            child: ListView.builder(
              // controller: pgController2,
              scrollDirection: Axis.horizontal,
              itemCount: educations.length,
              itemBuilder: (context, index) {
                return TimelineTile(
                  axis: TimelineAxis.horizontal,
                  isFirst: educations[index].start,
                  isLast: educations[index].end,
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
                        iconData: Icons.arrow_drop_down_rounded),
                  ),
                  alignment: TimelineAlign.start,
                  endChild: Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        padding: EducationcontainerStyle.padding,
                        margin: EducationcontainerStyle.margin,
                        decoration: BoxDecoration(
                          color: EducationcontainerStyle.color,
                          borderRadius: EducationcontainerStyle.borderRadius,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                educations[index].institutionName,
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.edu_H_B),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                children: [
                                  Text(
                                    educations[index].startTime,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_P_L),
                                  ),
                                  const Text(" - "),
                                  Text(
                                    educations[index].endTime,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_P_L),
                                  ),
                                ],
                              ),
                            ),
                            educations[index].department != ''
                                ? FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      educations[index].department,
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.edu_P_N),
                                    ),
                                  )
                                : const Offstage(),
                            educations[index].grade != ''
                                ? FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      educations[index].grade,
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.edu_P_N),
                                    ),
                                  )
                                : const Offstage(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//

class EducationBlocKTablet extends StatelessWidget {
  const EducationBlocKTablet.EducationBlockTablet(
      {super.key, required this.deviceWidth, required this.deviceHeight});
  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: tablet_containerStyle.color,
        borderRadius: tablet_containerStyle.borderRadius,
      ),
      padding: const EdgeInsets.only(top: 16),
      // margin: tablet_containerStyle.marginCol2,
      width: deviceWidth * tablet_containerStyle.width,
      height: tablet_containerStyle.row2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
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
                          text: 'Education',
                          style: GoogleFonts.chakraPetch(
                              textStyle: textStyles.HeadingI),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  color: textStyles.B.color,
                  Icons.school_rounded,
                  size: deviceWidth < 900
                      ? tablet_containerStyle.iconSizeS
                      : tablet_containerStyle.iconSizeL,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15 - 3,
          ),
          SizedBox(
            height: 171,
            child: ListView.builder(
              controller: pgController2,
              scrollDirection: Axis.horizontal,
              itemCount: educations.length,
              itemBuilder: (context, index) {
                return TimelineTile(
                  axis: TimelineAxis.horizontal,
                  isFirst: educations[index].start,
                  isLast: educations[index].end,
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
                        iconData: Icons.arrow_drop_down_rounded),
                  ),
                  alignment: TimelineAlign.start,
                  endChild: Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        padding: EducationcontainerStyle.padding,
                        margin: EducationcontainerStyle.margin,
                        decoration: BoxDecoration(
                          color: EducationcontainerStyle.color,
                          borderRadius: EducationcontainerStyle.borderRadius,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                educations[index].institutionName,
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.edu_H_B),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                children: [
                                  Text(
                                    educations[index].startTime,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_P_L),
                                  ),
                                  const Text(" - "),
                                  Text(
                                    educations[index].endTime,
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.edu_P_L),
                                  ),
                                ],
                              ),
                            ),
                            educations[index].department != ''
                                ? FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      educations[index].department,
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.edu_P_N),
                                    ),
                                  )
                                : const Offstage(),
                            educations[index].grade != ''
                                ? FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      educations[index].grade,
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.edu_P_N),
                                    ),
                                  )
                                : const Offstage(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 3),
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(0),
              width: deviceWidth * tablet_containerStyle.widthButton,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                // color: EducationcontainerStyle.color,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        toPrevious(pgController2);
                      },
                      child: Icon(
                        color: textStyles.B.color,
                        Icons.arrow_back_ios_new_rounded,
                        size: deviceWidth < 900
                            ? tablet_containerStyle.iconSizeS
                            : tablet_containerStyle.iconSizeL,
                      ),
                    ),
                  ),
                  // Icon(
                  //   color: textStyles.B.color,
                  //   Icons.linear_scale_outlined,
                  //   size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                  // ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        toNext(educations.length, pgController2);
                      },
                      child: Icon(
                        color: textStyles.B.color,
                        Icons.arrow_forward_ios_rounded,
                        size: deviceWidth < 900
                            ? tablet_containerStyle.iconSizeS
                            : tablet_containerStyle.iconSizeL,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
