// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:js_util';
import 'dart:ui';
import 'package:jillurrhman/massage/massagetemplate.dart';
import 'package:jillurrhman/texanimation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:jillurrhman/animatedcontainer.dart';
import 'package:jillurrhman/colors.dart';
import 'package:jillurrhman/customscrol.dart';
import 'package:jillurrhman/maindesing/bennar.dart';
import 'package:jillurrhman/maindesing/card.dart';
import 'package:jillurrhman/maindesing/hader.dart';
import 'package:jillurrhman/slider.dart';
import 'package:jillurrhman/thim.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

 bool ismessage = false;

 

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
       
        setState(() {
                ismessage=!ismessage;
                });
                
      },child:Icon(Icons.message),clipBehavior:Clip.antiAlias),
      
      
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller:ScrollController(),
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
                                    card(name:"and",pragraph:"",title: "android development"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    card(name:"ios",pragraph: "",title: "iod development",),
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
                                    card(name:"web",pragraph: "",title: "web development"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    card(name:"ui/ux",pragraph: "",title: "ui/ux desing"),
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
                  height:30,
                ),
          
          
               
          
          
                 
          
          
          
                   Container(
                   height:500,
                   color:darkColor,
          
          
                     
          
                   child:Column(
                     children: [
                      SizedBox(
                        height:100,
                      ),
                       Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.only(left:640),
                               child: Column(
                                
                                children: [
                                  Row(
                                    
                                    children: [
                                      Image.asset("assets/favicon.png",height:40,),
                                      Text("Sftawer company",style:TextStyle(color:Colors.white,fontSize:20),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Lorem ipsum dolor sit amet, \n consec tetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et \ndolore magna aliqua.",style:TextStyle(color:Colors.white),),
                                  ),
                               
                                  Row(
                                    children: [
                                      Text("Follow us",style:TextStyle(color:Colors.white),),
                                      Icon(MdiIcons.twitter,color:Colors.white,),
                                      Icon(MdiIcons.facebook,color:Colors.white,),
                                      Icon(MdiIcons.youtube,color:Colors.white,),
                                      Icon(MdiIcons.instagram,color:Colors.white,),
                                    ],
                                  )
                                  
                                ],
                               ),
                             ),
                           ),
          
          
                           SizedBox(
                            width:30,
                           ),
                       
                            Expanded(
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text("contact us",style:TextStyle(color:Colors.white,fontSize:40),),
                              
                                  
                                  Divider(color:Colors.white,),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                      children: [
                                        Icon(Icons.phone,color:Colors.white,),
                                        Text("01830888045",style:TextStyle(color:Colors.white,fontSize:20),),
                                                               
                                      ],
                                     ),
                                   ),
                                    Row(
                                    children: [
                                      Icon(Icons.web_asset,color:Colors.white,),
                                      Text("https://flutter-lab.github.io/#/",style:TextStyle(color:Colors.white,fontSize:17),),
                              
                                    ],
                                   ), Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                      children: [
                                        Icon(Icons.location_city,color:Colors.white,),
                                        Text("Gazipure/Dhaka",style:TextStyle(color:Colors.white,fontSize:17),),
                                                               
                                      ],
                                     ),
                                   ), Row(
                                    children: [
                                      Icon(Icons.email,color:Colors.white,),
                                      Text("sakibulislam5162@gmail.com",style:TextStyle(color:Colors.white,fontSize:17),),
                              
                                    ],
                                   )
                                ],
                              ),
                            )
                         ],
                       ),
                     ],
                   ),
          
          
                    
                 ),
          
                 
                
          
                SizedBox(
                  height:200,
                ),
              ],
            ),
          ),
          if(ismessage==true)
           Positioned(
            bottom:70,
            right: 50,
             child: Container(
                    height:650,
                    width:400,
                    decoration: BoxDecoration(
                      color:kpriymarycolor,
                      
                    ),
                    child: Column(
                      children: [
                        AppBar(backgroundColor:Color.fromARGB(255, 252, 116, 162),),
                        Expanded(
                          child: ListView.builder(itemCount:10,itemBuilder: (context, index) {
                            return Template(massege:massage[index], chenge:value[index]);
                          },),
                        ),
                        TextField(decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(50),
                            
                          ),
                          suffix:IconButton(onPressed: () {
                            
                          }, icon:Icon(Icons.send)),
                        ),)
                      ],
                    ),
                   ),
           ),
        ],
      ),
    );
  }
}


