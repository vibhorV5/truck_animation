import 'package:flutter/material.dart';
import 'package:truck_animation/Routes/routes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(orderdetails);
                },
                child: Container(
                  color: Colors.amber,
                  margin: const EdgeInsets.only(top: 40),
                  height: 100,
                  width: mediaQuery.width,
                  child: const Text('Tap to go to Details Screen Page'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
