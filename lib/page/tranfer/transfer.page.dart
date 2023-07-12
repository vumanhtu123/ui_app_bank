import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/appbar.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/page/tranfer/transfer.component.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_confirm.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_pin.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  CustomAppbar(),
                  TransferComponent(),
                  SizedBox(height: 16),
                  BodyTransfer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: NormalButtonWidget(
              onPress: () {
                setState(() {
                  BottomSheetConfirm(context, () {
                    BottomSheetPin().modalBottomSheetPin(context, 29.1);
                  }).modalBottomSheetMenu();
                });
              },
              width: 343,
              borderRadius: 6,
              height: 54,
              colorBg: MColor.green1,
              title: 'Continue',
              fontSize: 14,
              fonWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
