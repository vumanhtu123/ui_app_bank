import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              const SizedBox(height: 30),

            ],
          )
        ],
      ),
    );
  }
}
