import 'package:flutter/material.dart';
import 'package:sun_pro/Screens/FlashScreen/flash_screen.dart';
import 'package:sun_pro/Screens/PersonalInformation/personal_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PersonalInformationScreen(),
    );
  }
}
