import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/utils/app_images.dart';
import 'package:shatabuha_dashboard/features/dashboard/data/models/order_model.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_bg_container.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/total_Revenu_header.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/all_order_item.dart';

class AllOrdersWidget extends StatelessWidget {
  const AllOrdersWidget({super.key});
  static const List<OrderModel> orderItems = [
    OrderModel(
      title: 'Shipping Orders',
      amount: '09',
      image: Assets.imagesShippingOrders,
      gradient: LinearGradient(
        colors: [Color(0xFF4A90E2), Color(0xFF50E3C2)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    OrderModel(
      title: 'Pending Orders',
      amount: '05',
      image: Assets.imagesPendingOrders,
      gradient: LinearGradient(
        colors: [Color(0xFFED4264), Color(0xFFFF6B6B)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    OrderModel(
      title: 'New orders',
      amount: '12',
      image: Assets.imagesNewOrders,
      gradient: LinearGradient(
        colors: [Color(0xFF9F44D3), Color(0xFFBB6BD9)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      orderItems: orderItems,
      child: Column(
        children: [
          const TotalRevenueHeader(),
          const SizedBox(height: 16.0),
          Row(
            children:
                orderItems
                    .map(
                      (orderItem) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: AllOrderItem(orderItem: orderItem),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
