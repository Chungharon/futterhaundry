import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:laundryhub/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:laundryhub/utils/constants/colors.dart';
import 'package:laundryhub/utils/constants/sizes.dart';
import 'package:laundryhub/utils/device/device_utility.dart';
import 'package:laundryhub/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}



