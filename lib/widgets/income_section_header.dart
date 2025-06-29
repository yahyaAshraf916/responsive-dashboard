import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text("Monthly", style: AppStyles.styleMedium16(context)),
              SizedBox(width: 16),
              Transform.rotate(
                angle: -1.57079,
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
