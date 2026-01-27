import 'package:clone_home_twitter/widgets/custom_button.widget.dart';
import 'package:clone_home_twitter/widgets/social_button.widget.dart';
import 'package:clone_home_twitter/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';

class HomeTwitterPage extends StatelessWidget {
  const HomeTwitterPage({super.key});
  //SafeArea usado para definir um local seguro para inciar a coluna neste caso. Para nao obstruir
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/twitter.png", width: 30, height: 30),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "See what's happening in the world right now",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SocialButton(
                pathImage: "assets/images/google.png",
                text: "Continue with Google",
              ),
              SizedBox(height: 15),
              const SocialButton(
                pathImage: "assets/images/apple.png",
                text: "Continue with Apple",
              ),
              SizedBox(height: 15),
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or"),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              SizedBox(height: 5),
              CustomButton(text: "Create Account"),
              SizedBox(height: 30),
              TermsAndPrivacy(),
              SizedBox(height: 60),
              RichText(
                text: TextSpan(
                  text: "Have an account already? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
