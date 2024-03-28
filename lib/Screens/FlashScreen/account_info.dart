import 'package:flutter/material.dart';
import 'package:sun_pro/Screens/HowToPlay/howToPlay_screen.dart';
import 'package:sun_pro/Services/assets_manager.dart';
import 'package:sun_pro/Utilities/appColors.dart';
import 'package:sun_pro/Widgets/custom_button.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({super.key});

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  @override
  Widget build(BuildContext context) {
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
              ),
              // SizedBox(height: 100),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowToPlayScreen()));
                    },
                    child: CustomButton(languageName: 'I already have an account'),
                  ),
                  SizedBox(height: 20),
                  CustomButton(languageName: 'I dont\'t have an account'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
