import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column
          (
          children: [
            SizedBox(height: 28,),
            
            Image.asset("assets/elipsedown.png"),
            SizedBox(height: 20,),
            Divider(color: Colors.grey,),

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
                          child: Icon(Icons.clear,color: Color(0xFF1098C2),)),
                      SizedBox(width: 5,),

                      SizedBox(
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
                  SizedBox(
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
            Divider(color: Colors.grey,),
           SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       image: AssetImage("assets/hassan.jpg"),
                       fit: BoxFit.fill,
                     ),

                   ),
                 ),
                 SizedBox(width: 10,),
                 Text(
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
            SizedBox(height: 20,),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "What do you want to write here?",
                  fillColor: Colors.grey.withOpacity(0.4),filled: true,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 48,
              height: 4,
              decoration: ShapeDecoration(
                color: Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
            ),
            SizedBox(height: 8,),
            Divider(color: Colors.grey,),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
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
                  Container(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 8),
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
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
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
                  Container(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 8),
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
        SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
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
                  Container(
                    width: 222,
                    // height: 40,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 8),
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
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [

                  SizedBox(
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

                  Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x66D9D9D9),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Icon(Icons.camera_alt,color: Color(0xFF1098C2),),),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0x66D9D9D9),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Icon(Icons.browse_gallery,color: Color(0xFF1098C2),),),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Divider(color: Colors.grey,),
            SizedBox(height: 27,),
            Image.asset("assets/elipseup.png")

          ],
        ),
      ),
    );
  }
}
