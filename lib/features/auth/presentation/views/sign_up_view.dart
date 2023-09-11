import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/auth/presentation/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 38),
            Image.asset(
              Assets.imagesAuth1,
            ),
            const SizedBox(height: 71),
            const CustomTextField(
              hint: "Name",
              prefixIcon: Icon(Icons.text_fields),
            ),
            const SizedBox(height: 32),
            const CustomTextField(
              hint: "Phone Number",
              prefixIcon: Icon(Icons.phone),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 32),
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
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do You Have an account?',
                    style: CustomTextStyle.poppinsStyle16,
                  ),
                  Text(
                    'SignIn',
                    style: CustomTextStyle.poppinsStyle16
                        .copyWith(color: AppColors.primary),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
