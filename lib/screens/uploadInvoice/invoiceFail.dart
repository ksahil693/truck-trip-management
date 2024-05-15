import 'package:flutter/material.dart';

class InvoiceFail extends StatefulWidget {
  const InvoiceFail({super.key});

  @override
  State<InvoiceFail> createState() => _InvoiceFailState();
}

class _InvoiceFailState extends State<InvoiceFail> {
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
            const Image(image: AssetImage('assets/images/invoiceFail.png')),
            const SizedBox(height: 20,),
            const Text(
              "Failed to read Invoice",
              style: TextStyle(fontSize: 20,
              color: Color(0xff515D7E)),
              textAlign: TextAlign.center,
            ),
            const Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/orders')
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff313256),
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                    )
                  ),
                  child: const Text("Reupload Invoice",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  
  }
}