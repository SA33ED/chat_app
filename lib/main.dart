import 'package:chat_app/core/cache/cache_helper.dart';
import 'package:chat_app/core/services/service_locator.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/features/auth/presentation/views/forget_password.dart';
import 'package:chat_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:chat_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:chat_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt<AppCache>().init();
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "SplashView": (context) => const SplashView(),
        "OnBoardingView": (context) => const OnBoardingView(),
        "SignIn": (context) => const SignInView(),
        "SignUp": (context) => const SignUpView(),
        "ForgetPassword": (context) => const ForgetPassword(),
      },
      initialRoute: "SplashView",
    );
  }
}
