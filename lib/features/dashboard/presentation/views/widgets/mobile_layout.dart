import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_drawer.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CustomDrawer())
      ],
    );
  }
}