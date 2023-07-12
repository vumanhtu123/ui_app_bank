import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:lottie/lottie.dart';

Future<void> loadingDialog(BuildContext context) {
  return showDialog(
      barrierColor: MColor.gray5,
      context: context,
      builder: (BuildContext context) {
        final double dialogWidth = MediaQuery.of(context).size.width * 0.45;
        return Center(
          child: Container(
            width: 145,
            height: 110,
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Column(
              children: [
                SizedBox(height: 20),
                Lottie.asset('assets/loadingcircle.json',
                    width: 40, height: 40),
                SizedBox(height: 16),
                Text(
                  'Verifying...',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MColor.black1,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
        );
      });
}

Future<void> closeLoading(BuildContext context) async {
  Navigator.of(context).pop();
}
