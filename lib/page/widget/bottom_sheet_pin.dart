import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_otp_code.dart';

class BottomSheetPin {
  final BuildContext context;

  BottomSheetPin(this.context);

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
          child: const ItemBottomSheetPin(),
        );
      },
    );
  }
}

class ItemBottomSheetPin extends StatefulWidget {
  const ItemBottomSheetPin({super.key});

  @override
  State<ItemBottomSheetPin> createState() => _ItemBottomSheetPinState();
}

class _ItemBottomSheetPinState extends State<ItemBottomSheetPin> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();



  @override
  Widget build(BuildContext context) {
    BottomSheetOptCode bottomSheetOptCode =BottomSheetOptCode(context);
    void checkPinEntered() {
      if (_fieldOne.text.isNotEmpty &&
          _fieldTwo.text.isNotEmpty &&
          _fieldThree.text.isNotEmpty &&
          _fieldFour.text.isNotEmpty) {

        bottomSheetOptCode.modalBottomSheetPin();
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Enter your PIN",
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
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OtpInput(
                  controller: _fieldOne,
                  autoFocus: true,
                  onChangeData: () => checkPinEntered()), // auto focus
              OtpInput(
                  controller: _fieldTwo,
                  autoFocus: false,
                  onChangeData: () => checkPinEntered()),
              OtpInput(
                  controller: _fieldThree,
                  autoFocus: false,
                  onChangeData: () => checkPinEntered()),
              OtpInput(
                  controller: _fieldFour,
                  autoFocus: false,
                  onChangeData: () => checkPinEntered())
            ],
          ),
        ],
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController? controller;
  final bool? autoFocus;
  final VoidCallback? onChangeData;

  const OtpInput(
      {super.key, this.controller, this.autoFocus, this.onChangeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(4)),
      height: 56,
      width: 56,
      child: TextField(
        autofocus: autoFocus ?? false,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: const Color(0xFF1FB53A),
        decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF1FB53A))),
            // border: OutlineInputBorder(),
            focusColor: Color(0xFF1FB53A),
            hintText: '-',
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          onChangeData!();
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },

      ),
    );
  }
}
