import 'package:get/get.dart';
import 'package:truck_animation/Screens/Home/View/home_screen.dart';
import 'package:truck_animation/Screens/OrderDetails/View/order_details_screen.dart';

const String home = '/homeScreen';
const String orderdetails = '/orderDetailsScreen';

class Routes {
  static final routes = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: orderdetails, page: () => const OrderDetailsScreen()),
  ];
}
