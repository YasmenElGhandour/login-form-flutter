
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_form/Pallete.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/logo.jpeg')),
              ),
            ),
            SizedBox(height: 32,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8.0),
               child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: IgnorePointer(
                        ignoring: true,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            label: Row(
                              children: [
                                Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset('assets/saudi_logo.jpeg')),
                                SizedBox(width: 4,),
                                Text('+966',style: TextStyle(color: Pallete.darkgray , fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Phone Number',
                            hintText: 'Phone Number'),
                      ),
                    ),
                   ),
                ],
            ),
             ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text('By creating an account you accept our' ,
                    style: TextStyle(fontWeight: FontWeight.bold , color: Pallete.darkgray),),
                  SizedBox(width: 4,),
                  Text('terms and conditions' ,
                    style: TextStyle(fontWeight: FontWeight.bold , color: Pallete.orange),),

                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(color: Pallete.orange, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    primary: Pallete.orange
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
              ,
            ),
          ],
        ),
      ),
    );
  }
}