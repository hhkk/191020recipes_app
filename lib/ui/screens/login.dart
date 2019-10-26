import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // ...

  @override
  Widget build(BuildContext context) {
    // New private method which includes the background image:
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("bldg.jpeg"),
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      return Text(
        'UsToDo.com',
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      // We do not use backgroundColor property anymore.
      // New Container widget wraps our Center widget:
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              MaterialButton(
                color: Colors.white,
                child: Text("Sign in to UsToDo.com version 12 with Google"),
                onPressed: () => print("Button pressed."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}