import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionItemListView extends StatelessWidget {
  TransactionItemListView({super.key});
  final List<TransactionModel> items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    ListView.builder(
      shrinkWrap: true,
      itemBuilder:
          (context, index) => TransactionItem(transactionModel: items[index]),
      itemCount: items.length,
    );
  }
}
