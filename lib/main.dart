import 'package:flutter/material.dart';
import 'package:heraassignment/HomePage.dart';
import 'package:heraassignment/widgets/bottom_nav.dart';

import 'Acessaccount.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/elipsedown.png'),
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/logo.png'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1098C2),
                      ),
                      child: Text('Get Started'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AccessAcount()),
                       //AccessAcount
                        );

                      },
                    ),

                    Image.asset('assets/elipseup.png'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
