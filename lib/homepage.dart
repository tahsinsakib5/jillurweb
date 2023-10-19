// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jillurrhman/maindesing/bennar.dart';
import 'package:jillurrhman/maindesing/card.dart';
import 'package:jillurrhman/maindesing/hader.dart';
import 'package:jillurrhman/thim.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header(),
            banner(),
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kpriymarycolor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text("Transparent process",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.pink)),
                            SizedBox(
                              height: 22,
                            ),
                            Text("Why people choose us",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua.",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 80, 79, 79))),
                            SizedBox(
                              height: 22,
                            ),
                            Image.asset(
                              "assets/choose.png",
                              height: 550,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Column(
                              children: [
                                card(),
                                SizedBox(
                                  height: 30,
                                ),
                                card(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                card(),
                                SizedBox(
                                  height: 30,
                                ),
                                card(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
