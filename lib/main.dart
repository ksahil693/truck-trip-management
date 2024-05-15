import 'package:driver_app/screens/uploadInvoice/invoiceFail.dart';
import 'package:driver_app/screens/uploadInvoice/orderDetail.dart';
import 'package:driver_app/screens/uploadInvoice/orders.dart';
import 'package:driver_app/screens/login/failure.dart';
import 'package:driver_app/screens/login/language.dart';
import 'package:driver_app/screens/login/login.dart';
import 'package:driver_app/screens/login/verify_otp.dart';
import 'package:driver_app/screens/uploadInvoice/uploadSuccess.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Login(),
        '/login':(context) => const Login(),
        '/failure':(context) =>  const Failure(),
        '/verifyOtp':(context) => const VerfiyOtp(),
        '/language':(context) =>  const Language(),
        '/orders': (context) => const Orders(),
        '/orderDetail':(context) => const OrderDetail(),
        '/uploadSuccess':(context) => const uploadSuccess(),
        '/invoiceFail':(context) => const InvoiceFail(),
      },
    );
  }
}