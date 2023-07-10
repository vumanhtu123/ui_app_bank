import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarDiscovery extends StatelessWidget {
  const AppBarDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Image.asset(
          "assets/images/img_header@2x.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Positioned(
          top: 55,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                "assets/images/avtp.svg",
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: MColor.white,
                    ),
                  ),
                  Text(
                    "(+255) 555 0103",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: MColor.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 150,
              ),
              SvgPicture.asset(
                "assets/images/notification.svg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
