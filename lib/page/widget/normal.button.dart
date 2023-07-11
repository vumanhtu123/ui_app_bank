import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';

class NormalButtonWidget extends StatelessWidget {
  const NormalButtonWidget(
      {super.key,
      required this.tittle,
      this.width,
      this.color,
      this.fonWeight,
      this.fontSize,
      this.height,
      this.iconPadding,
      this.borderRadius,
      this.colorBg,
      this.onPress});

  final VoidCallback? onPress;
  final String tittle;
  final double? iconPadding;
  final double? width;
  final double? fontSize;
  final Color? color;
  final FontWeight? fonWeight;
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
        child: Center(
          child: Text(
            tittle,
            style: TextStyle(
                fontSize: fontSize, fontWeight: fonWeight, color: color),
          ),
        ),
      ),
    );
  }
}
