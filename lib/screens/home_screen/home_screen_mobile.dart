import 'package:flutter/material.dart';
import 'package:portfolio/components/blocks/profile_pic_block.dart';
import 'package:portfolio/components/blocks/skills_block.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/core/styles.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                // height: deviceHeight * (mobile_containerStyle.height * .9),
              ),
            ),
            //my projects
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: SkillsBlockMobile(
                  deviceWidth: deviceWidth, deviceHeight: deviceHeight),
            ),
            //My Edu
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 260,
              ),
            ),
            //my exp
            CustomBackdropFilter(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 220,
              ),
            ),
            //contact me
            GestureDetector(
              // onTap: () {
              //   navigateTo(context, const toResponsiveLayout_contactMe());
              // },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomBackdropFilter(
                  borderRadius: mobile_containerStyle.borderRadius,
                  margin: mobile_containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: mobile_containerStyle.borderRadius,
                    ),
                    padding: mobile_containerStyle.padding,
                    // margin: mobile_containerStyle.margin,
                    width: deviceWidth * mobile_containerStyle.width,
                    height: 103,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
