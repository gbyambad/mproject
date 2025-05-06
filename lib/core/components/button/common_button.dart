import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/text/common_text.dart';

enum ButtonType { primary, secondary }

class CommonButton extends HookWidget {
  const CommonButton(
    this.buttonText, {
    required this.onPressed,
    this.width,
    this.type = ButtonType.primary,
    this.isActive = true,
    this.height = 48,
    this.fontSize = 16,
    this.borderSide,
    this.borderRadius,
  });

  final String buttonText;
  final double? width;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool isActive;
  final double height;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          side: borderSide,
          backgroundColor: _getButtonColor(),
          disabledBackgroundColor: _getButtonColor().withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(25),
          ),
        ).copyWith(
          elevation: WidgetStateProperty.all(0),
        ),
        onPressed: isActive ? onPressed : null,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: CommonText(
            buttonText,
            fontSize: 16,
            color: type == ButtonType.primary
                ? CommonColor.white1
                : CommonColor.black2,
            fontWeight:
                type == ButtonType.primary ? FontWeight.w600 : FontWeight.w300,
            lineHeight: 27,
          ),
        ),
      ),
    );
  }

  Color _getButtonColor() {
    switch (type) {
      case ButtonType.primary:
        return CommonColor.blue;
      case ButtonType.secondary:
        return CommonColor.white1;
    }
  }
}
