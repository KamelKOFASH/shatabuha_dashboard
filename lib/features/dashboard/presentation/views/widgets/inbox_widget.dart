import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/utils/app_colors.dart';
import 'package:shatabuha_dashboard/core/utils/app_styles.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_bg_container.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InboxWidgetHeader(),
          Text(
            'Group: Support',
            style: AppStyles.regular11.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Text(
            'No messages yet',
            style: AppStyles.semiBold18.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class InboxWidgetHeader extends StatelessWidget {
  const InboxWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Inbox', style: AppStyles.semiBold18),
        const Spacer(),
        Text(
          'View details',
          style: AppStyles.semiBold18.copyWith(color: AppColors.accentColor),
        ),
      ],
    );
  }
}
