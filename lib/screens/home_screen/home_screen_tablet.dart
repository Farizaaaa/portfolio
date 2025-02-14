import 'package:flutter/material.dart';
import 'package:portfolio/components/blocks/contact_me_block.dart';
import 'package:portfolio/components/blocks/education_block.dart';
import 'package:portfolio/components/blocks/experience_block.dart';
import 'package:portfolio/components/blocks/profile_pic_block.dart';
import 'package:portfolio/components/blocks/projects_block.dart';
import 'package:portfolio/components/blocks/skills_block.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenTablet extends StatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  State<HomeScreenTablet> createState() => _HomeScreenTabletState();
}

class _HomeScreenTabletState extends State<HomeScreenTablet> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBackdropFilter(
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.margin,
                  child: ProfilePhotoBlocTablet(
                    deviceWidth: deviceWidth,
                    deviceHeight: deviceHeight,
                  ),
                ),
                CustomBackdropFilter(
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.marginCol2,
                  child: SkillsBlockTablet(
                    deviceWidth: deviceWidth,
                    deviceHeight: deviceHeight,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBackdropFilter(
                    borderRadius: tablet_containerStyle.borderRadius,
                    margin: tablet_containerStyle.margin,
                    child: ProjectsBlocTablet(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    )),
                CustomBackdropFilter(
                    borderRadius: tablet_containerStyle.borderRadius,
                    margin: tablet_containerStyle.marginCol2,
                    child: EducationBlocKTablet.EducationBlockTablet(
                        deviceWidth: deviceWidth, deviceHeight: deviceHeight)),
              ],
            ),
            //my exp
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBackdropFilter(
                    borderRadius: tablet_containerStyle.borderRadius,
                    margin: tablet_containerStyle.margin,
                    child: ExperienceBlockTablet(
                      deviceWidth: deviceWidth,
                      deviceHeight: deviceHeight,
                    ),
                  ),
                  //contact me
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            "https://linkedin.com/in/fariza-a-a-661820253");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('Could not launch $url');
                        }
                      },
                      child: CustomBackdropFilter(
                        borderRadius: containerStyle.borderRadius,
                        margin: tablet_containerStyle.marginCol2,
                        child: ContactMeBlockTablet(
                          deviceWidth: deviceWidth,
                          deviceHeight: deviceHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
