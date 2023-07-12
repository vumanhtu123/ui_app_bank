import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/generated/assets.dart';
import 'package:flutter_superapp_tanzania/page/tranferSuccess/transfer.success.component.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransferSuccess extends StatefulWidget {
  const TransferSuccess({super.key});

  @override
  State<TransferSuccess> createState() => _TransferSuccessState();
}

class _TransferSuccessState extends State<TransferSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsIconSuccess,
                      // width: 64,
                      // height: 64,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35, right: 20),
                      child: Image.asset(
                        Assets.imagesLogoSuccess,
                        width: 98.75,
                        height: 20,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 170, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Successfully transferred',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: MColor.black1),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '200,000 TZS',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: MColor.black1),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'TRANSACTION DETAILS',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MColor.gray3),
                      ),
                      const SizedBox(height: 16),
                      const TransferSuccessComponent(
                        image: Assets.assetsLogo1,
                        width: 40,
                        height: 40,
                        name: 'John Doe',
                        phone: '(+255) 555-0103',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.iconsDown,
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(width: 30),
                            const Expanded(
                              child: Divider(
                                thickness: 1.0,
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TransferSuccessComponent(
                        image: Assets.assetsLogo1,
                        width: 40,
                        height: 40,
                        name: 'Jane Cooper',
                        phone: '(+255) 555-0134 • HaloPesa',
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: List.generate(
                            800 ~/ 10,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : MColor.gray3,
                                    height: 2,
                                  ),
                                )),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Transaction ID ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MColor.gray4),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '66565658AO36',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MColor.black1),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Message',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MColor.gray4),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'John Doe send money dinner out',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MColor.black1),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Time',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MColor.gray4),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '22:31:40, 11 Jun 2023',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MColor.black1),
                      ),
                      const SizedBox(height: 12),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'Show more',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: MColor.green1),
                            ),
                            const SizedBox(width: 8),
                            SvgPicture.asset(
                              Assets.iconsChervon,
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: MColor.gray1,
                                  shape: BoxShape.circle,
                                ),
                                width: 48,
                                height: 48,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    Assets.iconsScreenshot,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Save',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: MColor.black1),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: MColor.gray1,
                                  shape: BoxShape.circle,
                                ),
                                width: 48,
                                height: 48,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    Assets.iconsShare,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: MColor.black1),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 45),
                      NormalButtonWidget(
                        onPress: () {
                          Navigator.pop(context);
                        },
                        borderRadius: 6,
                        width: 343,
                        height: 54,
                        title: 'Home',
                        fontSize: 14,
                        fonWeight: FontWeight.w600,
                        color: Colors.white,
                        colorBg: MColor.green1,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
