import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class uploadSuccess extends StatefulWidget {
  const uploadSuccess({super.key});

  @override
  State<uploadSuccess> createState() => _SuccessState();
}

class _SuccessState extends State<uploadSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            const Expanded(
              child: SizedBox(
                height: 100,
              ),
            ),
            const Image(image: AssetImage('assets/images/fuel.png')),
            const SizedBox(height: 20,),
            const Text(
              "Invoice verification in progress...",
              style: TextStyle(fontSize: 20,
              color: Color(0xff515D7E)),
              textAlign: TextAlign.center,
            ),
            const Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/invoiceFail')
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff313256),
                  
                  shape:const ContinuousRectangleBorder()
                ),
                child: const Text("Done",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}