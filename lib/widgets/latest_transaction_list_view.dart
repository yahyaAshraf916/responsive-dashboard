import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  LatestTransactionListView({super.key});
  static const List<UserInfoModel> item = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Yahya Ashraf",
      subtitle: "yahyaashraf916@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Yahya Ashraf",
      subtitle: "yahyaashraf916@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Yahya Ashraf",
      subtitle: "yahyaashraf916@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Yahya Ashraf",
      subtitle: "yahyaashraf916@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => IntrinsicWidth(
              child: UserInfoListTile(userInfoModel: item[index]),
            ),
        itemCount: item.length,
      ),
    );
  }
}
