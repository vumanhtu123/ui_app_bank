import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback? function;
  final double? padding;
  final String? image;
  final String? title;
  final double? width;
  final double? height;
  final double? radius;

  const IconButtonWidget({
    super.key,
    this.function,
    this.padding,
    required this.image,
    this.title,
    this.width,
    this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          InkWell(
            onTap: function,
            child: Container(
              width: width?? 32,
              height: height ?? 32,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius ?? 30)),
                color: const Color(0xFFF3F3F3),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                  padding: EdgeInsets.all(padding ?? 14),
                  child: SvgPicture.asset(image!)
              ),
            ),
          ),
          const SizedBox(height: 12,),
          Text(title ?? "", style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF141416)
          ),)
        ],
      );

  }
}
