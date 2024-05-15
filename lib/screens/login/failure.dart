import "package:flutter/material.dart";

class Failure extends StatefulWidget {
  const Failure({super.key});

  @override
  State<Failure> createState() => _FailureState();
}

class _FailureState extends State<Failure> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Image(image: AssetImage('assets/images/failure.jpg')),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "OTP Verification failed.",
              style: TextStyle(fontSize: 28,
              color: Color(0xff515D7E)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Enter a valid phone number/OTP.",style: TextStyle(
              color: Color(0xff515D7E)),),
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
                  Navigator.pushNamed(context, '/orders')
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff313256),
                  shape:const BeveledRectangleBorder()
                ),
                child: const Text("Retry",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
