import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/discovery/app_bar.dart';
import 'package:flutter_superapp_tanzania/page/widget/icon_button.dart';
import 'package:flutter_superapp_tanzania/page/widget/bottom_sheet_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<DataIcon> listData = [
      DataIcon("App 1", "assets/images/icon_game.svg"),
      DataIcon("App 2", "assets/images/icon_bookmac.svg"),
      DataIcon("App 3", "assets/images/icon_calendar.svg"),
      DataIcon("App 4", "assets/images/icon_cart.svg"),
      DataIcon("App 5", "assets/images/icon_crown.svg"),
      DataIcon("More", "assets/images/icon_arrow.svg"),
    ];
    BottomSheetDialog bottomSheetDialog = BottomSheetDialog(context);
    // void _modalBottomSheetMenu() {
    //   showModalBottomSheet(
    //     context: context,
    //     backgroundColor: Colors.transparent,
    //     isScrollControlled: true,
    //     builder: (BuildContext builder) {
    //       return  Container(
    //         height:  MediaQuery.of(context).size.height - 60,
    //         child: Center(child: const Text("djka")),
    //         decoration: const BoxDecoration(
    //           color: Colors.white,
    //           borderRadius:  BorderRadius.only(
    //             topLeft: Radius.circular(16.0),
    //             topRight: Radius.circular(16.0),
    //           ),
    //         ),
    //
    //       );
    //     },
    //   );
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarDiscovery(),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Mini Apps",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF141416)),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 43.0, right: 43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButtonWidget(
                  function: (){
                    bottomSheetDialog.modalBottomSheetMenu();
                  },
                  image: 'assets/images/icon_game.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "App 1",
                ),
                const IconButtonWidget(
                  image: 'assets/images/icon_bookmac.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "App 2",
                ),
                const IconButtonWidget(
                  image: 'assets/images/icon_calendar.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "App 3",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 43.0, right: 43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButtonWidget(
                  image: 'assets/images/icon_cart.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "App 4",
                ),
                IconButtonWidget(
                  image: 'assets/images/icon_crown.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "App 5",
                ),
                IconButtonWidget(
                  image: 'assets/images/icon_more.svg',
                  height: 60,
                  width: 60,
                  padding: 14,
                  title: "More",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 54,
          ),
          const Divider(
            thickness: 8,
            color: Color(0xFFF7F8F9),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: RichText(
              text: const TextSpan(
                text: 'Mini Apps ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF141416)),
                children: <TextSpan>[
                  TextSpan(
                      text: '- Recently used',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF727273))),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  final item = listData[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 33.0),
                    child: IconButtonWidget(
                      image: item.icon,
                      title: item.title,
                      radius: 8,
                      height: 32,
                      width: 32,
                      padding: 7,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}

class DataIcon {
  final String? title;
  final String? icon;

  DataIcon(this.title, this.icon);
}
