import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/features/add/ui/screens/add.dart';
import 'package:techquest/features/clips/home/ui/screens/clips.dart';
import 'package:techquest/features/profile/ui/screens/porfile/screen/profile_screen.dart';
import '../../../../generated/l10n.dart';
import '../../../home_screen/ui/screens/home_screen.dart';
import '../../../my_courses/ui/screens/my_courses.dart';
import '../../../wishlst/ui/screens/widhlst_screen.dart';
import '../../logic/nav_cubit.dart';

List<PersistentBottomNavBarItem> navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home_outlined),
      title: S.of(context).Home,
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: gray400,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/first": (context) => const ProfileScreen(),
          "/second": (context) => const WishList(),
          "therd": (context) => const Clips(),
          "forth": (context) => const Add(),
        },
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.menu_book_outlined),
      title: S.of(context).Courses,
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: gray400,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/first": (context) => const MyCourses(),
          "/second": (context) => const WishList(),
          "therd": (context) => const Clips(),
          "forth": (context) => const ProfileScreen(),
        },
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.play_circle_outline),
      title: S.of(context).Clips,
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: gray400,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/first": (context) => const MyCourses(),
          "/second": (context) => const WishList(),
          "therd": (context) => const Clips(),
          "forth": (context) => const ProfileScreen(),
        },
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.favorite_border),
      title: S.of(context).Wishlist,
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: gray400,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/first": (context) => const MyCourses(),
          "/second": (context) => const WishList(),
          "therd": (context) => const Clips(),
          "forth": (context) => const ProfileScreen(),
        },
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.person_2_outlined,
      ),
      title: S.of(context).Profile,
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: gray400,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
          "/first": (context) => const MyCourses(),
          "/second": (context) => const WishList(),
          "therd": (context) => const Clips(),
          "forth": (context) => const ProfileScreen(),
        },
      ),
    ),
  ];
}

class Home extends StatelessWidget {
  const Home({super.key});

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const MyCourses(),
      const Clips(),
      const WishList(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final PersistentTabController controller = PersistentTabController();

    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<BottomNavCubit, int>(
            builder: (context, state) {
              controller.index = state;

              return PersistentTabView(
                context,
                controller: controller,
                screens: _buildScreens(),
                items: navBarsItems(context),
                handleAndroidBackButtonPress: true,
                resizeToAvoidBottomInset: true,
                stateManagement: false,
                hideNavigationBarWhenKeyboardAppears: true,
                padding: const EdgeInsets.only(top: 8),
                backgroundColor: white,
                isVisible: true,
                onItemSelected: (index) {
                  context.read<BottomNavCubit>().updateTabIndex(index);
                },
                confineToSafeArea: true,
                navBarHeight: kBottomNavigationBarHeight,
                navBarStyle: NavBarStyle.style3,
                animationSettings: const NavBarAnimationSettings(
                  navBarItemAnimation: ItemAnimationSettings(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.ease,
                  ),
                  screenTransitionAnimation: ScreenTransitionAnimationSettings(
                    animateTabTransition: true,
                    duration: Duration(milliseconds: 200),
                    screenTransitionAnimationType:
                        ScreenTransitionAnimationType.fadeIn,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
