import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techquest/core/routing/route.dart';
import 'package:techquest/features/onboarding/ui/screens/on_boarding_screens.dart';
import 'package:techquest/features/user_authentication/ui/screens/login_screen.dart';

import '../../features/home_screen/ui/screens/home_screen.dart';
import '../../features/user_authentication/logic/cubit/login_cubit.dart';
import '../di/dependecy_injection.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Text("Unknown route"),
                ));
    }
  }
}
