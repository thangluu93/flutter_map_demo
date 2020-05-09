import 'package:flutter/material.dart';
import 'package:map_zenly/models/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

  void _signOut() async {
      try {
        await this.auth.signOut();
        // Bug is here !!!
        onSignOut.call();
      } catch (e) {
        print(e);
      }
    }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            new FlatButton(
                onPressed: _signOut,
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white)))
          ],
        ),
        body: new Center(
          child: new Text(
            'Welcome',
            style: new TextStyle(fontSize: 32.0),
          ),
        ));
  }
}
