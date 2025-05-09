import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(child: CustomDrawer())]);
  }
}
