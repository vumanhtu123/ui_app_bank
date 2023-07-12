import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/common/mtext_styles.dart';
import 'package:flutter_superapp_tanzania/page/home/home_page.dart';
import 'package:flutter_superapp_tanzania/page/widget/icon_button.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridComponent extends StatelessWidget {
  const GridComponent({super.key, required this.homeGridList});

  final List<HomeGridModel> homeGridList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0,
        crossAxisSpacing: 10,
      ),
      padding: const EdgeInsets.all(16),
      itemCount: homeGridList.length,
      itemBuilder: (context, index) {
        final model = homeGridList[index];
        return IconButtonWidget(
          width: 60,
          height: 60,
          image: model.svgAsset,
          title: model.title ?? '',
        );
      },
    );
  }
}
