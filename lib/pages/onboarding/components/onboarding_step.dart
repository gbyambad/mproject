import 'package:flutter/material.dart';
import 'package:mproject/core/components/button/common_button.dart';

class OnboardingStep extends StatelessWidget {
  const OnboardingStep(this.buttonLeftRightOffset, this.imagePath,
      this.buttonText, this.onPressed,
      {super.key});
  final double buttonLeftRightOffset;
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
        Positioned(
          left: buttonLeftRightOffset,
          right: buttonLeftRightOffset,
          bottom: 32,
          child: CommonButton(
            buttonText,
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
