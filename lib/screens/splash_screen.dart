import 'package:ai_assistant/screens/home_screen.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to AI Assistant",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 49, 132, 162))),
              SizedBox(
                height: size.height*0.04,
              ),
              CustomLoading(),
            ],
          )),
        ),
      ),
    );
  }
}
