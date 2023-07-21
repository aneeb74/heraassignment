import 'package:flutter/material.dart';


class ViewPost extends StatefulWidget {
  const ViewPost({Key? key}) : super(key: key);

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28,),
            Image.asset("assets/elipsedown.png"),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [

                  GestureDetector(
                      onTap: (){

                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(width: 10,),
                  const Text("View Post",style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff1098C2)),)
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Divider(color: Colors.black.withOpacity(0.4),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(

                children: [
                  Container(
              height: 50,
                  width: 50,
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(image: AssetImage("assets/aneeb.jpg",),fit: BoxFit.cover,)
           ),
                  ),
                  const SizedBox(width: 10,),
                  const Text(
                    'Maaz Afridi',
                    style: const TextStyle(
                      color: const Color(0xFF1097C2),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),

         Container(
           margin: const EdgeInsets.symmetric(horizontal: 13),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               const SizedBox(height: 10,),
               Container(
                 width: 393.22,
                 height: 239,
                 decoration: const BoxDecoration(
                   image: const DecorationImage(
                     image: AssetImage("assets/greenhouse.png",), fit: BoxFit.fill,

                   ),
                 ),
               ),
               const SizedBox(height: 10,),
               const Text(
                 'Detail',
                 style: const TextStyle(
                   color: Colors.black,
                   fontSize: 16,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w600,
                 ),
               ),
           const SizedBox(height: 20,)
               ,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [const Text(
                   'Price',
                   style: const TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                 ),const Text(
                   '32,00000',
                   style: const TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w700,
                   ),
                 ),



                 ],
               ),
               const Divider(color: Colors.grey,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [const Text(
                   'Location',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                 ),const Text(
                   '3D Road, Peshawar',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w700,
                   ),
                 ),



                 ],
               ),
               const Divider(color: Colors.grey,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [const Text(
                   'Size',
                   style: const TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                 ),const Text(
                   '22 Marla',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w700,
                   ),
                 ),



                 ],
               ),
               const Divider(color: Colors.grey,),Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [const Text(
                   'Phone',
                   style: const TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400,
                   ),
                 ),const Text(
                   '0335-3243',
                   style: const TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 ],
               ),
               const Divider(color: Colors.grey,),
               const SizedBox(height: 10,),
               Align(alignment: Alignment.bottomRight, child: Container(
                 width: 45,
                 height: 45,
                 clipBehavior: Clip.antiAlias,
                 decoration: const BoxDecoration(
                     color: const Color(0xff32AD30),
                     shape: BoxShape.circle),
                 child: const Center(child: const Icon(Icons.whatsapp,color: Colors.white,size: 30,),),
               ),
               ),
                const SizedBox(
                 width: 97,
                 child:   Text(
                   'Description',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w600,
                   ),
                 ),
               )
               ,
               Container(
                 width: 394,
                 height: 100,
                 decoration: const BoxDecoration(color: const Color(0x66D9D9D9)),
               )

             ],
           ),
         ),
            const SizedBox(height: 20,),
            Image.asset("assets/Ellipse 39.png",width: double.infinity,)
          ],
        ),
      ),
    );
  }
}
