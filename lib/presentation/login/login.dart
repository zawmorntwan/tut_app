import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/font_manager.dart';
import 'package:tut_app/presentation/resources/style_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome from LOGIN VIEW',
          style: getLightTextStyle(
            color: ColorManager.darkPrimary,
            fontSize: FontSize.s20,
          ),
        ),
      ),
    );
  }
}
