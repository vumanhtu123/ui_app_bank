import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/common/mtext_styles.dart';
import 'package:flutter_superapp_tanzania/page/home/home_page.dart';
import 'package:flutter_superapp_tanzania/page/widget/icon_button.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromotionsComponent extends StatelessWidget {
  const PromotionsComponent({super.key, required this.promotionList});

  final List<PromotionModel> promotionList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MColor.white,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Promotions',
                  style: MTextStyle.grayH1,
                ),
              ),
              Text(
                'View All',
                style: MTextStyle.greenH5,
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.75
            ),
            padding: const EdgeInsets.all(8),
            itemCount: promotionList.length,
            itemBuilder: (context, index) {
              final model = promotionList[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      model.svgAsset,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    model.title,
                    style: MTextStyle.grayNormal,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    model.date,
                    style: MTextStyle.gray600Normal,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
