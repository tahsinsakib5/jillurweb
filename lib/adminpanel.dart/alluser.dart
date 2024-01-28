import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jillurrhman/adminpanel.dart/admicontrol.dart';
import 'package:jillurrhman/container.dart';

class AllUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Users'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('all_chat').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Extract documents from snapshot
            List<DocumentSnapshot> documents = snapshot.data!.docs;

            // Display the data
            return Row(
              children: [
                Expanded(
                  flex:1,
                  child: ListView.builder(
                    itemCount: documents.length,
                    itemBuilder: (context, index) {
                  
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Adminpanel(alldoc:documents[index].id),));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child:Row(
                                children: [
                                  Icon(Icons.person),
                            
                                  Text("user ${index+1}")
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            
                Expanded(
                  flex:4,
                  child: Container(
                   color:Colors.blue,
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }

 
   
}