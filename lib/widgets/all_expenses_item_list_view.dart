import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesWalletAccount,
      title: "Balance",
      date: "April 2022",
      price: r"$20.129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Balance",
      date: "April 2022",
      price: r"$20.129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesWalletAccount,
      title: "Balance",
      date: "April 2022",
      price: r"$20.129",
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      allExpensesItemModel: item,
                      isSelected: index == selectedIndex,
                    ),
                  ),
                ),
              );
            } else {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                    allExpensesItemModel: item,
                    isSelected: index == selectedIndex,
                  ),
                ),
              );
            }
          }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
