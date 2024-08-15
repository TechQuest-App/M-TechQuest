import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/routing/app_router.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/core/widgets/animated_splash_screen_custom.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class TechQuestApp extends StatelessWidget {
  final AppRouter appRouter;
  const TechQuestApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(primaryColor: primaryColor),
          onGenerateRoute: appRouter.generateRoute,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'TechQuest',
          home: const AnimatedSplashScreenCustom(), // Use home instead of initialRoute
        );
      },
    );
  }
}

