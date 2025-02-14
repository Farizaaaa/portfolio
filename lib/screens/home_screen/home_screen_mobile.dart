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

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: ProfilePhotoBlockMobile(
                deviceWidth: deviceWidth,
                deviceHeight: deviceHeight,
              ),
            ),

            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
                child: SkillsBlockMobile(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight)),
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: ProjectsBlockMobile(
                  deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            ),
            
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
                child: EducationBlockMobile(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight)),
        
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
                child: ExperienceBlocMobile(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight)),
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: GestureDetector(
                onTap: () async {
                  final Uri url =
                      Uri.parse("https://linkedin.com/in/fariza-a-a-661820253");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Could not launch $url');
                  }
                },
                child: ContactMeBlockMobile(
                    deviceWidth: deviceWidth, deviceHeight: deviceHeight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
