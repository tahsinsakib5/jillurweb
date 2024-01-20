import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jillurrhman/adminpanel.dart/admicontrol.dart';


class Codepage extends StatefulWidget {
  Codepage({
    super.key,
  });

  @override
  State<Codepage> createState() => _CodepageState();
}

class _CodepageState extends State<Codepage> {
  final emailcontrilar = TextEditingController();

  final passworscontroler = TextEditingController();

   

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height:650,
          width:440,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              
                SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailcontrilar,
                 
                  decoration: InputDecoration(
                     hintText:"email",
                    border: OutlineInputBorder()
                    
                  ),
                ),
              ),
            
             
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passworscontroler,
                   decoration: InputDecoration(
                     hintText:"password",
                    border: OutlineInputBorder()
                    
                  ),
                ),
              ),
            
            SizedBox(
              height: 15,
            ),
          
          
                MaterialButton(onPressed: ()async{
                  try{
           await login();
          await Navigator.push(context,MaterialPageRoute(builder: (context) =>Adminpanel(),));
                  }catch(e){

                  };
        
                    
                },child: Container(
          height:50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color: Colors.blue
          ),
          child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
                ),),
          
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
              Text("you have "),
              
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontrilar.text, password: passworscontroler.text);
    } catch (e) {}
  }

  /// on App's user login

}