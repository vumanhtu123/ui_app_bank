import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/widget/icon_button.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetDialog {
  final BuildContext context;

  BottomSheetDialog(this.context);

  void modalBottomSheetMenu() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).size.height - 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: const ItemBottomSheet(),
        );
      },
    );
  }
}

class ItemBottomSheet extends StatelessWidget {
  const ItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
                "TRANSFER TO",
                style: TextStyle(
                    color: Color(0xFF727273),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
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
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const ItemRow(
                    name: 'Phone Number',
                    desc: 'Within the HaloPesa',
                    image: 'assets/images/icon_phone.svg',
                    isDivider: true,
                  ),
                  const ItemRow(
                    name: 'Other Networks',
                    desc: 'Within the HaloPesa',
                    image: 'assets/images/icon_wallet.svg',
                    isDivider: true,
                  ),
                  const ItemRow(
                    name: 'Bank',
                    desc: 'Within the HaloPesa',
                    image: 'assets/images/icon_bank.svg',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "SAVED LIST & TRANSACTIONS",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF727273)),
                      ),
                      Container()
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ItemSelect(),
                  const SizedBox(
                    height: 12,
                  ),
                  const ItemSearch(),
                  const ItemRow2(
                    name: 'Brooklyn Simmons',
                    desc: 'NMB Bank',
                    phone: '01234 45678 9012 3456',
                    image: 'assets/images/icon_bank.svg',
                    isDivider: true,
                  ),
                  const ItemRow2(
                    name: 'Jane Cooper',
                    desc: 'HaloPesa',
                    phone: '(+255) 555-0134',
                    image: 'assets/images/icon_bank.svg',
                    isDivider: true,
                  ),
                  const ItemRow2(
                    name: 'Jerome Bell',
                    desc: 'HaloPesa',
                    phone: '(+255) 555-0134',
                    image: 'assets/images/icon_bank.svg',
                    isDivider: true,
                  ),
                  const ItemRow2(
                    name: 'Dianne Russell',
                    desc: 'Airtel Money',
                    phone: '(+255) 555-0134',
                    image: 'assets/images/icon_bank.svg',
                    isDivider: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemSearch extends StatelessWidget {
  const ItemSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 46,
      decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SvgPicture.asset('assets/images/icon_search.svg'),
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: TextField(
              autofocus: false,
              style: TextStyle(color: Colors.black, fontSize: 14),
              decoration: InputDecoration.collapsed(
                hintText: "Search name, phone, account number...",
                hintStyle: TextStyle(
                    color: Color(0xFF89898A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}

class ItemSelect extends StatefulWidget {
  const ItemSelect({super.key});

  @override
  State<ItemSelect> createState() => _ItemSelectState();
}

class _ItemSelectState extends State<ItemSelect> {
  bool? isSelect = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 46,
      decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  isSelect = true;
                });
              },
              child: Container(
                width: 170,
                height: 38,
                decoration: BoxDecoration(
                    color: isSelect ?? true
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(6)),
                child: const Center(
                  child: Text(
                    "Recipients List",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF141416)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  isSelect = false;
                });
              },
              child: Container(
                width: 170,
                height: 38,
                decoration: BoxDecoration(
                    color: !isSelect!
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(6)),
                child: const Center(
                  child: Text(
                    "Transactions Recent",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF727273)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemRow extends StatelessWidget {
  final String? name;
  final String? desc;
  final String? image;
  final bool? isDivider;

  const ItemRow({super.key, this.name, this.desc, this.image, this.isDivider});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          image: image,
          height: 60,
          width: 60,
          padding: 16,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? "Phone Number",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF141416)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              desc ?? "Within the HaloPesa",
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727273)),
            ),
            const SizedBox(
              height: 30,
            ),
            isDivider != null
                ? Container(
                    height: 1,
                    width: 280,
                    color: const Color(0xFFF3F3F3),
                  )
                : Container(),
          ],
        ),
        // SvgPicture.asset('assets/images/icon_trash.svg')
      ],
    );
  }
}

class ItemRow2 extends StatelessWidget {
  final String? name;
  final String? desc;
  final String? image;
  final String? phone;
  final bool? isDivider;

  const ItemRow2(
      {super.key,
      this.name,
      this.desc,
      this.image,
      this.isDivider,
      this.phone});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: IconButtonWidget(
                  image: image,
                  height: 60,
                  width: 60,
                  padding: 16,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                width: 239,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "Phone Number",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF141416)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      desc ?? "Within the HaloPesa",
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF727273)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      phone ?? "01234 45678 9012 3456",
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF727273)),
                    ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    // isDivider != null
                    //     ? Container(
                    //   height: 1,
                    //   width: 280,
                    //   color: const Color(0xFFF3F3F3),
                    // )
                    //     : Container(),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset("assets/images/icon_trash.svg")
              // SvgPicture.asset('assets/images/icon_trash.svg')
            ],
          ),
          Column(
            children: [
              // SvgPicture.asset("assets/images/icon_trash.svg"),
              isDivider != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 76.0),
                      child: Container(
                        height: 1,
                        width: 280,
                        color: const Color(0xFFF3F3F3),
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
