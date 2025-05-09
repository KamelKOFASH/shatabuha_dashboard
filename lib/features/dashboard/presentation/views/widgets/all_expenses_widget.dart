import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/all_expenses_header.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Column(children: [AllExpensesHeader()]),
    );
  }
}
