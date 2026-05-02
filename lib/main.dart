import 'package:flutter/material.dart';
import 'package:stack_nav/details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page",style: TextStyle(fontSize: 25,color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          ),

        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.home,size: 300,color: Colors.blueAccent,),
              const SizedBox(height: 20,),
              Container(
            child:  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,fixedSize: Size(200, 50) ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen()));
          }, 
          child: Text("Go to Details",
          style: TextStyle(fontSize: 16,),),

          ),
         ),
         
         
          ],
            ),
            )

     
    );
  }
}