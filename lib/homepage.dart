// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js_interop';
import 'dart:js_util';
import 'dart:ui';
import 'package:jillurrhman/adminpanel.dart/loginapage.dart';
import 'package:jillurrhman/chatlist.dart';
import 'package:jillurrhman/container.dart';
import 'package:jillurrhman/massage/massagetemplate.dart';
import 'package:jillurrhman/texanimation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:jillurrhman/animatedcontainer.dart';
import 'package:url_launcher/link.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jillurrhman/colors.dart';
import 'package:jillurrhman/customscrol.dart';
import 'package:jillurrhman/maindesing/bennar.dart';
import 'package:jillurrhman/maindesing/card.dart';
import 'package:jillurrhman/maindesing/hader.dart';
import 'package:jillurrhman/slider.dart';
import 'package:jillurrhman/thim.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ismessage = false;
final chatcontrolar = TextEditingController();
  final String url = "+8801830888045";

  final ScrollController controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    sinig();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [



            FloatingActionButton(
            onPressed: () async {
              // ignore: prefer_const_declarations
              final _call = "https://wa.me/+8801830888045";

              if (await canLaunch(_call)) {
                await launch(_call);
              }
            },
            child: Icon(
              MdiIcons.whatsapp,
              size: 40,
              color: Color.fromARGB(255, 15, 242, 76),
            ),
          ),

          SizedBox(
            height: 10,
          ),
        
          FloatingActionButton(
            onPressed: ()async{
              setState(() {
                ismessage = !ismessage;
              });


     Map<String, dynamic> data = {
      "name":DateTime.now(),
      "chat":"hi",
      "uid":FirebaseAuth.instance.currentUser!.uid, 
     };

       var chatid = await chats(data);

            

               if(chatid!=null){
                     Map<String,dynamic>data={
                 "udtid":"MHADI8h23NecxmnLe38kQCileWj2",
                "chatid":chatid,
               };

              usardata(FirebaseAuth.instance.currentUser!.uid, data);

               }
             
            
            },
            child: Icon(Icons.message),
          ),


          
          SizedBox(
            height: 10,
          ),
        
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>Codepage(),));
            },
            child: Icon(Icons.admin_panel_settings),
          ),
          
        ],
      ),

      // clipBehavior: Clip.antiAlias),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              children: [
                header(),
                banner(),
                slider(),
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
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua.",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 80, 79, 79))),
                                SizedBox(
                                  height: 22,
                                ),
                                Image.asset(
                                  "assets/choose.png",
                                  height: 500,
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
                                    card(
                                        name: "and",
                                        pragraph: "",
                                        title: "android development"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    card(
                                      name: "ios",
                                      pragraph: "",
                                      title: "iod development",
                                    ),
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
                                    card(
                                        name: "web",
                                        pragraph: "",
                                        title: "web development"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    card(
                                        name: "ui/ux",
                                        pragraph: "",
                                        title: "ui/ux desing"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                container(),
              ],
            ),
          ),
          if (ismessage == true)
            Positioned(
              bottom: 70,
              right: 50,
              child: Container(
                height: 650,
                width: 400,
                decoration: BoxDecoration(
                  color: kpriymarycolor,
                ),
                child: FutureBuilder(
                  future:chat_list.getChatList(getmyuser().toString()),
                
                  builder:(context, snapshot) {
                    if(snapshot.hasData){
                      return Column(
                    children: [
                      AppBar(
                        backgroundColor: Color.fromARGB(255, 252, 116, 162),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount:snapshot.data!.length,
                          itemBuilder: (context, index) {
                             Map<String, dynamic> chat = snapshot.data![index];
                            return Template(
                                massege:chat["chat"], chenge:true);
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                           
                            sinig();
                          },
                          child: Text("star chat")),
                      TextField(
                        controller:chatcontrolar,

                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          suffix: IconButton(
                              onPressed: ()async{
                              
                          var chatid = await getmyuser();

                          if(chatid!=null){
                            secondchats(chatid);
                          }
                             chatcontrolar.clear();
                              }, icon: Icon(Icons.send)),
                        ),
                      )
                    ],
                  );
                    }else{
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                  
                ),
              ),
            ),
        ],
      ),
    );
  }

Future sinig() async {
    await FirebaseAuth.instance.signInAnonymously();

    var useruid = FirebaseAuth.instance.currentUser!.uid;

    return useruid;
  }

  Future chats(Map<String,dynamic>chat_mep) async {
    var colaction = FirebaseFirestore.instance.collection("all_chat");

   

   DocumentReference documentReference =await colaction.add({
    'chat_list': FieldValue.arrayUnion([chat_mep])
 });

  return documentReference.id;

}




  Future secondchats(String chatid) async {
    var colaction = FirebaseFirestore.instance.collection("all_chat");
  var docref = colaction.doc(chatid);
     
     Map<String,dynamic> chat_mep={
      "chat":chatcontrolar.text,
      "name":DateTime.now(),
      "uid":FirebaseAuth.instance.currentUser!.uid,
     };

   await docref.update({
    'chat_list': FieldValue.arrayUnion([chat_mep])
 });

 

}



Future usardata(String uid,Map<String,dynamic>data)async{
  FirebaseFirestore.instance.collection("user_data").doc(uid).set(data);
} 



    Future getmyuser()async{
  var uid=  FirebaseAuth.instance.currentUser!.uid;
   var colactionsnsapshort =await FirebaseFirestore.instance.collection("user_data").doc(uid).get();
     
      var docSnap=colactionsnsapshort.data();
      return docSnap!["chatid"];
   }



}
