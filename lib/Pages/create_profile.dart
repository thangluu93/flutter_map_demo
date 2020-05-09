import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateProfile();
  }
}

class _CreateProfile extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('Create Profile'),
          )
        ],
      ),
    );
  }
}
