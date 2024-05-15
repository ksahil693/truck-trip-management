import 'package:flutter/material.dart';

class VerfiyOtp extends StatefulWidget {
  const VerfiyOtp({super.key});

  @override
  State<VerfiyOtp> createState() => _VerfiyOtpState();
}

class _VerfiyOtpState extends State<VerfiyOtp> {
  TextEditingController otp = TextEditingController();

  @override
  void dispose() {
    otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => {Navigator.pop(context)},icon: const Icon(Icons.arrow_back, size: 30,),),
          backgroundColor: const Color(0xfff1f3f8),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfff1f3f8),
        body: Center(
          child: Column(
            children: <Widget>[
              const Expanded(child: SizedBox(height: 40)),
              //logo
              const Image(image: AssetImage('assets/images/otp.jpg')),
              //text
              const SizedBox(height: 20),
              const Text("OTP VERIFICATION",
                  style: TextStyle(fontSize: 30, color: Color(0xff313256))),
              //text
              const SizedBox(height: 20),

              const Text(
                "Please enter OTP sent to",
                style: TextStyle(color: Color(0xff515d7e)),
              ),
              const Text(
                "+917876025693",
                style: TextStyle(color: Colors.grey),
              ),

              //input form
              const SizedBox(height: 60),
              const OTPInputField(),
              TextButton(
                  onPressed: () => {
                    print("resend")
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(241, 243, 248, 2),
                    foregroundColor: const Color.fromRGBO(241, 243, 248, 2),
                  ),
                  child: const Text(
                    "Resend Otp",
                    style: TextStyle(
                      color: Color(0xff4749a0),
                    ),
                  )),
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
                          Navigator.pushNamed(context, '/failure')
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff313256),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        child: const Text(
                          "VERIFY",
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

class OTPInputField extends StatefulWidget {
  const OTPInputField({super.key});

  @override
  State<OTPInputField> createState() => _OTPInputFieldState();
}

class _OTPInputFieldState extends State<OTPInputField> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            4,
            (index) => SizedBox(
                  width: 60,
                  child: TextField(
                    controller: _controllers[index],
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      counter: SizedBox.shrink(),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                )),
      ),
    );
  }
}
