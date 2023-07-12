import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';

class TransferSuccessComponent extends StatelessWidget {
  const TransferSuccessComponent(
      {super.key, this.image, this.width, this.height, this.name, this.phone});

  final String? image;
  final double? width;
  final double? height;
  final String? name;
  final String? phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image ?? '',
          width: width,
          height: height,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: MColor.black1),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              phone ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: MColor.gray3),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
