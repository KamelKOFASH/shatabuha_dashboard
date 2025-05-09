import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shatabuha_dashboard/core/models/user_model.dart';
import 'package:shatabuha_dashboard/core/utils/app_images.dart';
import 'package:shatabuha_dashboard/core/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userModel.imageUrl ?? Assets.imagesAvatar),
        title: Text(
          userModel.name ?? 'User Name',
          style: TextStyles.semiBold16,
        ),
        subtitle: Text(
          userModel.email ?? 'User Email',
          style: TextStyles.regular13.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
