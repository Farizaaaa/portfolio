import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_blob.dart';
import 'package:portfolio/components/mouse_tracker.dart';
import 'package:portfolio/components/responsive_layout.dart';
import 'package:portfolio/screens/home_screen/home_screen_desktop.dart';
import 'package:portfolio/screens/home_screen/home_screen_mobile.dart';

class HomeScreenLayoutBuilder extends StatelessWidget {
  final int currentIndex;
  const HomeScreenLayoutBuilder({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBlobBackground(
        numberOfBlobs: 4,
        gravitationalPull: 1.0,
        baseSpeed: 0.5,
        blobSizeMultiplier: 1,
        orbitRadius: 0.2,
        child: CursorTracker(
          child: ResponsiveLayout(
            desktopBody: const HomeScreenDesktop(),
            mobileBody: const HomeScreenMobile(),
            tabletBody: Container(),
          ),
        ),
      ),
    );
    
  }
}
