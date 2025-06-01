import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_all_axpences_item.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllAxpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllAxpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
