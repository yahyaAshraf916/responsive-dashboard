import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imgBackgroundColor,
    this.imgColor,
  });
  final String image;
  final Color? imgBackgroundColor, imgColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: imgBackgroundColor ?? Color(0xFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imgColor ?? Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),

        Spacer(),
        Transform.rotate(
          angle: 1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imgColor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
