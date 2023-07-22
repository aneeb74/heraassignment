import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column
          (
          children: [
            const SizedBox(height: 28,),

            Image.asset("assets/elipsedown.png"),
            const SizedBox(height: 20,),
            const Divider(color: Colors.grey,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context)
;                          },
                          child: const Icon(Icons.clear,color: Color(0xFF1098C2),)),
                      const SizedBox(width: 5,),

                      const SizedBox(
                        width: 100.27,
                        child: Text(
                          'Create Post',
                          style: TextStyle(
                            color: Color(0xFF1097C2),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    width: 49,
                    height: 21,
                    child: Text(
                      'POST',
                      style: TextStyle(
                        color: Color(0xB5596468),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(color: Colors.grey,),
           const SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 50,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       image: AssetImage("assets/hassan.jpg"),
                       fit: BoxFit.fill,
                     ),

                   ),
                 ),
                 const SizedBox(width: 10,),
                 const Text(
                   'Mudassir Afridi',
                   style: TextStyle(
                     color: Color(0xFF1097C2),
                     fontSize: 12,
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.w700,
                   ),
                 )
,

               ],
             ),
           ),
            const SizedBox(height: 20,),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "What do you want to write here?",
                  fillColor: Colors.grey.withOpacity(0.4),filled: true,
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none)
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 48,
              height: 4,
              decoration: ShapeDecoration(
                color: const Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
            ),
            const SizedBox(height: 8,),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 97.16,
                    child: Text(
                      'Add  Price',
                      style: TextStyle(
                        color: Color(0xFF1097C2),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                  ,
                  SizedBox(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 9,horizontal: 8),
                            hintText: "Type Here..",
                            fillColor: Colors.grey.withOpacity(0.4),filled: true,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 97.16,
                    child: Text(
                      'Add  Phone',
                      style: TextStyle(
                        color: Color(0xFF1097C2),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                  ,
                  SizedBox(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 9,horizontal: 8),
                            hintText: "Type Here..",
                            fillColor: Colors.grey.withOpacity(0.4),filled: true,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
,
        const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 97.16,
                    child: Text(
                      'Add  Location',
                      style: TextStyle(
                        color: Color(0xFF1097C2),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                  ,
                  SizedBox(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 9,horizontal: 8),
                            hintText: "Add Location here",
                            fillColor: Colors.grey.withOpacity(0.4),filled: true,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [

                  const SizedBox(
                    width: 130,
                    child: Text(
                      'Add Photo/videos',
                      style: TextStyle(
                        color: Color(0xFF1097C2),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pickImage(ImageSource.camera);
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0x66D9D9D9),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Center(child: Icon(Icons.camera_alt,color: Color(0xFF1098C2),),),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pickImage(ImageSource.gallery);
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0x66D9D9D9),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Center(child: Icon(Icons.browse_gallery,color: Color(0xFF1098C2),),),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 27,),
            Image.asset("assets/elipseup.png")

          ],
        ),
      ),
    );
  }
}

