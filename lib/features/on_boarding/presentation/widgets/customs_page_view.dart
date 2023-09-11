// ignore_for_file: must_be_immutable

import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:chat_app/features/on_boarding/presentation/widgets/build_on_boarding_dots.dart';
import 'package:chat_app/features/on_boarding/presentation/widgets/get_on_boarding_btns.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  CustomPageView(
      {super.key, required this.currentIndex, required this.controller});
  int currentIndex;

  final PageController? controller;
  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                widget.currentIndex = index;
              });
            },
            controller: widget.controller,
            itemCount: onBoardingList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(height: 63),
                  Image.asset(
                    onBoardingList[index].image,
                    width: 300,
                  ),
                  const SizedBox(height: 48),
                  Text(
                    onBoardingList[index].title,
                    style: CustomTextStyle.poppinsStyle24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    onBoardingList[index].subTitle,
                    style: CustomTextStyle.poppinsStyle17,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 69),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingList.length,
                      (index) => buildDots(index, widget.currentIndex),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        getOnBoardingBtns(context, widget.currentIndex),
      ],
    );
  }
}
