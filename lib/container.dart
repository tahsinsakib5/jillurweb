

import 'package:flutter/material.dart';
import 'package:jillurrhman/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/link.dart';

class container extends StatefulWidget {
  const container({
    super.key,
  });

  @override
  State<container> createState() => _containerState();
}
 
 
class _containerState extends State<container> {

  @override
  Widget build(BuildContext context) {

     @override
  void initState(){
    // TODO: implement initState
    super.initState();

;
    //              Map<String, dynamic> data = {
    //   "name":DateTime.now(),
    //   "chat":"How Can hep you sir",
    //   "uid":"MHADI8h23NecxmnLe38kQCileWj2", 
    //  };
       
    //   //chat id create 
    //       chats(data);

        
     
  }
    return Container(
      height: 500,
      color: darkColor,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 640),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          
                          Text(
                            "Sftawer company",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, \n consec tetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et \ndolore magna aliqua.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Follow us",
                            style: TextStyle(color: Colors.white),
                          ),
                          Link(
                            uri: Uri.parse("https://github.com/"),
                            builder: (context, followLink) =>
                                IconButton(
                                    onPressed: followLink,
                                    icon: Icon(MdiIcons.youtube)),
                          ),
                          Icon(
                            MdiIcons.twitter,
                            color: Colors.white,
                          ),
                          Icon(
                            MdiIcons.facebook,
                            color: Colors.white,
                          ),
                          Icon(
                            MdiIcons.youtube,
                            color: Colors.white,
                          ),
                          Icon(
                            MdiIcons.instagram,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "contact us",
                      style: TextStyle(
                          color: Colors.white, fontSize: 40),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Text(
                            "01830888045",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.web_asset,
                          color: Colors.white,
                        ),
                        Text(
                          "https://flutter-lab.github.io/#/",
                          style: TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.white,
                          ),
                          Text(
                            "Gazipure/Dhaka",
                            style: TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        Text(
                          "sakibulislam5162@gmail.com",
                          style: TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
