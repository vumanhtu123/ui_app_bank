import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/dropdown.field.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset("assets/logo.svg"),
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
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading =
            false; // Khi hoàn thành tải hoặc xử lý, ẩn skeleton placeholder
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  child: SvgPicture.asset(
                    'assets/contact.svg',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Recipient name',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey[600]),
            ),
            SizedBox(height: 8),
          ],
        ));
  }
}
