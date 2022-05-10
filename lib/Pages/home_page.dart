import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walletappui/Pages/contacts_screen.dart';
import 'package:walletappui/Pages/home_screen.dart';
import 'package:walletappui/Pages/profile_screen.dart';
import 'package:walletappui/Pages/transaction_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    HomeScreen(),
    TransactionScreen(),
    ContactsScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(22, 0, 0, 0),
                spreadRadius: 0,
                blurRadius: 15,
                offset: Offset(0, -10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  this.index = index;
                });
              },
              // backgroundColor: Color.fromARGB(255, 74, 141, 11),
              currentIndex: index,
              showUnselectedLabels: true,
              unselectedItemColor: Color.fromARGB(255, 130, 130, 130),
              selectedItemColor: Colors.black,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset('assets/home_icon2.png'),
                  label: 'Home',
                  activeIcon: Image.asset('assets/home_icon.png'),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/arrows_icon2.png'),
                  label: 'Transactions',
                  activeIcon: Image.asset('assets/arrows_icon.png'),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/contacts_icon2.png'),
                  label: 'Contacts',
                  activeIcon: Image.asset('assets/contacts_icon.png'),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/user_icon2.png'),
                  label: 'Profile',
                  activeIcon: Image.asset('assets/user_icon.png'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: screens[index],
      ),
    );
  }
}
