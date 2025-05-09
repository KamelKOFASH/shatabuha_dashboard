import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/utils/app_images.dart';
import 'package:shatabuha_dashboard/features/dashboard/data/models/drawer_model.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerModel> drawerItems = const [
    DrawerModel(title: 'Dashboard', icon: Assets.imagesCategory2),
    DrawerModel(title: 'My Transaction', icon: Assets.imagesConvertCard),
    DrawerModel(title: 'Statistics', icon: Assets.imagesGraph),
    DrawerModel(title: 'Wallet Account', icon: Assets.imagesWallet2),
    DrawerModel(title: 'My Investments', icon: Assets.imagesChart2),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerModel: drawerItems[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
