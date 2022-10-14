import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/SignUp.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController passwred = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.android,
                size: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome In Board",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome Back, you've been missed !",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: 'Email', border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: passwred,
                      // obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password', border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () async {
                    try {
                      var authenticationObject = FirebaseAuth.instance;
                      UserCredential myUser = await authenticationObject
                          .createUserWithEmailAndPassword(
                              email: email.text, password: passwred.text);

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUp();
                        },
                      ));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Sorry this Email Already uesed by Someone")));
                    }
                  },
                  child: Text("Log In")),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Register Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
      //  Center(
      //   child: Column(children: [
      //     Text("Welcome to App"),
      //     Divider(
      //       height: 20,
      //     ),
      //     Text("email"),
      //     TextField(controller: email),
      //     Text("password"),
      //     TextField(
      //       controller: passwred,
      //     ),

      //     Divider(
      //       height: 20,
      //     ),

      // ),
    );
  }
}
