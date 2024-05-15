import 'package:flutter/material.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
              //route detils
              const Text("Dolvi -> Kasara",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),

              const SizedBox(height: 15,),

              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(child: Text("Consigner:")),
                Flexible(child: Text("JSW Cement",style: TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.end,))
              ],),

              const SizedBox(height: 2,),

              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(child: Text("Party:")),
                Flexible(child: Text("Navyug Engineering Kasara ",style: TextStyle(fontWeight: FontWeight.w600),textAlign: TextAlign.end,))
              ],),

              const SizedBox(height: 10,),
              const Divider(height: 1,thickness: 1,),

              const SizedBox(height: 10,),

              const Row(children: <Widget>[
                Icon(Icons.article,color: Color(0xff808080),),
                SizedBox(width: 10,),
                Text("Order Details",style: TextStyle(color: Color(0xff808080)),)
              ],),

              const SizedBox(height: 10,),
              
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(child: Text("Order Date:")),
                Flexible(child: Text("02/03/2024",style: TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.end,))
              ],),
              
              const SizedBox(height: 1,),
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(child: Text("Quantity:")),
                Flexible(child: Text("35MT",style: TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.end,))
              ],),

              const SizedBox(height: 1,),

              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(child: Text("Material:")),
                Flexible(child: Text("Cement | OPC",style: TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.end,))
              ],),

              const SizedBox(height: 1,),
              
              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffffffff),
                    foregroundColor: const Color(0xffffffff),
                    padding: const EdgeInsets.all(0)
                  ),
                  onPressed: ()=>{Navigator.pushNamed(context, '/orderDetail') } , child: const Row(children: <Widget>[
                  Text("More Details",textAlign: TextAlign.end, style: TextStyle(
                    color: Color(0xff0F8040),
                    fontSize: 15,
                  ), ) ,
                  SizedBox(width: 3,),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff0F8040),size: 20)
                ],))
              ],)
            ],),
            
          ),
        )
      ;
  }
}