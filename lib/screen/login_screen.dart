import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent, elevation: 0),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 500,
          margin:  EdgeInsets.all(20),
          padding:  EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Login Screen",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                  fontFamily: "Suwannaphum",
                ),
              ),
               SizedBox(height: 20),
              Text(
                "Sign in to ShopCraft",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontFamily: "Suwannaphum",
                ),
              ),
               SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                     SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                          onPressed:
                              () => setState(
                                () => passwordVisible = !passwordVisible,
                              ),
                        ),
                        hintText: "Enter your password",
                        label:  Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                     SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text("Account sign-in successfully"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                        );
                                      },
                                      child: Text("Close"),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Please fill all fields correctly",
                                ),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Suwannaphum",
                            color: Colors.white,
                          ),
                        ),
                      ),
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
