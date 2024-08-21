import 'package:flutter/material.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/features/onboarding/ui/screens/on_boarding_screens.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile.dart';
import 'package:techquest/features/profile/ui/screens/edit_setting.dart';
import 'package:techquest/features/user_authentication/ui/screens/login_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
        case Routes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfile());
        case Routes.editSetting:
        return MaterialPageRoute(builder: (_) => const EditSetting());
         case Routes.editSecurity:
        return MaterialPageRoute(builder: (_) => const EditSetting());


      // Add more routes here
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Text("Unknown route"),
                ));
    }
  }
}
