import 'package:flutter/material.dart';

import 'package:recipes_app/ui/widgets/google_sign_in_button.dart'; // New code

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("bldg.jpeg"), // hbk
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      return Text(
        'UsToDo.com15',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              // Passing function callback as constructor argument:
              GoogleSignInButton( // New code
                onPressed: () => print("Button pressed."), // New code
              ), // New code
            ],
          ),
        ),
      ),
    );
  }
}