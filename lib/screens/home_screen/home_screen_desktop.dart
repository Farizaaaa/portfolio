import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/blocks/location_block.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/designation_block.dart';
import 'package:portfolio/components/download_resume.dart';
import 'package:portfolio/components/hover_effect.dart';
import 'package:portfolio/components/navigate.dart';
import 'package:portfolio/components/notify_snackbar.dart';
import 'package:portfolio/core/Data/profilePic_book.dart';
import 'package:portfolio/core/Data/projects.dart';
import 'package:portfolio/core/Data/skill.dart';
import 'package:portfolio/core/styles.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  State<HomeScreenDesktop> createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    double deviceWidth =
        isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;

    String rurl = 'https://farizaaaa.github.io/resume/resume.pdf';

    return Center(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: deviceWidth < 1365
                        ? deviceWidth * 0.86
                        : deviceWidth * 0.84,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 248.3,
                              child: HoverEffect(
                                childA:
                                    DesignationBlock(deviceWidth: deviceWidth),
                                childB: LocationBlock(deviceWidth: deviceWidth),
                              ),
                            ),
                            AboutBlock(deviceWidth: deviceWidth),
                            ResumeBlock(rurl: rurl, deviceWidth: deviceWidth),
                          ],
                        ),
                        Column(
                          children: [
                            NameBlock(deviceWidth: deviceWidth),
                            ProfilePhotoBlock(deviceWidth: deviceWidth),
                            ContactMeBlock(deviceWidth: deviceWidth),
                          ],
                        ),
                        Column(
                          children: [
                            ProjectsBlock(
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                            SkillsBlock(
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                          ],
                        ),
                        Column(
                          children: [
                            ExperienceBlock(
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                            EducationBlock(
                                deviceWidth: deviceWidth,
                                deviceHeight: deviceHeight),
                          ],
                        ),
                      ],
                    ),
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

class SkillsBlock extends StatelessWidget {
  const SkillsBlock({
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
                            // color: textStyles.B.color,
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

class ProjectsBlock extends StatelessWidget {
  const ProjectsBlock({
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
                  navigateTo(context, Container());
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
                      return GestureDetector(
                        onTap: () {
                          navigateTo(context, Container());
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

class ProfilePhotoBlock extends StatelessWidget {
  const ProfilePhotoBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.8,
      child: CustomBackdropFilter(
        borderRadius: containerStyle.borderRadius,
        margin: containerStyle.margin,
        child: Container(
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
            image: const DecorationImage(
              image: AssetImage(profilepic),
              fit: BoxFit.fitHeight,
            ),
          ),
          padding: containerStyle.padding,
          // margin: containerStyle.margin,
          width: deviceWidth * containerStyle.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                color: textStyles.B.color,
                Icons.verified_rounded,
                size: deviceWidth * 0.014,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NameBlock extends StatelessWidget {
  const NameBlock({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.3,
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
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Nakul",
                    style:
                        GoogleFonts.chakraPetch(textStyle: textStyles.Name1)),
                TextSpan(
                    text: "</Dev>",
                    style:
                        GoogleFonts.chakraPetch(textStyle: textStyles.Name2)),
              ])),
            ),
          ),
        ),
      ),
    );
  }
}

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
                    "Computer engineer with a strong foundation in problem-solving and software development. Committed to building efficient, reliable solutions and continuously expanding my skills to stay current with evolving technologies.",
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
