import 'package:flutter/material.dart';
import 'package:heraassignment/Login.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Image.asset('assets/elipsedown.png'),
                SizedBox(height: 20,),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: 20,),
                Text('Register',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                  color: Color(0xFF1098C2),
                ),),

                Text('Create an Account'),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Full Name',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        hintText: 'Password',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.lock_clock_outlined),
                        hintText: 'Confirm Password',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'phone',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.flag),
                        hintText: 'Country',
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.home),
                        hintText: 'City',
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 20,),



                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1098C2),
                  ),
                  child: Text('Register'),
                  onPressed: () {

                  },
                ),
                SizedBox(height: 28,),

                GestureDetector(
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
                          text: "I already have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: ' Login',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1098C2)),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Image.asset('assets/elipseup.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
