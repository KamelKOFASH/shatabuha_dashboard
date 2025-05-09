import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/utils/app_colors.dart';
import 'package:shatabuha_dashboard/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.semiBold20.copyWith(color: AppColors.primaryColor),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0x0ff1f1f1), width: 1),
            ),
          ),
          child: Row(
            children: [
              const Text('Monthly', style: AppStyles.regular16),

              const SizedBox(width: 18.0),

              InkWell(
                onTap: () {
                  // Handle the tap event here
                },
                child: Transform.rotate(
                  angle:
                      -1.57079633, // Rotate the icon 90 degrees counter-clockwise
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
