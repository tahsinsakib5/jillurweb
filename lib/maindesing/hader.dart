
import 'package:flutter/material.dart';
import 'package:jillurrhman/thim.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: kpriymarycolor,
      child: Row(
        children: [
          Expanded(
            flex:2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/favicon.png",
                  height: 60,
                ),
                Text("Finix",style:TextStyle(fontSize:30,fontWeight: FontWeight.w700),)
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Home",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Aboute",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Pages",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Service",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Product",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Profile",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                Text("Contact",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),)
              ],
            ),
          ),
          Expanded(
            flex:4,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 2,
                  color: Colors.grey,
                ),

                SizedBox(
                  width:17,
                ),
                Icon(Icons.phone,color: Colors.pink,),
                 SizedBox(
                  width:14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("call now"),
                    Text("+01630888045",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700)),
                  ],
                ),

                  SizedBox(
                  width:19,
                ),
                MaterialButton(onPressed: () {
                  
                },child:Container(
                  height:40,
                  width:150,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink,
                  ),
                  child: Center(child: Text("Applay now",style: TextStyle(color: Colors.white),)),
                ),
                    
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
