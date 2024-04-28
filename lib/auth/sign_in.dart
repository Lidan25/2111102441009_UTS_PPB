import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/background.png')
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to Continue'),
                  Text('Vegi', 
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(3,3),
                      )
                    ]
                  ),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.apple,
                      text: "Sign up with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                        Buttons.google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                  ],
                ),   
                Column(
                  children: [
                    Text("By Signing in you are agreeing to our",
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    Text("Terms and Privacy Policy",
                      style: TextStyle(color: Colors.grey[800])),
                  ],
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}