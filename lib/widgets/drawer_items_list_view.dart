import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> item = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: "My Transactions",
    ),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investiments",
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: item.length,
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  activeIndex = index;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: item[index],
                isActive: activeIndex == index,
              ),
            ),
          ),
    );
  }
}
