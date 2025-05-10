import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shatabuha_dashboard/core/utils/app_styles.dart';
import 'package:shatabuha_dashboard/features/dashboard/data/models/order_model.dart';

class AllOrderItem extends StatelessWidget {
  const AllOrderItem({super.key, required this.orderItem});
  final OrderModel orderItem;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        decoration: BoxDecoration(
          gradient: orderItem.gradient,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset(orderItem.image, width: 80),
            ),

            // Title (top left)
            Positioned(
              top: 20,
              left: 20,
              child: Text(
                orderItem.title,
                style: AppStyles.semiBold18.copyWith(color: Colors.white),
              ),
            ),

            // Amount (bottom right)
            Positioned(
              bottom: 0,
              right: 20,
              child: Text(
                orderItem.amount,
                textAlign: TextAlign.right,
                style: AppStyles.semiBold60.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
