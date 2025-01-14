import 'package:flutter/material.dart';
import 'package:portfolio/components/blocks/about_block.dart';
import 'package:portfolio/components/blocks/components_block.dart';
import 'package:portfolio/components/blocks/contact_me_block.dart';
import 'package:portfolio/components/blocks/designation_block.dart';
import 'package:portfolio/components/blocks/education_block.dart';
import 'package:portfolio/components/blocks/experience_block.dart';
import 'package:portfolio/components/blocks/location_block.dart';
import 'package:portfolio/components/blocks/name_block.dart';
import 'package:portfolio/components/blocks/profile_pic_block.dart';
import 'package:portfolio/components/blocks/projects_block.dart';
import 'package:portfolio/components/blocks/resume_block.dart';
import 'package:portfolio/components/hover_effect.dart';

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






