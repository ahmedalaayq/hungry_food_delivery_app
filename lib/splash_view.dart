import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_colors.dart';

import 'core/shared/custom_gap.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            CustomGap(280),
            SvgPicture.asset('assets/logo/Hungry_.svg'),
            Spacer(),
            Image.asset(fit: .fill, 'assets/splash/hamburger.png'),
          ],
        ),
      ),
    );
  }
}
