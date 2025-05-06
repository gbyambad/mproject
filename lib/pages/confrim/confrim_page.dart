import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mproject/core/components/button/common_button.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/text/common_text.dart';
import 'package:mproject/pages/confrim/components/confirmation_code_input.dart';

class ConfrimPage extends HookWidget {
  const ConfrimPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonHeight = MediaQuery.of(context).size.height * 0.06;
    final buttonWidth = MediaQuery.of(context).size.width * 0.9;
    TextEditingController phoneController = TextEditingController();
    final pinFocusNode = useFocusNode();

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CommonText(
                'Please enter your phone number?',
                textAlign: TextAlign.center,
                fontSize: 24,
                lineHeight: 32,
                fontWeight: FontWeight.w600,
                color: CommonColor.black1,
              ),
              SizedBox(height: 16.0),
              ConfirmationCodeInput(
                controller: phoneController,
                onChanged: (pin) => {},
                focusNode: pinFocusNode,
              ),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: CommonButton(
              height: buttonHeight,
              width: buttonWidth,
              'Verify Your Number',
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
          ),
        ));
  }
}
