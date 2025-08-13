import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent, elevation: 0),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 600,
          margin:  EdgeInsets.all(20),
          padding:  EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                    fontFamily: "Suwannaphum",
                  ),
                ),
                 SizedBox(height: 20),
                 Text(
                  "Join ShopCraft today",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontFamily: "Suwannaphum",
                  ),
                ),
                 SizedBox(height: 20),

                TextFormField(
                  controller: fullNameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your full name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Enter your full name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 SizedBox(height: 20),

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
                  obscureText: passwordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                    hintText: "Enter your password",
                    label:  Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                 SizedBox(height: 20),

                TextFormField(
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: confirmPasswordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    }
                    if (value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        confirmPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          confirmPasswordVisible = !confirmPasswordVisible;
                        });
                      },
                    ),
                    hintText: "Confirm your password",
                    label:  Text("Confirm Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Button
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
                              content: Text("Account created successfully"),
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
                            content: Text("Please fill all fields correctly"),
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
                    child:  Text(
                      "Create Account",
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
        ),
      ),
    );
  }
}
