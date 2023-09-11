import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/on_boarding/presentation/widgets/customs_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Skip", style: CustomTextStyle.poppinsStyle16)],
              ),
              Expanded(
                  child: CustomPageView(
                      currentIndex: currentIndex, controller: _controller)),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
