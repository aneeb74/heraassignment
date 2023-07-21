import 'package:flutter/material.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 28,),

        Image.asset("assets/elipsedown.png"),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.clear),
                  SizedBox(width: 5,),

                  SizedBox(
                    width: 100.27,
                    child: Text(
                      'Album',
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
            Icon(Icons.search),

            ],
          ),
        ),
        SizedBox(height: 10,),
        Divider(color: Colors.grey,),
        SizedBox(height: 10,),
       Container(

         margin: EdgeInsets.symmetric(horizontal: 15),
         child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'RECENT IMAGES',
             style: TextStyle(
               color: Color(0xFF1097C2),
               fontSize: 12,
               fontFamily: 'Poppins',
               fontWeight: FontWeight.w400,
             ),
           ),
           SizedBox(height: 10,),
           SingleChildScrollView(
                     clipBehavior: Clip.none,
                     scrollDirection: Axis.horizontal,
                     child: Row(

                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 115,
                            width: 105,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Container(
                                      width: 50,
                                      height: 55.83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                          image: AssetImage("assets/greenhouse.png",),
                                          fit: BoxFit.cover,
                                        ),
                                        ),
                                      ),

                         Container(
                         width: 50,
                         height: 55.83,
                         decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                       image: DecorationImage(
                          image: AssetImage("assets/greenhouse.png"),
                         fit: BoxFit.cover,
                     ),
                  ),
                ),

                      ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Container(
                                      width: 50,
                                      height: 55.83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                          image: AssetImage("assets/greenhouse.png",),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      width: 50,
                                      height: 55.83,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                          image: AssetImage("assets/greenhouse.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                  ],
                                )


                              ],
                            ),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            'All Items',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '600',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 115,
                              height:115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/greenhouse.png",),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 115,
                              height:115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  image: AssetImage("assets/greenhouse.png",),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'Videos',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '50',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),



                      ],
),
                   ),
           SizedBox(height: 30,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 width: 115,
                 height:115,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(7),
                   image: DecorationImage(
                     image: AssetImage("assets/greenhouse.png",),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
               SizedBox(height: 6,),
               Text(
                 'ScreenShot',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 12,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w600,
                 ),
               ),
               Text(
                 '150',
                 style: TextStyle(
                   color: Colors.black.withOpacity(0.5),
                   fontSize: 12,
                   fontFamily: 'Poppins',
                   fontWeight: FontWeight.w300,
                 ),
               )
             ],
           ),
           SizedBox(height: 30,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             clipBehavior: Clip.none,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
               child: Row(

               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width: 115,
                       height:115,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         image: DecorationImage(
                           image: AssetImage("assets/greenhouse.png",),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     SizedBox(height: 6,),
                     Text(
                       'Facebook',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     Text(
                       '50',
                       style: TextStyle(
                         color: Colors.black.withOpacity(0.5),
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w300,
                       ),
                     )
                   ],
                 ),
                 SizedBox(width: 10,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width: 115,
                       height:115,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         image: DecorationImage(
                           image: AssetImage("assets/greenhouse.png",),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     SizedBox(height: 6,),
                     Text(
                       'Instagram',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     Text(
                       '50',
                       style: TextStyle(
                         color: Colors.black.withOpacity(0.5),
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w300,
                       ),
                     )
                   ],
                 ),
                 SizedBox(width: 10,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width: 115,
                       height:115,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         image: DecorationImage(
                           image: AssetImage("assets/greenhouse.png",),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     SizedBox(height: 6,),
                     Text(
                       'Download',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     Text(
                       '50',
                       style: TextStyle(
                         color: Colors.black.withOpacity(0.5),
                         fontSize: 12,
                         fontFamily: 'Poppins',
                         fontWeight: FontWeight.w300,
                       ),
                     )
                   ],
                 ),



               ],
           ),
             ),)




         ],
       ),)
      ],
    ),);
  }
}
