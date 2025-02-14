import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/next_prev_controller.dart';
import 'package:portfolio/core/Data/projects.dart';
import 'package:portfolio/core/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsBlockDesktop extends StatelessWidget {
  const ProjectsBlockDesktop({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
  });

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 378.6,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                 
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
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
                                text: 'Projects',
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
                ),
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
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      Future<void> launchURL() async {
                        final Uri url = Uri.parse(projects[index].githubLink);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('Could not launch $url');
                        }
                      }

                      return GestureDetector(
                        onTap: () {
                          launchURL();
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ProjectcontainerStyle.color,
                              borderRadius:
                                  EducationcontainerStyle.borderRadius,
                            ),
                            padding: ProjectcontainerStyle.padding,
                            margin: ProjectcontainerStyle.margin,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        color: textStyles.B.color,
                                        projects[index].icon,
                                        size: deviceWidth * 0.014,
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceWidth * 0.115,
                                      child: AutoSizeText(
                                          minFontSize: 5,
                                          maxFontSize: 15,
                                          maxLines: 1,
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P2B),
                                          overflow: TextOverflow.ellipsis,
                                          projects[index].title),
                                    ),
                                  ],
                                ),
                                Icon(
                                  color: textStyles.B.color,
                                  Icons.arrow_forward_ios_rounded,
                                  size: deviceWidth * 0.014,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}








//

class ProjectsBlockMobile extends StatelessWidget {
  const ProjectsBlockMobile(
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
      height: 255 + 4.5,
      width: deviceWidth * mobile_containerStyle.width,
      // height: deviceHeight * (mobile_containerStyle.height * 1.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
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
                            text: 'Projects',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.HeadingI),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    color: IconHClr,
                    Icons.arrow_outward_rounded,
                    size: deviceWidth * mobile_containerStyle.iconSize,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 170,
            child: ListView.builder(
              // controller: pgController,
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                Future<void> launchURL() async {
                  final Uri url = Uri.parse(projects[index].githubLink);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Could not launch $url');
                  }
                }

                return GestureDetector(
                  onTap: () {
                    launchURL();
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: EducationcontainerStyle.color,
                          borderRadius: EducationcontainerStyle.borderRadius,
                        ),
                        height: mobile_ProjectContainer.height,
                        width: mobile_ProjectContainer.width,
                        padding: mobile_ProjectContainer.padding,
                        margin: mobile_ProjectContainer.margin,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                                color: textStyles.B.color,
                                Icons.arrow_right_rounded,
                                size: 33),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 35),
                                  child: Icon(
                                    color: textStyles.B.color,
                                    projects[index].icon,
                                    size: 42,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      Container(
                        // decoration:  BoxDecoration(
                        //   color: EducationcontainerStyle.color,
                        //   borderRadius: mobile_ProjectContainer.borderRadius,
                        // ),
                        height: 30,
                        width: mobile_ProjectContainer.width,
                        padding: const EdgeInsets.only(left: 5),
                        margin: mobile_ProjectContainer.margin,
                        child: Text(
                          // minFontSize: 1,
                          // maxFontSize: 15,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.chakraPetch(
                              textStyle: textStyles.P2B, fontSize: 12),
                          // overflow: TextOverflow.ellipsis,
                          projects[index].title,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(0),
            width: deviceWidth * mobile_containerStyle.widthButton,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color.fromARGB(0, 26, 26, 26)),
            // child: Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         toPrevious(pgController);
            //       },
            //       child: Icon(color: textStyles.B.color,

            //         Icons.arrow_back_ios_new_rounded,
            //         size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
            //       ),
            //     ),
            //     Icon(color: textStyles.B.color,

            //       Icons.linear_scale_outlined,
            //       size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         toNext(projects.length, pgController);
            //       },
            //       child: Icon(color: textStyles.B.color,

            //         Icons.arrow_forward_ios_rounded,
            //         size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
            //       ),
            //     ),
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}

//

class ProjectsBlocTablet extends StatelessWidget {
  const ProjectsBlocTablet(
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
      // margin: tablet_containerStyle.margin,
      //250
      height: tablet_containerStyle.row2,
      width: deviceWidth * tablet_containerStyle.width,
      // height: deviceHeight * (tablet_containerStyle.height * 1.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
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
                              text: 'Projects',
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.HeadingI),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      color: IconHClr,
                      Icons.arrow_outward_rounded,
                      size: deviceWidth < 900
                          ? tablet_containerStyle.iconSizeS
                          : tablet_containerStyle.iconSizeL,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 170,
              child: ListView.builder(
                controller: pgController,
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  Future<void> launchURL() async {
                    final Uri url = Uri.parse(projects[index].githubLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      print('Could not launch $url');
                    }
                  }

                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        launchURL();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: EducationcontainerStyle.color,
                              borderRadius:
                                  EducationcontainerStyle.borderRadius,
                            ),
                            height: mobile_ProjectContainer.height,
                            width: mobile_ProjectContainer.width,
                            padding: mobile_ProjectContainer.padding,
                            margin: mobile_ProjectContainer.margin,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                    color: textStyles.B.color,
                                    Icons.arrow_right_rounded,
                                    size: 33),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 35),
                                      child: Icon(
                                        color: textStyles.B.color,
                                        projects[index].icon,
                                        size: 42,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: deviceHeight * 0.01,
                          ),
                          Container(
                            // decoration:  BoxDecoration(
                            //   color: EducationcontainerStyle.color,
                            //   borderRadius: mobile_ProjectContainer.borderRadius,
                            // ),
                            height: 30,
                            width: mobile_ProjectContainer.width,
                            padding: const EdgeInsets.only(left: 5),
                            margin: mobile_ProjectContainer.margin,
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.P2B, fontSize: 12),
                              projects[index].title,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          //prev_next
          Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 3),
            child: Container(
              padding: const EdgeInsets.all(5),
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
                        toPrevious(pgController);
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
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        toNext(projects.length, pgController);
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
