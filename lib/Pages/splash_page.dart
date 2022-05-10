import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 700),(){
      Get.toNamed('homePage');
    });
    return Scaffold(
      backgroundColor: Color(0xff1A87DD),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: const EdgeInsets.all(25),
                child: Image.asset('assets/vector.png',scale: 0.8,),
              ),
              const SizedBox(height: 26,),
              Image.asset('assets/paynow.png',scale: 0.9,)
            ],
          ),
        ),
      ),
    );
  }
}
