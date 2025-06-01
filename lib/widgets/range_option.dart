import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text("Monthly", style: AppStyles.styleMedium16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: 1.57079633,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
