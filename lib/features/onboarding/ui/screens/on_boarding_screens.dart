// lib/features/onboarding/ui/screens/onboarding_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/helpers/extensions/app_navigotion.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/core/theming/app_text_styles.dart';
import 'package:techquest/features/onboarding/data/models/onboarding_info.dart';
import 'package:techquest/features/onboarding/data/repo/onboarding_items.dart';
import 'package:techquest/features/onboarding/ui/widgets/next_page_button.dart';
import 'package:techquest/features/onboarding/ui/widgets/onboarding_content.dart';
import 'package:techquest/generated/l10n.dart';

import '../../logic/onboarding_helpers.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  void _updateIsLastPage(int currentPage, int totalPages) {
    setState(() {
      _isLastPage = currentPage == totalPages - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardingItems = OnboardingItems();
    final List<OnboardingInfo> items = onboardingItems.getItems(context);

    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (value) => _updateIsLastPage(value, items.length),
          itemCount: items.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  _buildSkipButton(items.length),
                  OnboardingContent(
                    item: items[index],
                    pageController: _pageController,
                  ),
                  SizedBox(height: 30.h),
                  _buildNextButton(context),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSkipButton(int totalItems) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () => skipToLastPage(
            _pageController, totalItems), // استخدام وظيفة المساعد
        child: Text(
          S.of(context).Skip,
          style: AppTextStyles.font20BlackRegular,
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return _isLastPage
        ? NextPageButton(
            titl: S.of(context).getStarted,
            onPressed: () => context.pushNamed(Routes.loginScreen),
          )
        : NextPageButton(
            titl: S.of(context).next,
            onPressed: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            ),
          );
  }
}
