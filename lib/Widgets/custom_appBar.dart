import 'package:flutter/material.dart';
import 'package:sun_pro/Services/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white12,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'How to play',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Image.asset(
                AssetsManager.sunProImage,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
