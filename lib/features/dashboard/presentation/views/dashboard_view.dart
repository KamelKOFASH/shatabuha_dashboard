import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/widgets/adaptive_layout_widget.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/desktop_layout.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/mobile_layout.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeff2),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
