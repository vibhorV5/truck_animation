import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truck_animation/line/line.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 2300));
  late final Animation<Offset> _animation =
      Tween(begin: const Offset(1.7, 0), end: const Offset(6.7, 0))
          .animate(_controller);

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);
    _controller.forward();
    start = false;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool start = true;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            'Order Details',
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
                  children: [
                    const Text(
                      'Order Id: #YAZ000109',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        if (start == true) {
                          _controller.forward();
                          start = false;
                        } else {
                          _controller.reverse();
                          start = true;
                        }
                      },
                      child: const Text(
                        'pending',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),

              //Order Status
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: const EdgeInsets.only(top: 10),
                height: 170,
                color: Colors.grey.withOpacity(0.1),
                width: mediaQuery.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Order Status',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '22-Sep-2022 08:01 PM',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Estimated Delivery in 5 - 7 Business Days',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    //Truck Animation
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      // color: Colors.red,
                      width: mediaQuery.width,
                      child: SlideTransition(
                        position: _animation,
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset('assets/images/cargo-truck.png'),
                        ),
                      ),
                    ),

                    //Checkpoints Dots - Line
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          // color: Colors.red,
                          margin: const EdgeInsets.only(
                              left: 45, right: 45, top: 15),
                          child: const AspectRatio(
                            aspectRatio: 60 / 1,
                            child: Line(),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade800,
                          ),
                          margin: const EdgeInsets.only(
                              left: 30, right: 30, top: 7),
                          height: 15,
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade800,
                          ),
                          margin: const EdgeInsets.only(left: 120, top: 7),
                          height: 15,
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                          margin: const EdgeInsets.only(left: 220, top: 7),
                          height: 15,
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                          margin: const EdgeInsets.only(left: 310, top: 7),
                          height: 15,
                          width: 15,
                        ),
                      ],
                    ),

                    //Checkpoint Titles
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      // color: Colors.red,
                      width: mediaQuery.width,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Created',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Dispatched',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'On the Way',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Delivered',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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

// class TruckAnimation extends StatefulWidget {
//   const TruckAnimation({super.key});

//   @override
//   State<TruckAnimation> createState() => _TruckAnimationState();
// }

// class _TruckAnimationState extends State<TruckAnimation>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//       vsync: this, duration: const Duration(milliseconds: 2200));
//   late Animation<Offset> _animation =
//       Tween(begin: Offset.zero, end: Offset(4, 0)).animate(_controller);

//   @override
//   void initState() {
//     super.initState();
//     // _controller = AnimationController(vsync: this);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
//       position: _animation,
//       child: Container(
//         child: Image.asset('assets/images/cargo-truck.png'),
//         height: 25,
//         width: 25,
//       ),
//     );
//   }
// }
