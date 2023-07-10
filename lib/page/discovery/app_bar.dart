import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarDiscovery extends StatelessWidget {
  const AppBarDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(

          height: 154.5, // Background
          child: SvgPicture.asset(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            "assets/images/back_ground_appbar.svg",
          ),
        ),
        Positioned(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF1FB53A), Color(0xFF00A3DE)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7.0),
                )),
            height: 144, // Background
            child: SvgPicture.asset(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              "assets/images/group.svg",
            ),
          ),
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Text(
                    "(+255) 555 0103",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF)),
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
