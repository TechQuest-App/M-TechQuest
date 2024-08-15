import 'package:techquest/features/onboarding/data/models/onboarding_info.dart';
import 'package:techquest/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnboardingItems {
  List<OnboardingInfo> getItems(BuildContext context) {
    return [
      OnboardingInfo(
          title: S.of(context).titleOnboarding_1,
          description: S.of(context).descriptionOnboarding_1,
          image: "assets/svgs/Onboarding_1.svg"),
      OnboardingInfo(
          title: S.of(context).titleOnboarding_2,
          description: S.of(context).descriptionOnboarding_2,
          image: "assets/svgs/Onboarding_2.svg"),
      OnboardingInfo(
          title: S.of(context).titleOnboarding_3,
          description: S.of(context).descriptionOnboarding_3,
          image: "assets/svgs/Onboarding_3.svg"),
    ];
  }
}
