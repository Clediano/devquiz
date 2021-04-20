import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.data,
              height: 40,
              width: 40,
            ),
            SizedBox(height: 24),
            Text(
              "Gerenciamento de estado",
              style: AppTextStyles.heading15,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Text("3 de 10", style: AppTextStyles.body11),
                ),
                Expanded(
                  flex: 2,
                  child: LinearProgressIndicator(
                    backgroundColor: AppColors.chartSecondary,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.chartPrimary,
                    ),
                    value: .50,
                    minHeight: 4,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
