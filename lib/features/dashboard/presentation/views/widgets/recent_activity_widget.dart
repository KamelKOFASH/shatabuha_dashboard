import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/utils/app_colors.dart';
import 'package:shatabuha_dashboard/core/utils/app_styles.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_bg_container.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Recent Activity", style: AppStyles.semiBold18),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: AppStyles.semiBold16.copyWith(
                    color: AppColors.accentColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          /// Activity Items
          const ActivityItem(
            icon: Icon(Icons.check_circle, color: Colors.blue),
            title: "Confirm order update",
            badgeText: "URGENT",
            badgeColor: Colors.amber,
          ),
          const Divider(),
          const ActivityItem(
            icon: Icon(Icons.circle, color: Colors.red),
            title: "Finish shipping update",
            badgeText: "URGENT",
            badgeColor: Colors.amber,
          ),
          const Divider(),
          const ActivityItem(
            icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            title: "Create new order",
            badgeText: "NEW",
            badgeColor: Colors.green,
          ),
          const Divider(),
          const ActivityItem(
            icon: Icon(Icons.check_circle, color: Colors.blue),
            title: "Update payment report",
            badgeText: "DEFAULT",
            badgeColor: Color(0xFFE0E0E0),
            badgeTextColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final String badgeText;
  final Color badgeColor;
  final Color badgeTextColor;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.badgeText,
    required this.badgeColor,
    this.badgeTextColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 12),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 14))),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              badgeText,
              style: AppStyles.semiBold13.copyWith(color: badgeTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
