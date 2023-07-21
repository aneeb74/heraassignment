import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                Row(
                  children: [
                   IconButton(onPressed: () {
                     Navigator.pop(context);
                   }, icon:  Icon(Icons.arrow_back,color: Color(0xFF1098C2),),)
                  ],
                ),
                SizedBox(height: 30,),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: 50,),
                Text('Forgott Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                  color: Color(0xFF1098C2),
                ),),
                SizedBox(height: 10,),
                Text('Enter your email to receive the mail'),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextField(
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(Icons.mail_outline),
                        hintText: 'Enter your Email Address',
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "if you have not received the email, check spam or",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Click ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          TextSpan(
                            text: "here to send code again",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )

                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1098C2),
                  ),
                  child: Text('send',),
                  onPressed: () {

                  },
                ),


                SizedBox(height: 159,),
                Image.asset('assets/elipseup.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
