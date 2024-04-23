import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tixket/components/input_field.dart';
import 'package:tixket/pages/signup.dart';
import 'package:tixket/provider/setting_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isShowPassword = false;
  bool isShowConfirmPassword = false;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.dark_mode),
                  label: Text("Switch to Dark Mode")
                ),
                const Text(
                  "Tixket",
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 50),
                InputField(
                  controller: usernameController,
                  hintText: "Username",
                  icon: Icons.person,
                  validator: (value) => SettingsProvider().validator(value, "Username is required"),
                  
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isShowPassword ^= true;
                        });
                      },
                      icon: Icon(isShowPassword ? Icons.visibility : Icons.visibility_off),
                    )
                  ),
                  obscureText: !isShowPassword,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: confirmPasswordController,
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isShowConfirmPassword ^= true;
                        });
                      },
                      icon: Icon(isShowConfirmPassword ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  obscureText: !isShowConfirmPassword,
                ),
                SizedBox(height: 80),
                Text("Or Sign Up With"),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: Image.asset(
                        "assets/facebook.png",
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 30),
                    TextButton(
                      onPressed: (){}, 
                      child: Image.asset(
                        "assets/google.png",
                        height: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()){

                    } else {
                      
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 0),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text("Sign Up"),
                ),
                Row(
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const SignUpPage())
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue
                      ),
                      child: const Text("Login"),
                    )
                  ],
                )
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}