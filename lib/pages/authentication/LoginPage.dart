import "package:blogg_app/Pages/HomePage.dart";
import "package:blogg_app/components/custom_textfeild.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //logo

              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.black,
              ),

              const SizedBox(height: 50),

              //welcome back
              Text(
                'Blogged',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),

              const SizedBox(height: 50),

              //username
              MyTextFeild(
                conttroller: usernameController,
                hintText: "Username",
                secureText: false,
              ),
              const SizedBox(height: 15),

              //passwowrd
              MyTextFeild(
                conttroller: passwordCOntroller,
                hintText: "Password",
                secureText: true,
              ),

              const SizedBox(height: 25),

              //login button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //login button
                  ElevatedButton(
                    child: const Text("Log In",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                    ),
                    onPressed: () {},
                  ),

                  const SizedBox(width: 20), // spacing between the buttons

                  //register button
                  ElevatedButton(
                    child: const Text("Register",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 35,),

              // or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text("Or continue with"),
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ))
                ],
              ),

              const SizedBox(height: 25),

              //google signin button
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 12),
                    child: Image.asset('images/google.png', height: 100,),
                  )
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
