import 'package:flutter/material.dart';
import 'package:sun_pro/Services/assets_manager.dart';
import 'package:sun_pro/Utilities/appColors.dart';
import 'package:sun_pro/Utilities/constants.dart';
import 'package:sun_pro/Widgets/custom_appBar.dart';
import 'package:sun_pro/Widgets/custom_button.dart';

class HowToPlayScreen extends StatefulWidget {
  const HowToPlayScreen({super.key});

  @override
  State<HowToPlayScreen> createState() => _HowToPlayScreenState();
}

class _HowToPlayScreenState extends State<HowToPlayScreen> {
  late PageController _pageController;
  int pageViewIndex = 0;
  bool isPressed = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pageViewIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.mainColor,
                AppColors.mainColor2,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topCenter,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 30),
                Container(
                  height: 420,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        pageViewIndex = value;
                      });
                    },
                    controller: _pageController,
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Placeholder(
                              fallbackHeight: 300,
                              color: Colors.red,
                            ),
                            SizedBox(height: 10),
                            Text(
                              titleName[index],
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: subTitleNames[index],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                // SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == pageViewIndex ? Colors.white : Colors.white30,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                pageViewIndex == 3
                    ? SizedBox()
                    : GestureDetector(
                        onTap: () {
                          if (pageViewIndex < 4 - 1) {
                            _pageController.animateToPage(pageViewIndex + 1,
                                duration: Duration(milliseconds: 300), curve: Curves.ease);
                          }
                        },
                        child: CustomButton(
                          languageName: 'Next',
                          gradient: null,
                        ),
                      ),
                SizedBox(height: 10),
                CustomButton(
                  languageName: 'Get Started',
                  buttonColor: AppColors.dartBlueColor,
                  gradient: null,
                ),
                SizedBox(height: 30),

                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      print('this is tapping');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                          ),
                          child: isPressed
                              ? Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                  ),
                                )
                              : null,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Skip this screen next time',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
