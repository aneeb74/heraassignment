import 'package:flutter/material.dart';

import 'Login.dart';
class AccessAcount extends StatelessWidget {
  const AccessAcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Image.asset('assets/elipsedown.png'),
            SizedBox(height: 50,),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: Image.asset('assets/logo.png'),
            ),
            SizedBox(height: 90,),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'Access account as a User?',
                          style: TextStyle(color: Color(0xFF1098C2)),
                        ),
                        TextSpan(
                          text: ' Click',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1098C2)),
                        ),
                      ],
                    ),
                  ),
                )

              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'Access account as a Admin?',
                          style: TextStyle(color: Color(0xFF1098C2)),
                        ),
                        TextSpan(
                          text: ' Click',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1098C2)),
                        ),
                      ],
                    ),
                  ),
                )

              ),
            ),


             Spacer(),
            Image.asset('assets/elipseup.png'),
          ],
        ),
      ),
    );
  }
}
