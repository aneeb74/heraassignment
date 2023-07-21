import 'package:flutter/material.dart';
import 'package:heraassignment/Model.dart';
import 'package:heraassignment/view_post.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homemodel=HomeModel.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Image.asset('assets/elipsedown.png'),
           Row(
             children: [
               Text('E',style: TextStyle(fontSize: 60,color: Color(0xFF1098C2)),),

               Text('Property',style: TextStyle(color: Color(0xFF1098C2),fontWeight: FontWeight.bold),
               ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Colors.grey[300],
                       hintText: 'Search here',suffixIcon: Icon(Icons.search,color: Color(0xFF1098C2),),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                     ),

                   ),
                 ),
               )
             ],
           ),
          ListView.separated(

            separatorBuilder:(context,i){
              return SizedBox(height: 30,);
            },
              itemCount: homemodel.length,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
            return GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPost()));
              },
              child:


              Column(
                children: [
                  ListTile(
                    leading:CircleAvatar(radius: 40,backgroundImage: AssetImage(homemodel[index].image)) ,
                    title: Text(homemodel[index].name,style: TextStyle(color:Color(0xFF1098C2) ),),
                    subtitle:Row(
                      children: [
                        Text(homemodel[index].location1),
                        Text(homemodel[index].location2),
                        Icon(Icons.location_on_outlined)

                      ],
                    ) ,
                  ),
                  Text(homemodel[index].text,textAlign:TextAlign.start,style: TextStyle(color: Color(0xFF1098C2)),),
                  Image.asset(homemodel[index].image2,fit: BoxFit.cover,),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,

                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 105,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(Icons.shopping_cart,size: 14,color: Color(0xFF1098C2),),
                             VerticalDivider(color: Colors.grey,
                             thickness: 1.3,),
                              Text(homemodel[index].amount,style: TextStyle(fontSize: 10),)
                            ],),
                          ),
                          Container(
                            height: 30,
                            width: 105,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.phone,size: 15,color: Color(0xFF1098C2),),
                                VerticalDivider(color: Colors.grey,
                                  thickness: 1.3,),
                                Text(homemodel[index].phone,softWrap: true,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10),)
                              ],),
                          ), Container(
                            height: 30,
                            width: 105,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined,size: 20,color: Color(0xFF1098C2),),
                                VerticalDivider(color: Colors.grey,
                                  thickness: 1.3,),
                                Text(homemodel[index].location1,style: TextStyle(fontSize: 10),),
                                Text(homemodel[index].location2,style: TextStyle(fontSize: 10),),
                              ],),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),





            );
          })
          ],
        ),
      ),
    );
  }
}
