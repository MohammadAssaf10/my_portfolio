import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import 'project.dart';

class Constant {
  Constant._();

  static const List<String> appBarTitles = [
    "Home",
    "Skills",
    "Projects",
    "Contact"
  ];
  static const List<IconData> appBarIcons = [
    Icons.home,
    Icons.handyman_outlined,
    Icons.apps,
    Icons.web,
  ];

  static final List<GlobalKey> appBarKeys =
      List.generate(4, (index) => GlobalKey());

  static final List<Map> platformItems = [
    {
      "img": Assets.imagesAndroidIcon,
      "title": "Android Dev",
    },
    {
      "img": Assets.imagesWebIcon,
      "title": "Web Dev",
    },
    {
      "img": Assets.imagesIosIcon,
      "title": "IOS Dev",
    },
  ];

  static final List<Map> skillItems = [
    {
      "img": Assets.imagesFlutter,
      "title": "Flutter",
    },
    {
      "img": Assets.imagesDart,
      "title": "Dart",
    },
  ];

  static final List<Project> workProject = [
    Project(
      image: Assets.imagesIMTN,
      title: 'iMTN',
      subtitle:
          'iMTN is your ultimate companion for managing MTN services with ease. Check your balance, activate offers, recharge, and explore exclusive packages—all in one convenient app. Stay connected and in control, anytime, anywhere!',
      androidLink:
          'https://imtn.mtnsyr.com:16060/customerCare/static/APK/iMTN_1.0.6.apk',
      webLink: 'https://imtn.mtnsyr.com/pwa',
    ),
    Project(
      image: Assets.imagesHiRadio,
      title: 'Hi Radio',
      subtitle:
          '"Hi Radio" offers you a seamless listening experience with the latest and greatest radio stations, anytime and anywhere. Stay connected to your favorite music, shows, and news—all in one easy-to-use app.',
      androidLink:
          'https://imtn.mtnsyr.com:16060/customerCare/static/Application/Hi_Radio_3.0.0.apk',
      webLink: 'https://bit.ly/HiRadio_ios',
    ),
    Project(
      image: Assets.imagesCashMobile,
      title: 'Cash Mobile',
      subtitle:
          'Cash Mobile is your go-to app for quick and secure financial transactions. Transfer money, pay bills, and manage your finances effortlessly, all in one place. Simplify your daily payments with ease and reliability!',
      androidLink:
          'https://imtn.mtnsyr.com:16060/customerCare/static/Application/Cash_Mobile.apk',
      webLink: 'https://cash.mtnsyr.com/',
    ),
  ];
}

class SocialMediaLinks {
  static const String github = "https://github.com/MohammadAssaf10";
  static const String linkedIn = "https://www.linkedin.com/in/mohamadassaf/";
  static const String facebook = "https://www.facebook.com/Mohamad10Assaf";
  static const String telegram = "https://t.me/MohamadAssaf10";
}
