import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_svg/svg.dart';

class AccountTopBar extends StatelessWidget {
  const AccountTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(width: 16),
        Image.asset(
          'assets/icons/ic_avatar.png',
          width: 48,
          height: 48,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              const SizedBox(height: 5),
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
        ),
        SvgPicture.asset(
          "assets/images/notification.svg",
        ),
        const SizedBox(width: 16),

        // Positioned(
        //   top: 55,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       SvgPicture.asset(
        //         "assets/images/avtp.svg",
        //       ),
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             "John Doe",
        //             style: TextStyle(
        //               fontWeight: FontWeight.w500,
        //               fontSize: 16,
        //               color: MColor.white,
        //             ),
        //           ),
        //           Text(
        //             "(+255) 555 0103",
        //             style: TextStyle(
        //               fontWeight: FontWeight.w400,
        //               fontSize: 14,
        //               color: MColor.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //       const SizedBox(
        //         width: 150,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}