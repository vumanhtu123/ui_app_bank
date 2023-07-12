import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/common/mcolor.dart';
import 'package:flutter_superapp_tanzania/common/mtext_styles.dart';
import 'package:flutter_superapp_tanzania/page/home/home_page.dart';
import 'package:flutter_superapp_tanzania/page/widget/normal.button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriberComponent extends StatelessWidget {
  const SubscriberComponent({super.key, required this.subscriberList});

  final List<SubscriberModel> subscriberList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MColor.gray1,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Subscriber',
                  style: MTextStyle.grayH1,
                ),
              ),
              Text(
                'View Info',
                style: MTextStyle.greenH5,
              ),
            ],
          ),
          const SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: subscriberList.length,
            itemBuilder: (context, index) {
              final model = subscriberList[index];
              if(model.type == SubscriberEnum.type3) {
                return SubscriberItem3(subscriber: model);
              }
              return SubscriberItem(subscriber: model);
            },
          ),
        ],
      ),
    );
  }
}

class SubscriberItem extends StatelessWidget {
  const SubscriberItem({super.key, required this.subscriber});

  final SubscriberModel subscriber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MColor.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff101828).withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ]
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            subscriber.svgAsset,
            width: 24,
            height: 24,
          ),
          const SizedBox(height: 10),
          Text(
            subscriber.title,
            style: MTextStyle.gray600Normal,
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subscriber.value,
                style: MTextStyle.grayH1,
              ),
              if(subscriber.value2 != null)...[
                Text(
                   '/${subscriber.value2}',
                  style: MTextStyle.grayH1Normal,
                ),
              ],
              const SizedBox(width: 5),
              Text(
                subscriber.unit,
                style: MTextStyle.grayNormal,
              ),
            ],
          ),
          const Spacer(),
          NormalButtonWidget(
            width: double.infinity,
            height: 40,
            borderRadius: 6,
            color: MColor.green1,
            colorBg: MColor.green2,
            title: subscriber.titleBtn ?? '',
            fonWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}

class SubscriberItem3 extends StatelessWidget {
  const SubscriberItem3({super.key, required this.subscriber});

  final SubscriberModel subscriber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MColor.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            subscriber.svgAsset,
            width: 24,
            height: 24,
          ),
          const SizedBox(height: 10),
          Text(
            subscriber.title,
            style: MTextStyle.gray600Normal,
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subscriber.value,
                style: MTextStyle.grayH1,
              ),
              if(subscriber.value2 != null)...[
                Text(
                  '/${subscriber.value2}',
                  style: MTextStyle.grayH1Normal,
                ),
              ],
              const SizedBox(width: 5),
              Text(
                subscriber.unit,
                style: MTextStyle.grayNormal,
              ),
            ],
          )
        ],
      ),
    );
  }
}