import 'package:flutter/material.dart';
import 'package:jillurrhman/thim.dart';

class card extends StatelessWidget {
  final String name;
  final String title;
  final String pragraph;
  const card({
    super.key, required this.name, required this.title, required this.pragraph,
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
                title,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height:22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal:13),
                child: Text(
                  pragraph,
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
              name,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
