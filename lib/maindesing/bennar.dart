import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:jillurrhman/colors.dart';

class banner extends StatelessWidget {
  const banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 800,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/main-banner2.jpg"),
                  fit: BoxFit.cover)),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 220,
                    ),
                    Text("We are here for",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.w700,fontSize:28)),
                    SizedBox(
                      height: 28,
                    ),
                    AnimatedText(),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "At Flutter Developers, we are highly skilled and experienced in creating top-notch \n applications. Our team's proficiency in Flutter framework allows us to deliver \nexceptional performance, smooth animations, and a seamless user experience.\n We take pride in our expertise, dedication to quality, and ability to handle complex projects\n efficiently. Choose us for reliable, efficient, and cutting-edge Flutter development solution",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pink,
                        ),
                        child: Center(
                            child: Text(
                          "Applay now",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ],
    );
  }
}


class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive web and mobile app.",
          speed: Duration(milliseconds:80),
          textStyle:TextStyle(fontSize:40)
        ),
        TyperAnimatedText(
          "complete e-Commerce app UI.,",
          speed: Duration(milliseconds: 100),
          textStyle:TextStyle(fontSize:40,color:Color.fromARGB(255, 254, 94, 148))
        ),
        TyperAnimatedText(
          "Chat app with dark and light theme.",
          textStyle:TextStyle(fontSize:40),
          speed: Duration(milliseconds: 80),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}

