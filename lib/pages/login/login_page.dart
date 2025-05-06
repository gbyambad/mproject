import 'package:flutter/material.dart';
import 'package:mproject/core/components/button/common_button.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/text/common_text.dart';
import 'package:mproject/gen/assets.gen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Хэрэглэгч буцах товчыг дарахад хийж гүйцэтгэх үйлдэл
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.welcome.welcome.path,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30.0),
                  CommonText(
                    'Create your\n Coinpay account',
                    textAlign: TextAlign.center,
                    fontSize: 24,
                    lineHeight: 32,
                    fontWeight: FontWeight.w600,
                    color: CommonColor.black1,
                  ),
                  SizedBox(height: 10.0),
                  CommonText(
                    'Coinpay is a powerful tool that allows you to easily send, receive, and track all your transactions.',
                    textAlign: TextAlign.center,
                    fontSize: 14,
                    lineHeight: 24,
                    fontWeight: FontWeight.w300,
                    color: CommonColor.grey2,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CommonButton(
                  'Sign Up',
                  onPressed: () {
                    // Sign Up товчлуур дарахад хийж гүйцэтгэх үйлдэл
                  },
                  type: ButtonType.secondary,
                  borderSide: const BorderSide(
                    color: CommonColor.black2,
                  ),
                ),
                SizedBox(height: 16.0),
                CommonButton(
                  'Login',
                  onPressed: () {
                    // Sign Up товчлуур дарахад хийж гүйцэтгэх үйлдэл
                  },
                  type: ButtonType.secondary,
                  borderSide: const BorderSide(
                    color: CommonColor.black2,
                  ),
                ),
                SizedBox(height: 16.0),
                CommonText(
                  'By continuing you accept our Terms of Service and Privacy Policy',
                  textAlign: TextAlign.center,
                  fontSize: 14,
                  lineHeight: 24,
                  fontWeight: FontWeight.w300,
                  color: CommonColor.grey2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
