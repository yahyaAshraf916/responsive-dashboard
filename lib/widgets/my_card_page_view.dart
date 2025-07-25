import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard()),
    );
  }
}
