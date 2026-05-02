import 'package:flutter/material.dart';
import 'package:stack_nav/main.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Details Page",style: TextStyle(fontSize: 25,color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          ),


      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const  Icon(Icons.article_outlined,size: 300,color: Colors.blueAccent,),
              const SizedBox(height: 20,),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,fixedSize: Size(200, 50) ),
                onPressed: (){
                  Navigator.of(context).pop();
              }, 
              child: Text("Back",
              style: TextStyle(fontSize: 16,),),

            ),
            const SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,fixedSize: Size(200, 50) ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
              }, 
              child: Text("Go to Home",
              style: TextStyle(fontSize: 16,),),

            ),
         ],),
          
        ],), ),
    );
  }
}