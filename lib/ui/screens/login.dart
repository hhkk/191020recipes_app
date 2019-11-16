import 'package:flutter/material.dart';

import 'package:recipes_app/ui/widgets/google_sign_in_button.dart'; // New code

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          //image: AssetImage("assets/images/bldg.jpeg"), // hbk
          //image: AssetImage("assets/images/bubbles2.png"), // hbk
          image: AssetImage("assets/images/bubbleboy.png"), // hbk
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      return Text(
        'UsToDo.com15', // HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK  HBKHBK
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    Text _buildText2() {
      return Text(
        'UsToDo.com16',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }


    print("hi mommyNOTBRK======================================== f");

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              _buildText2(),
              SizedBox(height: 50.0),
              Text(
                'UsToDo.com16TATA ',
                style: Theme.of(context).textTheme.headline,
                textAlign: TextAlign.center,
              ),
              // Passing function callback as constructor argument:
              GoogleSignInButton( // New code
               // onPressed: () =>
                 //   print("Button pressed2."), // New code
              ), // New code
            ],
          ),
        ),
      ),
    );
  }
}