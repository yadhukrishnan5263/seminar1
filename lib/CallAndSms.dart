import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'callScreen.dart';

void main(){
  runApp(MaterialApp(home: myhome(),));
}

 class myhome extends StatelessWidget{
   final Uri launchUri = Uri(
     scheme: 'sms',
     path: '1236458',
   );
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: MaterialButton(
             textColor: Colors.white,
             height: 40,
             minWidth: 100,
             child: Text("call/sms"),
             color: Colors.black,
             onPressed: () async{
               if(await canLaunch(launchUri.toString())){
                 await launch(launchUri.toString());
               }else{
                 print("call not supported");
               }
             },

           ),
         ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
      child: MaterialButton(
      textColor: Colors.white,
      height: 40,
      minWidth: 100,
      child: Text("call/sms"),
      color: Colors.black,
      onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}

      ),
      ),
    )

       ],
     ),
   );
  }
}