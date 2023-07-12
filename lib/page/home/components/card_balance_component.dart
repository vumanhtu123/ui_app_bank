import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/common/mtext_styles.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';

class CardBalanceComponent extends StatelessWidget {
  const CardBalanceComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff101828).withOpacity(0.3),
            spreadRadius: -2,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: const Color(0xff101828).withOpacity(0.8),
            spreadRadius: -4,
            blurRadius: 16,
            offset: const Offset(0, 12),
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: MTextStyle.grayNormal,
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '895.500,000',
                style: MTextStyle.grayH1,
              ),
              const SizedBox(width: 5),
              Text(
                'TZS',
                style: TextStyle(
                  fontSize: 12,
                  color: MColor.gray3,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: NormalButtonWidget(
                  height: 48,
                  borderRadius: 8,
                  color: MColor.white,
                  colorBg: MColor.green1,
                  title: 'Send Money',
                  fontSize: 14,
                  svgAsset: 'assets/icons/ic_service.svg',
                  fonWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: NormalButtonWidget(
                  height: 48,
                  borderRadius: 8,
                  color: MColor.white,
                  colorBg: MColor.green1,
                  title: 'Withdraw',
                  fontSize: 14,
                  svgAsset: 'assets/icons/ic_withdraw.svg',
                  fonWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
