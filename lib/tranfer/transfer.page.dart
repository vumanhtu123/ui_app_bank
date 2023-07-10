import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/tranfer/transfer.component.dart';

import '../common/appbar.dart';

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
        children: const [
          CustomAppbar(),
          TransferComponent(),
          SizedBox(height: 16),
          BodyTransfer(),
        ],
      ),
    );
  }
}
