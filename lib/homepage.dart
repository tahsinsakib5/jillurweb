// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:shared_preferences/shared_preferences.dart';
import 'package:jillurrhman/adminpanel.dart/loginapage.dart';
import 'package:jillurrhman/chatlist.dart';
import 'package:jillurrhman/container.dart';
import 'package:jillurrhman/massage/massagetemplate.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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


 

   // ignore: unused_element

 

class _HomePageState extends State<HomePage> {
  bool ismessage = false;

final chatcontrolar = TextEditingController();
  final String url = "+8801830888045";

  final ScrollController controller = ScrollController();


  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    
    signInAnonymously();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [


 // frist flotingaction button
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

          // second floting action button
        
          FloatingActionButton(
            onPressed: ()async{
              setState(() {
                ismessage = !ismessage;
              });   
          await user_chat();
         
            },
            child: Icon(Icons.message),
            
          ),

    //therd flotingactionbutton
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
                                Container(
                                  height: 300,
                                  width:300,
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
                  future:chat_list.getChatList(),
                
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
                                bool usermassage =false;
                             if(chat["uid"]==FirebaseAuth.instance.currentUser!.uid){
                               
                                 usermassage=true;
                              
                             }
                            return Template(
                                massege:chat["chat"], chenge:usermassage);
                          },
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                           
                          
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
                              
                           setState(() {
                             second_user_chat();
                           });
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

Future<void> signInAnonymously() async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    User? user = userCredential.user;

    if (user != null) {
      // Save user information to SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('uid', user.uid);
    }
  } catch (e) {
    print('Error signing in anonymously: $e');
  }
}




  Future  user_chat () async {
     
     try{

      var docRef = FirebaseFirestore.instance.collection("all_chat").doc(FirebaseAuth.instance.currentUser!.uid);
       
      var docget =await docRef.get();


      if(docget.exists){

        print("al redyexsits");

      } else{

                   
     Map<String, dynamic> data = {
      "name":DateTime.now(),
      "chat":"How Can hep you sir",
      "uid":"ZV94oq2qvDdnnBti6bqVtuQlqCm1", 
     };

        await docRef.set({
        'chat_list': FieldValue.arrayUnion([data]),
    
 });
      }

     }catch(e){

         print(e);
     }



}



 Future second_user_chat () async {
     


      var docRef = FirebaseFirestore.instance.collection("all_chat").doc(FirebaseAuth.instance.currentUser!.uid);
       
     

                   
     Map<String, dynamic> data = {
      "name":DateTime.now(),
      "chat":chatcontrolar.text,
      "uid":FirebaseAuth.instance.currentUser!.uid, 
     };

        await docRef.update({
        'chat_list': FieldValue.arrayUnion([data]),
    
 });
     



}
}
