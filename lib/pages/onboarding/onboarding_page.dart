import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/pages/welcome/welcome_page.dart';
import 'package:mproject/pages/onboarding/components/onboarding_step.dart';
import 'package:mproject/gen/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'; // Ensure this is the correct path to your generated assets file

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final shouldPreventTapEvent = useState(false);
    final pageController = usePageController(initialPage: pageIndex.value);

    const buttonLeftRightOffset = 32.0;

    void onButtonTap() {
      if (pageIndex.value == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomePage(),
          ),
        );
      } else {
        pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      }
    }

    return Scaffold(
      backgroundColor: CommonColor.white2,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            AbsorbPointer(
              absorbing: shouldPreventTapEvent.value,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  pageIndex.value = index;
                },
                children: [
                  OnboardingStep(
                    buttonLeftRightOffset,
                    Assets.images.onboarding.onboarding1.path,
                    'Next',
                    onButtonTap,
                  ),
                  OnboardingStep(
                    buttonLeftRightOffset,
                    Assets.images.onboarding.onboarding2.path,
                    'Next',
                    onButtonTap,
                  ),
                  OnboardingStep(
                    buttonLeftRightOffset,
                    Assets.images.onboarding.onboarding3.path,
                    'Next',
                    onButtonTap,
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
