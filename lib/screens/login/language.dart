import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfff1f3f8),
      body: Center(
        child: Column(
          children: <Widget>[
            const Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
            const Image(image: AssetImage("assets/images/lang.jpg")),

            const SizedBox(
              height: 40,
            ),
            //text
            const Text(
              "SELECT LANGUAGE",
              style: TextStyle(fontSize: 28),
            ),

            const SizedBox(
              height: 40,
            ),

            Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () => {Navigator.pushNamed(context, '/login')},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          foregroundColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      child: const Text(
                        "हिंदी",
                        style: TextStyle(color: Color(0xff313256),fontSize: 22),
                      )),
                )),

            const SizedBox(
              height: 40,
            ),

            Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () => {Navigator.pushNamed(context, '/login')},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.white,
                          elevation: 3,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      child: const Text(
                        "ENGLISH",
                        style: TextStyle(color: Color(0xff313256),fontSize: 18),
                      )),
                )),

            const Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
