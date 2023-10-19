import 'package:flutter/material.dart';
import 'package:jillurrhman/thim.dart';

class card extends StatelessWidget {
  const card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: 300,
          decoration: BoxDecoration(
            color: ksecondarycolor,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 145,
              ),
              Text(
                "Guarantee",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height:22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal:13),
                child: Text(
                  "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod temporincididunt",
                  style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 76, 76, 76)),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: -160,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 140,
            backgroundColor: therdcolor,
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 45,
            backgroundColor:
                Color.fromARGB(255, 251, 115, 115),
            child: Text(
              "%",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
