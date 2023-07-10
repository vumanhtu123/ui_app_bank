import 'package:flutter/material.dart';
import 'package:flutter_superapp_tanzania/page/discovery/discovery_page.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List _screens = [
    const DiscoveryPage(),
    const DiscoveryPage(),
    const DiscoveryPage(),
    const DiscoveryPage(),
    const DiscoveryPage()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: const Color(0xFF1FB53A),
        selectedIconTheme: const IconThemeData(color: Color(0xFF1FB53A)),
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(
              "assets/images/icon_home.svg",
              color: _currentIndex == 0
                  ? const Color(0xFF1FB53A)
                  : const Color(0xFF727273),
            ),
          ),
          BottomNavigationBarItem(
            label: "Promotion",
            icon: SvgPicture.asset(
              "assets/images/icon_ticket.svg",
              color: _currentIndex == 1
                  ? const Color(0xFF1FB53A)
                  : const Color(0xFF727273),
            ),
          ),
          BottomNavigationBarItem(
            label: "Discovery",
            icon: SvgPicture.asset(
              "assets/images/icon_discovery.svg",
              color: _currentIndex == 2
                  ? const Color(0xFF1FB53A)
                  : const Color(0xFF727273),
            ),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: SvgPicture.asset(
              "assets/images/icon_doc.svg",
              color: _currentIndex == 3
                  ? const Color(0xFF1FB53A)
                  : const Color(0xFF727273),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset(
              "assets/images/icon_profile.svg",
              color: _currentIndex == 4
                  ? const Color(0xFF1FB53A)
                  : const Color(0xFF727273),
            ),
          ),
        ],
      ),
    );
  }
}
