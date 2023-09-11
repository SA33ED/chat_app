import 'package:chat_app/core/cache/cache_helper.dart';
import 'package:chat_app/core/services/service_locator.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isVisited =
        getIt<AppCache>().getData(key: "sharedPreOnBoarding") ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => isVisited == true
                  ? const SignInView()
                  : const OnBoardingView()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          "Chat App",
          style: CustomTextStyle.odorMeanCheyStyle64,
        ),
      ),
    );
  }
}
