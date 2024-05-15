import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneNumber = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(241, 243, 248, 2),
        body: Center(
          child: Column(
            children: <Widget>[
              const Expanded(child: SizedBox(height: 40)),
              //logo
              const Image(image: AssetImage('assets/images/login.jpg')),
              //text
              const SizedBox(height: 20),
              const Text("Login",
                  style: TextStyle(fontSize: 25, color: Color(0xff313256))),
              //text
              const SizedBox(height: 20),

              const Text(
                "Please enter phone number",
                style: TextStyle(color: Color(0xff515d7e)),
              ),

              //input form
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          blurRadius: 10, // Blur radius
                          offset: const Offset(0, 3), // Offset position
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: phoneNumber,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white, // TextField background color
                        prefixText: "+91 ",
                        labelText: 'Mobile Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(13.0)), // Border radius
                          borderSide: BorderSide.none, // No border
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // submit button
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () => {
                          Navigator.pushNamed(context, '/verifyOtp')
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff313256),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        child: const Text(
                          "GENERATE OTP",
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
