import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_backdrop_filter.dart';
import 'package:portfolio/components/notify_snackbar.dart';
import 'package:portfolio/core/Data/profilePic_book.dart';
import 'package:portfolio/core/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePhotoBlockDesktop extends StatelessWidget {
  const ProfilePhotoBlockDesktop(
      {
    super.key,
    required this.deviceWidth,
    required this.deviceHeight
  });

  final double deviceWidth;
final double deviceHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight / 2,
      width: deviceWidth / 5,
      child: CustomBackdropFilter(
        borderRadius: containerStyle.borderRadius,
        margin: containerStyle.margin,
        child: Container(
          height: deviceHeight / 6,
      
          decoration: BoxDecoration(
            color: containerStyle.color,
            borderRadius: containerStyle.borderRadius,
            // image: const DecorationImage(
            //   image: AssetImage(profilepic),
            //   fit: BoxFit.fill,
            // ),
          ),
          padding: containerStyle.padding,
          // margin: containerStyle.margin,
          width: deviceWidth / 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                color: textStyles.B.color,
                Icons.verified_rounded,
                size: deviceWidth * 0.014,
              ),
              Center(
                  child: SizedBox(
                      height: 200, width: 200, child: Image.asset(profilepic))),
            ],
          ),
        ),
      ),
    );
  }
}

//

class ProfilePhotoBlockMobile extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;

  const ProfilePhotoBlockMobile(
      {super.key, required this.deviceWidth, required this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mobile_containerStyle.color,
        borderRadius: mobile_containerStyle.borderRadius,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      // margin: mobile_containerStyle.margin,
      width: deviceWidth * mobile_containerStyle.width,
      height: 215,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Image.asset(
              profilepic,
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(
            width: deviceWidth * 0.02,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "FARIZA ",
                                  style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.B),
                                ),
                                TextSpan(
                                  text: "<A/A>",
                                  style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.I),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          color: textStyles.B.color,
                          Icons.verified_rounded,
                          size: deviceWidth * mobile_containerStyle.iconSize,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),
                    //heading
                    FittedBox(
                      fit: BoxFit.contain,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Flutter",
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.Name1, fontSize: 20)),
                            TextSpan(
                                text: " Developer",
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.Name2, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () async {
                    notifySnackBar(context, "Redirecting to resume....");
                    final Uri url = Uri.parse(
                        'https://github.com/Farizaaaa/resume/blob/main/Fariza_A_A.pdf');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 99, 99, 99),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(bottom: 16),
                    width: deviceWidth * 0.25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Icon(
                              color: textStyles.B.color,
                              Icons.description,
                              size:
                                  deviceWidth * mobile_containerStyle.iconSize,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Resume",
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.B,
                                  fontSize: kDefaultFontSize),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // //about
                // AutoSizeText(
                //   minFontSize: 5,
                //   maxFontSize: 12,
                //   maxLines: 10,
                //   style: GoogleFonts.chakraPetch(textStyle: textStyles.P1_mobile),
                //   "Solving complex problems as an engineering student with a love for tech and learning.",
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
