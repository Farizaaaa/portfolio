import 'package:flutter/material.dart';

class Project {
  final String image;

  final String title;
  final String description;
  final IconData icon;
  final String flutterSvg;
  final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.flutterSvg,
    required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

List<Project> projects = [
  Project(
    image: "assets/projects/amazon.svg",
    title: "amazon_clone",
    description:
        "A clone of the Amazon app with a clean interface and basic functionalities .",
    icon: Icons.shopping_cart_outlined,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Music browsing\n• UI/UX similar to Apple Music\n• dynamic content rendering",
    githubLink: "https://github.com/Farizaaaa/flutter_amazon_clone",
    demoVideoLink: "https://clone-app-music-8n3cr7.netlify.app/",
    screenshot1: "assets/projects/homepage.png",
    screenshot2: "assets/projects/amazon_account%screen.png",
  ),
  Project(
    image: "assets/todo_hive/homepage%.png",
    title: "todoapp_hive_getx",
    description:
        "A Basic ToDo App with Hive as storage and Getx as state management.",
    icon: Icons.checklist_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "• Deletion \n• Simple UI",
    githubLink:
        "https://github.com/Farizaaaa/ecommerseproject_yoga_website/tree/master",
    demoVideoLink: "https://tic-tac-toe-game-app-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/add_to_cart/home.png",
    title: "getx_add_to_cart",
    description:
        " Simple Add to cart UI design and functions using Flutter State Management technique GetX.",
    icon: Icons.add_shopping_cart,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Simple design\n• Cart total calculation",
    githubLink: "https://github.com/Farizaaaa/getx_add_to_cart",
    demoVideoLink: "https://nakuldevmv.github.io/",
    screenshot1: "assets/add_to_cart/home.png",
    screenshot2: "assets/add_to_cart/home.png",
  ),
  Project(
    image: "assets/projects/firebase_sign_in/signinPage.png",
    title: "firebase_signin_up_authentication",
    description:
        "Firebase Authentication In this repository contains basic Firebase email and password Authentication using Flutter",
    icon: Icons.login,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "• Real-time QR scanning\n• QR code generation\n• simple UI",
    githubLink:
        "https://github.com/Farizaaaa/flutter_firebase_signin_up_authentication",
    demoVideoLink: "https://qrcode-scanner-app-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
];
