import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 48),
            Image.asset(
              Assets.imagesAuth1,
            ),
            const SizedBox(height: 71),
            const CustomTextField(
              hint: "Email",
              prefixIcon: Icon(Icons.email_outlined),
            ),
            const SizedBox(height: 32),
            const CustomTextField(
              hint: "Password",
              prefixIcon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "ForgetPassword");
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: CustomTextStyle.poppinsStyle16
                      .copyWith(color: AppColors.gray),
                ),
              ),
            ),
            const SizedBox(height: 47),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: ShapeDecoration(
                color: const Color(0xFF6D67E4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: CustomTextStyle.poppinsStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "SignUp");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: CustomTextStyle.poppinsStyle16,
                  ),
                  Text(
                    'SignUp',
                    style: CustomTextStyle.poppinsStyle16
                        .copyWith(color: AppColors.primary),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
