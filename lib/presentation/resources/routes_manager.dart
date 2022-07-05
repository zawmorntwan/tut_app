import 'package:flutter/material.dart';
import 'package:tut_app/presentation/forgot_password/forgot_password.dart';
import 'package:tut_app/presentation/login/login.dart';
import 'package:tut_app/presentation/main/main_view.dart';
import 'package:tut_app/presentation/onBoarding/onBoarding.dart';
import 'package:tut_app/presentation/register/register.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/strings_manager.dart';
import 'package:tut_app/presentation/resources/style_manager.dart';
import 'package:tut_app/presentation/splash/splash.dart';
import 'package:tut_app/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoardingRoute";
  static const String loginRoute = "/loginRoute";
  static const String registerRoute = "/registerRoute";
  static const String forgotPasswordRoute = "/forgotPasswordRoute";
  static const String mainRoute = "/mainRoute";
  static const String storeDetailsRoute = "/storeDetailsRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => const StoreDetailView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            AppStrings.noRouteFound,
            style: getBoldTextStyle(color: ColorManager.primary),
          ),
        ),
      ),
    );
  }
}
