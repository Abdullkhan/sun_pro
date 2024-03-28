import 'package:flutter/material.dart';
import 'package:sun_pro/Screens/FlashScreen/account_info.dart';
import 'package:sun_pro/Services/assets_manager.dart';
import 'package:sun_pro/Utilities/appColors.dart';
import 'package:sun_pro/Widgets/custom_button.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                AssetsManager.sunProImage,

                //height: 120,
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountInfoScreen()));
                    },
                    child: CustomButton(languageName: 'English'),
                  ),
                  SizedBox(height: 10),
                  CustomButton(languageName: 'عربي'),
                  SizedBox(height: 10),
                  CustomButton(languageName: 'Others'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
