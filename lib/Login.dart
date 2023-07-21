import 'package:flutter/material.dart';
import 'package:heraassignment/ForgotPass.dart';
import 'package:heraassignment/Register.dart';
import 'package:heraassignment/widgets/bottom_nav.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                SizedBox(height: 30,),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: 40,),
                Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                color: Color(0xFF1098C2),
                ),),

                Text('Access Account'),
               SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Enter your Email Address',
                      border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.grey[100],
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        hintText: 'Enter your Password',

                        border: InputBorder.none
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  TextButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  }, child:Text('forgot password?',style: TextStyle(
                    color: Color(0xFF1098C2)
                  ),))
                ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1098C2),
                  ),
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));

                  },
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset('assets/Twitter.png',height: 40,width: 30,),
                    SizedBox(width: 10,),
                    Image.asset('assets/Crome.png',height: 40,width: 30,),
                    SizedBox(width: 10,),
                    Image.asset('assets/Facebook.png',height: 40,width: 30,),
                  ],
                ),
                SizedBox(height: 75,),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "I don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: ' Register',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1098C2)),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Image.asset('assets/elipseup.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
