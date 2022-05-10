import 'package:flutter/material.dart';
import 'package:walletappui/Pages/Themes/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool transactions = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return false;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            //top container
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                const Color(0xff3491DB),
                Theme.of(context).colorScheme.primary,
              ],
            )
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
                  Text("Hi, Amanda",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: MyTheme.firstColor),),
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
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      splashColor: Color.fromARGB(255, 166, 127, 19),
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40) / 2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/send_money.png',
                              scale: 0.8,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Send Money',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      splashColor: Color.fromARGB(255, 17, 87, 141),
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40) / 2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/request_money.png',
                              scale: 0.8,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Request Money',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: MyTheme.secondColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //last transactions container
            Container(
              decoration: BoxDecoration(
                color: MyTheme.secondColor,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 15,
              ),
              child: Column(
                children: [
                  //last transactions and viewall row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last Transactions",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: MyTheme.thirdColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      transactions
                          ? Text(
                              "View All",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),

                  //view all transacitons
                  transactions
                      ? SizedBox.shrink()
                      : Container(
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/List.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "There's no transactions till now",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: MyTheme.fourthColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
