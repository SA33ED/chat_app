import 'package:chat_app/core/utils/app_assets.dart';

class OnBoardingModel {
  String image;
  String title;
  String subTitle;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: Assets.imagesOn1,
    title: "Welcome to BFCAI",
    subTitle: "Your new friend in your Success journey",
  ),
  OnBoardingModel(
    image: Assets.imagesOn2,
    title: "Gain new skills",
    subTitle:
        "Start gaining new skills with our professional courses and instractors",
  ),
  OnBoardingModel(
    image: Assets.imagesOn3,
    title: "Easy To Access",
    subTitle:
        "Learn easily with cocoon, you can access many courses just click enroll",
  ),
];
