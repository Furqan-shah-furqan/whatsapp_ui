import 'package:flutter/material.dart';
import 'package:watsapp_ui/Pages/my_updates.dart';
import 'package:watsapp_ui/Pages/calls.dart';
import 'package:watsapp_ui/Pages/chats.dart';
import 'package:watsapp_ui/Pages/communities.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _bottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    MyChats(),
    MyUpdates(),
    const MyCommunities(),
    const MyCalls(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 0, 5, 17),
      //   title: const Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         'WhatsApp',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 28,
      //         ),
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.all(10.0),
      //             child: Icon(
      //               Icons.camera_alt_outlined,
      //               color: Colors.white,
      //               size: 30,
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.all(5.0),
      //             child: Icon(
      //               Icons.more_vert_rounded,
      //               color: Colors.white,
      //               size: 30,
      //             ),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 3, 15, 30),
          currentIndex: _selectedIndex,
          onTap: _bottomNavigation,
          fixedColor: const Color.fromARGB(255, 65, 182, 69),
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.system_update_tv_outlined), label: 'Updates'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline_sharp), label: 'Communities'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_outlined), label: 'Calls'),
          ]),
    );
  }
}
