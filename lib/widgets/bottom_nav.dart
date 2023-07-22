
import 'package:flutter/material.dart';
import 'package:heraassignment/ForgotPass.dart';
import 'package:heraassignment/HomePage.dart';

import 'package:heraassignment/update_profile.dart';

import '../create_post.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var screen=[
   const HomePage(),
    const ForgotPassword(),
    const UpdateProfile()
    // AlbumScreen()
     // CreatePost()



  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
         height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFF1098C2)

        ),
        child: Container(
          height: 60,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              BottomNavigationBar(
                currentIndex: currentIndex,

                backgroundColor: const Color(0xFF1098C2)
              .withOpacity(0.04),
                onTap: (val){
                  setState(() {
                    currentIndex=val;
                  });
                },

                items: [

                  const BottomNavigationBarItem(icon: Icon(Icons.home,),label: ""),
                  const BottomNavigationBarItem(icon: Icon(Icons.abc),label: ""),
                  BottomNavigationBarItem(icon:Container(
                    height: 30,
                    width: 30,
                    decoration:  const BoxDecoration(shape: BoxShape.circle,color: Colors.greenAccent,image: DecorationImage(image: AssetImage("assets/aneeb.jpg"))),
                  ),label: ""),
                ],
              ),

             Positioned(
                 left: 0,
                 right: 0,
                 bottom: 20,
                 child:  GestureDetector(

                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreatePost()));
                   },
                   child: Container(
               height: 60,
               width: 60,
               decoration: BoxDecoration
                   (
                     shape: BoxShape.circle,
                     color: const Color(0xFF1098C2),
                   border: Border.all(width: 7,color: Colors.white)
               ),
                     child: const Center(child: Icon(Icons.add,color: Colors.white,),),
             ),
                 ))
            ],
          ),
        ),
      ),
      body:screen[currentIndex],
    );
  }
}
