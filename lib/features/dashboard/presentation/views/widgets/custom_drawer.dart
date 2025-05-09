import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/models/user_model.dart';
import 'package:shatabuha_dashboard/core/utils/app_images.dart';
import 'package:shatabuha_dashboard/features/dashboard/data/models/drawer_model.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/drawer_item.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/drawer_items_listview.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserModel(
                name: 'John Doe',
                email: 'kKm6D@example.com',
                phone: '1234567890',
                imageUrl: Assets.imagesAvatar,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20.0)),
                InActiveItem(
                  drawerModel: DrawerModel(
                    title: 'Setting system',
                    icon: Assets.imagesSetting2,
                  ),
                ),
                InActiveItem(
                  drawerModel: DrawerModel(
                    title: 'Logout account',
                    icon: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
