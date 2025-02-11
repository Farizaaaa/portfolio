import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/Data/skill.dart';
import 'package:portfolio/core/styles.dart';

class SkillsBlockDesktop extends StatelessWidget {
  const SkillsBlockDesktop({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 299.0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            text: 'Tech I',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingI),
                          ),
                          TextSpan(
                            text: ' Love',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingB),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    color: textStyles.B.color,
                    Icons.lens_blur_rounded,
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
                flex: 2,
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(scrollbars: false),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      // crossAxisSpacing: 3,
                      // mainAxisSpacing: 3,
                    ),
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          // color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            skills[index],
                             
                            width: deviceWidth * 0.06,
                            height: deviceHeight * 0.06,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class SkillsBlockMobile extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  const SkillsBlockMobile(
      {super.key, required this.deviceWidth, required this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mobile_containerStyle.color,
        borderRadius: mobile_containerStyle.borderRadius,
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      width: deviceWidth * mobile_containerStyle.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        text: 'Tech I',
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingI),
                      ),
                      TextSpan(
                        text: ' Love',
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingB),
                      )
                    ],
                  ),
                ),
              ),
              Icon(
                color: textStyles.B.color,
                Icons.lens_blur_rounded,
                size: deviceWidth * mobile_containerStyle.iconSize,
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.015,
          ),
          SizedBox(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[0],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[1],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[2],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[3],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[4],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[5],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[6],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[7],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * mobile_SVGContainer.width,
                      child: Center(
                        child: SvgPicture.asset(
                          skills[8],
                          width: deviceWidth * mobile_SVGContainer.width,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
