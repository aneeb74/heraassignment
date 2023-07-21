import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  File? _image;
  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
      });

      // ignore: duplicate_ignore
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);}
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      key: _scaffoldKey,
      drawer:  Drawer(
      backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),

            Padding(
              padding:  EdgeInsets.only(left:
              20),
              child: Row(
                children: [Icon(Icons.lock,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Color(0xFF1097C2),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
Divider(color: Colors.grey,),
SizedBox(height: 20,)
,
            Padding(
              padding:  EdgeInsets.only(left:
              20),
              child: Row(
                children: [Icon(Icons.logout,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: Color(0xFF1097C2),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey,),

          ],
        ),
    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 414,
              height: 96,
              decoration: BoxDecoration(color: Color(0xFF1097C2)),

              child:

              Padding(
                padding:  EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(

                        onTap: (){
                          setState(() {
                            _scaffoldKey.currentState?.openDrawer();
                          });
                        },
                        child: Icon(Icons.list,color: Colors.white,size: 30,)),
                    SizedBox(width: 10,),
                    Text(
                      'Setting',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
        SizedBox(height: 30,),
        Align(
          alignment: Alignment.center,
          child: Container(

            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                     ),
                  child: CircleAvatar(
                      backgroundColor: Colors.cyanAccent,
                      radius: 60,
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: _image == null
                                  ? const DecorationImage(
                                  image: AssetImage(
                                      "assets/hassan.jpg"),fit: BoxFit.cover)
                                  : DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    _image!,
                                  )))),
                  )),

                Positioned(
                  bottom: 0,right: 0,

                  child: GestureDetector(
                    onTap: (){

                      setState(() {
                        _pickImage(ImageSource.gallery);
                      });
                    },
                    child: Container(
                      width: 35.60,
                      height: 35.60,
                      decoration: BoxDecoration(
                        color: Color(0xFF1097C2),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.camera,color: Colors.white,),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
            SizedBox(height: 5,),


            Align(

              alignment: Alignment.center,
              child: Text(
                '        Maaz Afridi',
                style: TextStyle(
                  color: Color(0xFF1097C2),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Icon(Icons.edit,color: Colors.grey,),
                SizedBox(width: 5,),
                Text(
                  'Change Profile',

                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6000000238418579),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,

                  ),
                )

              ],
            ),
            SizedBox(height: 40,),
            Divider(color: Colors.grey,thickness: 8,),
            Container(
              height: 335,
              
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    horizontalTitleGap: -4,
                    minLeadingWidth: 0,contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading:CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/hassan.jpg")) ,
                    title: Text("Maaz Afridi",style: TextStyle(color:Color(0xFF1098C2) ),),
                    subtitle:Row(
                      children: [
                        Text("KDA,"),
                        Text("Kohat"),
                        Icon(Icons.location_on_outlined)

                      ],
                    ) ,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Hi ,This is a house and i want to buy it If some one are interested then contact with and this place is located  by #Kohat KDA . My Contact No. 0335-3243044 ",textAlign:TextAlign.start,style: TextStyle(color: Color(0xFF1098C2)),),
                  ),
                  Image.asset("assets/greenhouse.png",fit: BoxFit.cover,),
                 
                ],
              ),




            ),
            SizedBox(height: 30,),
            Image.asset("assets/elipseup.png")



          ],
        ),
      ),
    );
  }
}
