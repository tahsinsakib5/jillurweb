

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class chat_list {

   static Future<List<Map<String, dynamic>>> getChatList(String chatID) async {
    List<Map<String, dynamic>> allChatList = [];

    final collection = FirebaseFirestore.instance.collection('all_chat');
    final docRef = collection.doc(chatID);

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

          print('All Chat 1 : ${allChatList.length}');

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

      
  


    

}