import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/all_orders_widget.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/inbox_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [AllOrdersWidget(), SizedBox(height: 32), InboxWidget()],
          ),
        ),
      ],
    );
  }
}
