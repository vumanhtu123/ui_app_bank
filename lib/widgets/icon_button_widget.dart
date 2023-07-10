import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/MColor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.assetImage,
    this.width,
    this.height,
    this.iconPadding,
    this.borderRadius,
    this.colorBg,
    this.onPress,
  });
  final VoidCallback? onPress;
  final String assetImage;
  final double? iconPadding;
  final double? width;
  final double? height;
  final double? borderRadius;
  final MColor? colorBg;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPress,
      child: Container(
        width: width ?? 60,
        height: height ?? 60,
        padding: EdgeInsets.all(iconPadding ?? 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
          color: colorBg ?? MColor.gray1,
        ),
        child: SvgPicture.asset(assetImage),
      ),
    );
  }
}
