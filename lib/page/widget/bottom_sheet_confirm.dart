import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetConfirm {
  final Function() onTap;
  final BuildContext context;

  BottomSheetConfirm(this.context, this.onTap);

  void modalBottomSheetMenu() {
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
          child: ItemBottomSheetConfirm(onTap: onTap),
        );
      },
    );
  }
}

class ItemBottomSheetConfirm extends StatelessWidget {
  final Function() onTap;

  ItemBottomSheetConfirm({super.key, required this.onTap});

  final List<ItemTextData> listData = [
    ItemTextData("Recipient Name", 'Jane Cooper', false, false),
    ItemTextData("Recipient Phone", '(+255) 555-0134', false, false),
    ItemTextData("Money Source", 'HaloPesa', true, false),
    ItemTextData("Message", 'John Doe send money dinner out', false, true),
    ItemTextData("Amount", '200,000 TZS', false, false),
    ItemTextData("Service Fee", '0', false, false)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Confirm transfer",
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
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: listData.length,
            itemBuilder: (context, index) {
              final data = listData[index];
              return ItemText(
                text1: data.t1.toString(),
                text2: data.t2.toString(),
                isIcon: data.isIcon,
                isDivider: data.isDivider,
              );
            },
          ),
          ButtonWidget(
            textButton: "Confirm",
            openNextBottom: onTap,
          ),
        ]));
  }
}

class ItemText extends StatelessWidget {
  final String text1, text2;
  final bool? isIcon;
  final bool? isDivider;

  const ItemText(
      {super.key,
      required this.text1,
      required this.text2,
      this.isIcon,
      this.isDivider});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          text1,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF727273)),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  if (isIcon ?? false)
                    SvgPicture.asset('assets/images/icon_halo.svg'),
                  if (isIcon ?? false) const SizedBox(width: 8),
                ],
              ),
            ),
            // const SizedBox(width: 8),
            Text(
              text2,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF141416)),
            ),
          ],
        ),
        if (isDivider ?? false)
          const SizedBox(
            height: 24,
          ),
        Row(
          children: [
            if (isDivider ?? false)
              Container(
                width: MediaQuery.of(context).size.width - 35,
                height: 1,
                color: const Color(0xFFF3F3F3),
              ),
          ],
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String? textButton;
  final VoidCallback? openNextBottom;

  const ButtonWidget({super.key, this.textButton, this.openNextBottom});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openNextBottom!(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xFF1FB53A),
        ),
        width: MediaQuery.of(context).size.width - 16,
        height: 54,
        child: Center(
          child: Text(
            textButton ?? "Confirm",
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );
  }
}

class ItemTextData {
  final String? t1;
  final String? t2;
  final bool? isIcon;
  final bool? isDivider;

  ItemTextData(this.t1, this.t2, this.isIcon, this.isDivider);
}
