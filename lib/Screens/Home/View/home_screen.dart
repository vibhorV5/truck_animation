import 'package:flutter/material.dart';
import 'package:truck_animation/Routes/routes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'My Orders',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Order Id
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(top: 20),
                height: 40,
                color: Colors.yellow.withOpacity(0.3),
                width: mediaQuery.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Showing Results from past 6 months',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),

              //Order Status
              GestureDetector(
                onTap: () {
                  Get.toNamed(orderdetails);
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  margin: const EdgeInsets.only(top: 10),
                  height: 160,
                  color: Colors.white,
                  width: mediaQuery.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order Id: #YAZ000109',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Order date; 22-Sep-2022 08:01 PM',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(top: 10, right: 10),
                            height: 65,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/garment.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 55,
                            // width: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Jeans',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Delivery: pending',
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.5),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
