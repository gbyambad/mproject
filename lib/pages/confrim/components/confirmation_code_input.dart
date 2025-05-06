import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/constants/font_family_names.dart';
import 'package:pinput/pinput.dart';

final defaultPinTheme = PinTheme(
  width: 50,
  height: 56,
  textStyle: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: CommonColor.black2,
    fontFamily: FontFamilyName.helveticaNeue,
  ),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: CommonColor.grey1),
    borderRadius: BorderRadius.circular(8),
  ),
);

final focusedPinTheme = defaultPinTheme.copyWith(
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: CommonColor.purple2),
    borderRadius: BorderRadius.circular(8),
  ),
);

class ConfirmationCodeInput extends StatelessWidget {
  const ConfirmationCodeInput({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 8,
      showCursor: false,
      controller: controller,
      focusNode: focusNode,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: onChanged,
    );
  }
}
