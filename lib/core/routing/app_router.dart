import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/features/home/ui/screens/home.dart';
import 'package:techquest/features/onboarding/ui/screens/on_boarding_screens.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/screen/change_phone_number.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/screen/edit_profile.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/screen/reset_password_screen.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/screen/second_change_phone_number.dart';
import 'package:techquest/features/profile/ui/screens/edit_profile/screen/second_reset_password_screen.dart';
import 'package:techquest/features/profile/ui/screens/security/screen/edit_security.dart';
import 'package:techquest/features/profile/ui/screens/setting/screen/edit_setting.dart';
import 'package:techquest/features/profile/ui/widgets/last_container.dart';
import 'package:techquest/features/login/ui/screens/login_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/sign_up/logic/cubit/sigin_up_cubit.dart';
import '../../features/sign_up/ui/screens/sign_up_screen.dart';
import '../di/dependecy_injection.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
         case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const Home());
      case Routes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfile());
      case Routes.editSetting:
        return MaterialPageRoute(builder: (_) => const EditSetting());
      case Routes.editSecurity:
        return MaterialPageRoute(builder: (_) => const EditSecurity());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.secondResetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const SecondResetPasswordScreen());
      case Routes.changePhoneNumber:
        return MaterialPageRoute(builder: (_) => const ChangePhoneNumber());
      case Routes.secondChangePhoneNumber:
        return MaterialPageRoute(builder: (_) => const SecondChangePhoneNumber());
      case Routes.lastcontainer:
        return MaterialPageRoute(builder: (_) => const LastContainer());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Unknown route")),
          ),
        );
    }
  }
}
