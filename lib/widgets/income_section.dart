import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_section_body.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';
import 'package:responsive_dashboard/widgets/item_details_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [IncomeSectionHeader(), IncomeSectionBody()]),
    );
  }
}
