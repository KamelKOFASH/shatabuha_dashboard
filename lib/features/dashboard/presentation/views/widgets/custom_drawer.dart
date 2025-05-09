import 'package:flutter/material.dart';
import 'package:shatabuha_dashboard/core/models/user_model.dart';
import 'package:shatabuha_dashboard/core/utils/app_images.dart';
import 'package:shatabuha_dashboard/features/dashboard/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userModel: UserModel(
              name: 'John Doe',
              email: 'kKm6D@example.com',
              phone: '1234567890',
              imageUrl: Assets.imagesAvatar,
            ),
          ),
        ],
      ),
    );
  }
}
