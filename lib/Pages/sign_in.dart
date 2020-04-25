import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 55.0, 0.0, 0.0),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[Text("Hello",style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),)],
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Friends',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
                            Text('.',style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold,color: Colors.green),),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Container(
                 height:70, child:TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),),
                SizedBox(
                  height: 10.0,
                ),
               Container(
                 height:70, child:TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: ' Montserrat',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Continue With Google',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: ImageIcon(
                                AssetImage('assets/icons/facebook_icon.png'))),
                        Center(
                          child: Text(
                            'Continue With Facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: ImageIcon(
                                AssetImage('assets/icons/facebook_icon.png'))),
                        Center(
                          child: Text(
                            'Continue With Phone Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
