import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_pin.dart';

class BottomSheetOptCode {
  final BuildContext context;

  BottomSheetOptCode(this.context);

  void modalBottomSheetPin() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).size.height - 273,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: const ItemBottomSheetOtpCode(),
        );
      },
    );
  }
}

class ItemBottomSheetOtpCode extends StatefulWidget {
  const ItemBottomSheetOtpCode({super.key});

  @override
  State<ItemBottomSheetOtpCode> createState() => _ItemBottomSheetOtpCodeState();
}

class _ItemBottomSheetOtpCodeState extends State<ItemBottomSheetOtpCode> {
  int _seconds = 30;
  Timer? _timer;

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Enter OTP code',
                style: TextStyle(
                    color: Color(0xFF141416),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF3F3F3)),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close)),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          RichText(
            text: const TextSpan(
              text: 'OTP code has sent to ',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727273)),
              children: <TextSpan>[
                TextSpan(
                    text: '(+255) 555-0134.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF141416))),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OtpInput(
                // controller: _fieldOne,
                autoFocus: true,
                onChangeData: () {},
              ), // auto focus
              OtpInput(
                // controller: _fieldTwo,
                autoFocus: false,
                onChangeData: () {},
              ),
              OtpInput(
                // controller: _fieldThree,
                autoFocus: false,
                onChangeData: () {},
              ),
              OtpInput(
                // controller: _fieldFour,
                autoFocus: false,
                onChangeData: () {},
              )
            ],
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              text: 'Didn’t you receive OTP code? ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727273),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: _seconds > 0 ? 'Resend code in ' : '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF727273),
                  ),
                ),
                TextSpan(
                  text: _seconds > 0
                      ? '00:${_seconds.toString().padLeft(2, '0')}'
                      : 'Resend',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF1FB53A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }
}
