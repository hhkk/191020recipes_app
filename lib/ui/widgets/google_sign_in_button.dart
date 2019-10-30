import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  GoogleSignInButton({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Image _buildLogo() {
      //return Image.asset( "bldg.jpeg", // hbk yes
      //return Image.asset( "g-logo.png", // hbk yes
      return Image.asset( "assets/images/googlegx.png", // hbk
      // no return Image.asset( "photoc-1505935428862-770b6f24f629_z.jpg", // hbk
        height: 18.0,
        width: 18.0,
      );
    }

    Opacity _buildText() {
      return Opacity(
        opacity: 0.54,
        child: Text(
          "Sign in with Google",
          style: TextStyle(
            fontFamily: 'Roboto-Medium',
            color: Colors.black,
          ),
        ),
      );
    }

    return MaterialButton(
      height: 40.0,
      onPressed: () =>
      // We replace the current page.
      // After navigating to the replacement, it's not possible
      // to go back to the previous screen:
      //print('The value of the input is: $value');
      print('hbkpressed ====================================='),
      // Navigator.of(context).pushReplacementNamed('/'),
      //onPressed: this.onPressed,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildLogo(),
          SizedBox(width: 12.0),
          _buildText(),
        ],
      ),
    );
  }
} 