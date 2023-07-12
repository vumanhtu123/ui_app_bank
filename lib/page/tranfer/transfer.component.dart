import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/dropdown.field.dart';
import 'package:flutter_superapp_tanzania/generated/assets.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_confirm.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletons/skeletons.dart';

class TransferComponent extends StatefulWidget {
  const TransferComponent({super.key});

  @override
  State<TransferComponent> createState() => _TransferComponentState();
}

class _TransferComponentState extends State<TransferComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 46,
      decoration: BoxDecoration(
          color: const Color(0xFFE3FFE9),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          const SizedBox(width: 16),
          // SvgPicture.asset(Assets.assetsLogo),
          Image.asset(
            Assets.assetsLogo1,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 8),
          const Text(
            'Balance',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5B5B5C)),
          ),
          const SizedBox(width: 123),
          Text(
            '895.500,000',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.grey[900]),
          ),
          const SizedBox(width: 4),
          const Text(
            'TZS',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class BodyTransfer extends StatefulWidget {
  const BodyTransfer({super.key});

  @override
  State<BodyTransfer> createState() => _BodyTransferState();
}

class _BodyTransferState extends State<BodyTransfer> {
  bool _isLoading = true; // Biến trạng thái để kiểm soát hiển thị tiện ích chờ
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    amountController = TextEditingController();
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
        _isLoading =
            false; // Khi hoàn thành tải hoặc xử lý, ẩn skeleton placeholder
      });
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BottomSheetConfirm bottomSheetConfirm = BottomSheetConfirm(context);
    bool? isChecked = true;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'To',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Text(
                    'Saved List',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1FB53A)),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/bookmark.svg')
                ],
              )
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            'Phone number or name',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF727273)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DropdownField(),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    color: const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: SvgPicture.asset(
                    'assets/contact.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Skeleton(
            isLoading: _isLoading,
            skeleton: const SkeletonLine(),
            child: SizedBox(
              height: 15,
              width: 105,
              child: Text(
                'Recipient name',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey[600]),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Skeleton(
            isLoading: _isLoading,
            skeleton: SkeletonItem(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFFF3F3F3)),
                height: 54,
                width: 343,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Jane Cooper',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey[600]),
                  ),
                ),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFFF3F3F3)),
              height: 54,
              width: 343,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Jane Cooper',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey[600]),
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Skeleton(
              isLoading: _isLoading,
              skeleton: const SkeletonLine(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.blue),
                    child: isChecked == true
                        ? const Icon(
                            Icons.check,
                            size: 20.0,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.check_box_outline_blank,
                            size: 20.0,
                            color: Colors.blue,
                          ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Save recipient',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF141416)),
                  ),
                ],
              )),
          const SizedBox(height: 24),
          Skeleton(
              isLoading: _isLoading,
              skeleton: const SkeletonLine(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 288,
                    height: 32,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      cursorColor: Colors.green,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      controller: amountController,
                      onSubmitted: (value) {
                        if(value.isEmpty){
                          return;
                        }else{
                          bottomSheetConfirm.modalBottomSheetMenu();
                        }
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        hintText: ' Amount',
                        hintStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFB8B8B9),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Container(
                    width: 39,
                    height: 26,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        border: Border.all(
                            width: 2, color: const Color(0xFFF3F3F3))),
                    alignment: Alignment.center,
                    child: const Text(
                      'TZS',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF141416)),
                    ),
                  ),
                ],
              ))
        ]));
  }
}
