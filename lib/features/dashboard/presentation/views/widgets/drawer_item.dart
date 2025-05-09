import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shatabuha_dashboard/core/utils/app_colors.dart';
import 'package:shatabuha_dashboard/core/utils/text_styles.dart';
import 'package:shatabuha_dashboard/features/dashboard/data/models/drawer_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerModel,
    required this.isSelected,
  });
  final DrawerModel drawerModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(drawerModel: drawerModel)
        : InActiveItem(drawerModel: drawerModel);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.drawerModel});

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.icon),
      title: Text(drawerModel.title, style: TextStyles.regular16),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.drawerModel});

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.icon),
      title: Text(drawerModel.title, style: TextStyles.bold16),
      trailing: Container(
        width: 4,
        decoration: const BoxDecoration(color: AppColors.primaryColor),
      ),
    );
  }
}
