
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jillurrhman/massage/massagetemplate.dart';

import 'package:jillurrhman/thim.dart';

class Adminpanel extends StatefulWidget {
 final String alldoc;
   Adminpanel({super.key, required this.alldoc});

  

  @override
  State<Adminpanel> createState() => _AdminpanelState();
}

var controlar = TextEditingController();

class _AdminpanelState extends State<Adminpanel> {
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
                  
                    
                    
                         child:  FutureBuilder(
                                     future:getChatList(widget.alldoc),
                                   
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
                   
                            bool usermassage =true;
                        if(chat["uid"]==FirebaseAuth.instance.currentUser!.uid){
                          
                            usermassage=false;
                         
                        }
                       return Template(
                           massege:chat["chat"], chenge:usermassage);
                     },
                   ),
                                         ),
                                        
                                         TextField(
                   controller:controlar,
                   
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50),
                     ),
                     suffix: IconButton(
                         onPressed: ()async{
                         
                      setState(() {
                        second_user_chat(widget.alldoc);
                      });
                     controlar.clear();
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
                     
                   
               
                 
                 Container(
                  height: 200,
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }

   Future<List<Map<String, dynamic>>> getChatList(String docid) async {
    List<Map<String, dynamic>> allChatList = [];

    final collection = FirebaseFirestore.instance.collection('all_chat');
    final docRef = collection.doc(docid);

    await docRef.get().then((documentSnapshot) {
      if (documentSnapshot.exists) {
        final data = documentSnapshot.data();
        if (data != null && data.containsKey('chat_list')) {
          // Field exists, get its value
          final chatList = data['chat_list'] as List<dynamic>;

          print('Field Found ${chatList.length}');

          for (var chat in chatList) {
            allChatList.add(chat as Map<String, dynamic>);
          }

          print('All Chat 1 : ${allChatList}');

          // ... process chatList
        } else {
          // Field doesn't exist, create and set it to an empty array
          docRef.update({'chat_list': []}).then((_) {
            // Access the newly created field (empty array)
            // final chatList = documentSnapshot.get('chat_list') as List<dynamic>;
            // ... process chatList
          });
        }
      } else {
        // Document not found
      }
    });

    print('All Chat 2 : ${allChatList.length}');

    return allChatList;
  }

Future second_user_chat (String doc) async {
     


      var docRef = FirebaseFirestore.instance.collection("all_chat").doc(doc);
       
     

                   
     Map<String, dynamic> data = {
      "name":DateTime.now(),
      "chat":controlar.text,
      "uid":"ZV94oq2qvDdnnBti6bqVtuQlqCm1", 
     };

        await docRef.update({
        'chat_list': FieldValue.arrayUnion([data]),
    
 });
     



}

}