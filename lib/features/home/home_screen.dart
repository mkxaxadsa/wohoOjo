import 'package:flutter/material.dart';
import 'package:ojo/app/global_navigator/global_navigator.dart';
import 'package:ojo/core/constants/app_icons.dart';
import 'package:ojo/core/constants/app_images.dart';
import 'package:ojo/core/extensions/expanded_ext_on_widget.dart';
import 'package:ojo/core/extensions/padding_extension_on_widget.dart';
import 'package:ojo/features/new_quiz/new_quiz_screen.dart';
import 'package:ojo/features/quizzes/quizzes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Image.asset(
              AppImages.header,
              width: double.maxFinite,
              height: 300,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: SafeArea(
                child: SizedBox(
                  width: double.maxFinite,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    children: [
                      Image.asset(
                        AppImages.logo2,
                        height: 32,
                      ).paddingOnly(bottom: 24),
                      GestureDetector(
                        onTap: () {
                          GlobalNavigator.push(context,
                              page: const QuizzesScreen());
                        },
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                          child: SizedBox(
                            width: double.maxFinite,
                            height: 250,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    AppImages.homeHeaderImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 15,
                                  child: Container(
                                    width: 74,
                                    height: 37,
                                    decoration: ShapeDecoration(
                                      color: Colors.black
                                          .withOpacity(0.699999988079071),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Quiz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).paddingOnly(bottom: 38),
                      ),
                      GestureDetector(
                        onTap: () {
                          GlobalNavigator.push(context,
                              page: const NewQuizScreen());
                        },
                        child: Container(
                          width: double.maxFinite,
                          height: 64,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1E233F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Create Quiz',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ).expanded(),
                              Image.asset(
                                AppIcons.addCircle,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
