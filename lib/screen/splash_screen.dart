import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sprints/screen/login_screen.dart';
import 'package:sprints/screen/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isInitDesign = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isInitDesign = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text(
          "ShopCraft",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Suwannaphum",
          ),
        ).tr(),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                tr("welcome_message"),
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Suwannaphum",
                ),
                speed: Duration(milliseconds: 600),
              ),
            ],
            totalRepeatCount: 1,
            pause: Duration(milliseconds: 500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: isInitDesign ? 150 : 200,
                height: isInitDesign ? 150 : 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "asset/image1.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 10),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: isInitDesign ? 150 : 200,
                height: isInitDesign ? 150 : 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=300&h=200&fit=crop",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: isInitDesign ? 0.0 : 1.0,
                duration: Duration(milliseconds: 800),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                  child: Text(
                    tr('sign_up'),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Suwannaphum",
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              AnimatedOpacity(
                opacity: isInitDesign ? 0.0 : 1.0,
                duration: Duration(milliseconds: 800),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        ('sign_in'),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Suwannaphum",
                          color: Colors.black,
                        ),
                        speed: Duration(milliseconds: 600),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: Duration(milliseconds: 100),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
