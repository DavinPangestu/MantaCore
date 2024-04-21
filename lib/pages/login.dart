import 'package:flutter/material.dart';
import 'package:tixket/pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Tixket",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300
                ),
                child: TextField(
                  style: const TextStyle(
                    // color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Username",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: const Color(0xff383838),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    prefixIcon: const Icon(Icons.person),
                    prefixIconColor: Colors.white
                  ),
                  cursorColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: const Color(0xff383838),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: Colors.white
                  ),
                  cursorColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: const Color(0xff383838),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: Colors.white
                  ),
                  cursorColor: Colors.white,
                ),
              ),
              Text(
                "Or Sign Up With", 
                style: TextStyle(
                  color: Colors.white
                ),
              ),
        
              ElevatedButton(
                onPressed: (){},
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 0),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SignUpPage())
                      );
                    },
                    child: const Text("Login"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue
                    ),
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