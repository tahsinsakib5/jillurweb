
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:jillurrhman/container.dart';
import 'package:video_player/video_player.dart';
import 'package:jillurrhman/animatedcontainer.dart';
import 'package:jillurrhman/colors.dart';
import 'package:jillurrhman/customscrol.dart';
import 'package:jillurrhman/thim.dart';

class slider extends StatefulWidget {
   slider({
    super.key,
  });

  

  @override
  State<slider> createState() => _sliderState();
  
}
  final PageController pageController = PageController(initialPage:0);
  int curentpage =0;
class _sliderState extends State<slider> {
late VideoPlayerController _controller;

  @override

  void initState() {
    // TODO: implement initState
     
     

    super.initState();
 _controller= VideoPlayerController.asset("assets/mobile.mp4")..initialize().then((_) {
   setState(() {
     
   });
 },);

    Timer.periodic(const Duration(seconds: 20), (timer) {
      pageController.animateToPage(curentpage, duration:const Duration(seconds:1), curve:Curves.ease);
      curentpage++; 
      if(curentpage==10){
        curentpage=0;
      }
    });
  }
  Widget build(BuildContext context) {
    return Container(
     height:800,
      child: Row(
        children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(35.0),
             child: Container(
               child:Column(
                 children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal:15),
                      child: Row(
                         children: [
                           Expanded(
                             child: AnimatedCircularProgressIndicator(
                               percentage: 0.8,
                               label: "Flutter",
                             ),
                           ),
                           SizedBox(width: defaultPadding),
                           Expanded(
                             child: AnimatedCircularProgressIndicator(
                               percentage: 0.72,
                               label: "Django",
                             ),
                           ),
                           SizedBox(width: defaultPadding),
                           Expanded(
                             child: AnimatedCircularProgressIndicator(
                               percentage: 0.65,
                               label: "Firebase",
                             ),
                           ),
                         ],
                       ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                       const Divider(),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                         child: Text(
                           "Coding",
                           style: Theme.of(context).textTheme.subtitle2,
                         ),
                       ),
                       const AnimatedLinearProgressIndicator(
                         percentage: 0.7,
                         label: "Dart",
                       ),
                       const AnimatedLinearProgressIndicator(
                         percentage: 0.68,
                         label: "Python",
                       ),
                       const AnimatedLinearProgressIndicator(
                         percentage: 0.9,
                         label: "HTML",
                       ),
                       const AnimatedLinearProgressIndicator(
                         percentage: 0.75,
                         label: "CSS",
                       ),
                       const AnimatedLinearProgressIndicator(
                         percentage: 0.58,
                         label: "JavaScript",
                       ),
                             ],
                           ),
                     ),
                 ],
               ),
             
             ),
           ),
         ),

          SizedBox(
            width:100,
          ),
          Expanded(
           flex:5,
            child: PageView.builder(controller:pageController,itemCount:10,scrollBehavior:MyCustomScrollBehavior(),itemBuilder: (context, index) {
              return Container(
               color:kpriymarycolor,
               height:200,
    
               
               
               child:Row(
                 children: [
                   Expanded(child: Center(child: Stack(
                     children: [
                       Container(
                       
                        child: _controller.value.isInitialized? VideoPlayer(_controller):const
                        
                        
                         container()),


                         Positioned(
                          top:380,
                          left: 0,
                          right:0,
                           child: IconButton(onPressed: () {
                            setState(() {
                              
                            });
                              _controller.value.isPlaying?_controller.pause():_controller.play();
                           }, icon: Icon(_controller.value.isPlaying ? Icons.pause:Icons.play_arrow,size:50,),),
                         )
                     ],
                   ))),
    
                   Expanded(
                     flex:2,
                     child: Container(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                             const SizedBox(
                              height:160,
                             ),
                             const Text("travel app",style:TextStyle(fontSize:25),),
                           
                            const Text("Let's make one thing clear: unfortunately, there's no one best texting app. Unless you absolutely require one or two specific features, the best text message app for you will be the one that the people you want to text also use Depending on where you are in the world, that can be iMessage, WhatsApp, Viber if for whatever reason, you do have a choice of which messaging app you can use or you can convince the people you want to message to switch these are the five best texting apps to choose from. (Though, if I could rule the world using benevolent AIs, I'd make everyone use Signal"),
                         
                          ]
                          
                          ,

                        ),
                      )
                     ),
                   )
                 ],
               ),
              );
            },),
          ),
        ],
      ),
    );
  }
}

