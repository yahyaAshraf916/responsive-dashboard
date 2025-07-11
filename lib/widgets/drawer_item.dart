import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
