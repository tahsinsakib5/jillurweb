import 'package:flutter/material.dart';

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
                            color: Colors.pink,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 28,
                    ),
                    Text("We believe in those \nmade to do more",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Loans are advantageous as a relatively \ninexpensive way of borrowing money. Start or grow your own business",
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
