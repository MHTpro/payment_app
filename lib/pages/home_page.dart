import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payment_app/const_var.dart';
import 'package:payment_app/pages/transfer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    //appbar --start
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24.0,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),

                    //appbar --end
                    const SizedBox(
                      height: 40.0,
                    ),

                    //tabbar --start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 100.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                            color: Colors.transparent,
                            border: Border.all(
                              color: ConstColor.yellow,
                              width: 1.0,
                            ),
                          ),
                          child: const Text(
                            "Account",
                            style: TextStyle(
                              color: ConstColor.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        const Text(
                          "Debit cards",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const Text(
                          "Credits",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const Text(
                          "Stocks",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    //tabbar --end
                    const SizedBox(
                      height: 40.0,
                    ),

                    //first_box --start
                    Container(
                      height: 200.0,
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Account Balance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                r"$18,280",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                yellowBox(
                                  text: "Transfer",
                                  icon: Icons.repeat,
                                ),
                                yellowBox(
                                  text: "Request",
                                  icon: Icons.add,
                                ),
                                Container(
                                  height: 40.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(
                                      20.0,
                                    ),
                                    border: Border.all(
                                      color: Colors.white30,
                                      width: 2.0,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.white30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //first_box --end

                    const SizedBox(
                      height: 20.0,
                    ),

                    //second_box --start
                    Container(
                      height: 160.0,
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Debit cards",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: 65.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: ConstColor.yellow,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          const Text(
                                            "VISA",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: ConstColor.yellow,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Transform.rotate(
                                            angle: 1.5,
                                            child: const Icon(
                                              Icons.wifi,
                                              color: ConstColor.yellow,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      const Text(
                                        "****5620",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: ConstColor.yellow,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 65.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.white24,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          const Icon(
                                            Icons.credit_card_outlined,
                                            color: Colors.white24,
                                          ),
                                          Transform.rotate(
                                            angle: 1.5,
                                            child: const Icon(
                                              Icons.wifi,
                                              color: Colors.white24,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      const Text(
                                        "****5620",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white24,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 65.0,
                                  width: 110.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.white24,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "+ Add card",
                                    style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //second_box --end
                    const SizedBox(
                      height: 20.0,
                    ),
                    //third_box --start
                    Container(
                      height: 180.0,
                      width: 360.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Transactions",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: ConstColor.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Today",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.white30,
                            ),
                            ListTile(
                              subtitle: Text(
                                "Regular transfer",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Text(
                                r"4,600$",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              title: Text(
                                "Adam Johnson",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //third_box --end
                  ],
                ),
                //frosted_box --start
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        width: 220.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        alignment: Alignment.center,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.home_outlined,
                              color: ConstColor.yellow,
                              size: 30.0,
                            ),
                            Icon(
                              Icons.repeat,
                              size: 30.0,
                              color: Colors.white54,
                            ),
                            Icon(
                              Icons.more_horiz,
                              size: 30.0,
                              color: Colors.white54,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //frosted_box --end
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget yellowBox({
    required String text,
    required IconData? icon,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const Transfer();
            },
          ),
        );
      },
      child: Container(
        height: 40.0,
        width: 110.0,
        decoration: BoxDecoration(
          color: ConstColor.yellow,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
