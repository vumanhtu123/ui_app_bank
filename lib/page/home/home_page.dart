import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/home/components/grid_component.dart';
import 'package:flutter_superapp_tanzania/page/home/components/promotions_component.dart';
import 'package:flutter_superapp_tanzania/page/widget/account_top_bar.dart';
import 'components/card_balance_component.dart';
import 'components/subscriber_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeGridList = <HomeGridModel>[];
  final subscriberList = <SubscriberModel>[];
  final promotionList = <PromotionModel>[];

  @override
  void initState() {
    super.initState();

    homeGridList.add(
        HomeGridModel(svgAsset: 'assets/icons/ic_4g.svg', title: 'Bundle'));
    homeGridList.add(HomeGridModel(
        svgAsset: 'assets/icons/ic_bills_payment.svg', title: 'Bills Payment'));
    homeGridList.add(HomeGridModel(
        svgAsset: 'assets/icons/ic_merchants_payment.svg',
        title: 'Merchants Payment'));
    homeGridList.add(HomeGridModel(
        svgAsset: 'assets/icons/ic_guy_luku.svg', title: 'Buy LUKU'));
    homeGridList.add(HomeGridModel(
        svgAsset: 'assets/icons/ic_airtime.svg', title: 'Airtime'));
    homeGridList.add(
        HomeGridModel(svgAsset: 'assets/icons/ic_more.svg', title: 'More'));

    subscriberList.add(SubscriberModel(
        type: SubscriberEnum.type1,
        svgAsset: 'assets/icons/ic_4g.svg',
        title: 'Halotel Tomato',
        titleBtn: 'Recharge',
        value: '1.000',
        unit: 'TZS'));
    subscriberList.add(SubscriberModel(
        type: SubscriberEnum.type1,
        svgAsset: 'assets/icons/ic_4g.svg',
        title: 'Halo 70',
        titleBtn: 'Get Bundle',
        value: '72',
        value2: '1.024',
        unit: 'MB'));
    subscriberList.add(SubscriberModel(
        type: SubscriberEnum.type3,
        svgAsset: 'assets/icons/ic_4g.svg',
        title: 'Domestic Calls',
        value: '60',
        unit: 'Mins'));
    subscriberList.add(SubscriberModel(
        type: SubscriberEnum.type3,
        svgAsset: 'assets/icons/ic_4g.svg',
        title: 'Domestic Messages',
        value: '10',
        unit: 'SMS'));

    promotionList.add(PromotionModel(
        svgAsset: 'assets/images/img_promotion@2x.png',
        title: '5% discount when you buy Bundles',
        date: '1 Jun, 2023'));
    promotionList.add(PromotionModel(
        svgAsset: 'assets/images/img_promotion@2x.png',
        title: '5% discount when you buy Bundles',
        date: '1 Jun, 2023'));
    promotionList.add(PromotionModel(
        svgAsset: 'assets/images/img_promotion@2x.png',
        title: '5% discount when you buy Bundles',
        date: '1 Jun, 2023'));
    promotionList.add(PromotionModel(
        svgAsset: 'assets/images/img_promotion@2x.png',
        title: '5% discount when you buy Bundles',
        date: '1 Jun, 2023'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_home_header@2x.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                const SizedBox(height: 20),
                const AccountTopBar(),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CardBalanceComponent(),
                ),
                GridComponent(homeGridList: homeGridList),
                SubscriberComponent(subscriberList: subscriberList),
                PromotionsComponent(promotionList: promotionList)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeGridModel {
  String svgAsset;
  String title;

  HomeGridModel({required this.svgAsset, required this.title});
}

enum SubscriberEnum { type1, type2, type3 }

class SubscriberModel {
  String svgAsset;
  String title;
  String? titleBtn;
  String value;
  String unit;
  String? value2;
  SubscriberEnum type;

  SubscriberModel(
      {required this.type,
      required this.svgAsset,
      required this.title,
      this.titleBtn,
      required this.value,
      this.value2,
      required this.unit});
}

class PromotionModel {
  String svgAsset;
  String title;
  String date;

  PromotionModel(
      {required this.svgAsset, required this.title, required this.date});
}
