import 'package:flutter/material.dart';
import 'package:walletappui/Pages/Themes/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //top container
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dashboard",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Image.asset('assets/profile_picture.png'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hi, Amanda",
                style: TextStyle(
                  color: MyTheme.firstColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: MyTheme.secondColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\u0024124.57",
                    style: TextStyle(
                        color: MyTheme.secondColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                  Stack(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bell,
                        color: MyTheme.secondColor,
                        size: 22,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffF8BB18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        //send money request money container
        Container(
          color: MyTheme.secondColor,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Row(
            children: [
              Material(
                child: InkWell(
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40)/2,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/send_money.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Send Money')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
