
import 'package:flutter/material.dart';
import 'package:jillurrhman/massage/massagetemplate.dart';
import 'package:jillurrhman/texanimation.dart';
import 'package:jillurrhman/thim.dart';

class Adminpanel extends StatelessWidget {
  const Adminpanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
          Expanded(
            flex:4,
            child: Container(
             decoration: BoxDecoration(
              color:Colors.blue,
             ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                 Expanded(
                   child: Container(
                        height: 650,
                        width: 400,
                        decoration: BoxDecoration(
                          color: kpriymarycolor,
                        ),
                        child: Column(
                          children: [
                            AppBar(
                              backgroundColor: Color.fromARGB(255, 252, 116, 162),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount:massage.length,
                                itemBuilder: (context, index) {
                                  return Template(
                                      massege: massage[index], chenge: value[index]);
                                },
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                 
                                },
                                child: Text("star chat")),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                suffix: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.send)),
                              ),
                            )
                          ],
                        ),
                      ),
                 ),
                 
                 Container(
                  
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}