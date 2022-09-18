import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:login/onboarding_screens/welcome_screen/welcome_screen.dart';

import '../../app_theme.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      Slide(
        title: "About Us!",
        description:
            "We are an application that helps you to sell, buy, rent a car, we look with you carefully and always choose the best for you",
        pathImage: "assets/images/About-Us.png",
      ),
    );
    slides.add(
      Slide(
        title: " carefully and accurately",
        description:
            " Your choice of things must be carefully and accurately, especially the things that help you in your daily life So we suggest the right choices for you",
        pathImage: "assets/images/dart.png",
      ),
    );

    slides.add(
      Slide(
        title: "Take your Wishes",
        description: "We fulfill all your wishes and all your dreams",
        pathImage: "assets/images/Wishes.png",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(currentSlide.pathImage!),
                      fit: BoxFit.contain,
                      matchTextDirection: true,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Text(
                    currentSlide.title!,
                    style: AppTheme.introHeadline,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    currentSlide.description!,
                    style: AppTheme.introText,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: AppTheme.backgroundColor,
      renderSkipBtn: Text(
        "Skip",
        style: AppTheme.introHeadline.copyWith(fontSize: 18),
      ),
      renderNextBtn: Text(
        "Next",
        style: AppTheme.introHeadline.copyWith(fontSize: 18),
      ),
      renderDoneBtn: Text(
        "Done",
        style: AppTheme.introHeadline.copyWith(fontSize: 18),
      ),
      colorDot: AppTheme.primaryColor,
      sizeDot: 10,
      onSkipPress: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => const WelcomeScreen())),
      typeDotAnimation: DotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: renderListCustomTabs(),
      scrollPhysics: const BouncingScrollPhysics(),
      hideStatusBar: false,
      onDonePress: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => const WelcomeScreen())),
    );
  }
}
