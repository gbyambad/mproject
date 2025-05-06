import 'package:flutter/material.dart';
import 'package:mproject/core/components/button/common_button.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/text/common_text.dart';
import 'package:mproject/gen/assets.gen.dart';
import 'package:mproject/pages/confrim/confrim_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonHeight = MediaQuery.of(context).size.height * 0.06;
    final buttonWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.welcome.welcome.path,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30.0),
                  const CommonText(
                    'Create your\n Coinpay account',
                    textAlign: TextAlign.center,
                    fontSize: 24,
                    lineHeight: 32,
                    fontWeight: FontWeight.w600,
                    color: CommonColor.black1,
                  ),
                  const SizedBox(height: 10.0),
                  const CommonText(
                    'Coinpay is a powerful tool that allows you to easily send, receive, and track all your transactions.',
                    textAlign: TextAlign.center,
                    fontSize: 14,
                    lineHeight: 24,
                    fontWeight: FontWeight.w300,
                    color: CommonColor.grey2,
                  ),
                  const SizedBox(height: 20.0),
                  CommonButton(
                    height: buttonHeight,
                    width: buttonWidth,
                    'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfrimPage(),
                        ),
                      );
                    },
                    type: ButtonType.primary,
                    borderSide: const BorderSide(
                      color: CommonColor.white1,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  CommonButton(
                    height: buttonHeight,
                    width: buttonWidth,
                    'Login',
                    onPressed: () {
                      // Sign Up товчлуур дарахад хийж гүйцэтгэх үйлдэл
                    },
                    type: ButtonType.secondary,
                    borderSide: const BorderSide(
                      color: CommonColor.blue,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const CommonText(
                    'By continuing you accept our\n Terms of Service and Privacy Policy',
                    textAlign: TextAlign.center,
                    fontSize: 14,
                    lineHeight: 24,
                    fontWeight: FontWeight.w300,
                    color: CommonColor.grey2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
