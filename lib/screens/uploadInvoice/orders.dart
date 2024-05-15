import 'package:driver_app/screens/uploadInvoice/orderComponent.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  final orders = [

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      appBar: AppBar(
        title: const Text("Dispatch Orders"),
        elevation: 4,
        actions: [IconButton(onPressed: ()=>{}, icon: const Icon(Icons.g_translate_sharp))],
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        toolbarHeight: 70,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text("Select Order",style: TextStyle(fontSize: 18),),
          ),
        
          //Orders.list
          OrderItem(),
          OrderItem(),
          OrderItem()
        ],),
      )
    ));
  }
}