import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UploadInvoice extends StatefulWidget {
  // const UploadInvoice({super.key, this.image});
  final Uint8List imageData;
  const UploadInvoice({super.key, required this.imageData});

  @override
  State<UploadInvoice> createState() => _UploadState();
}

class _UploadState extends State<UploadInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Screenshot"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Expanded(child: Image.memory(widget.imageData)),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () => {Navigator.pop(context)},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.replay,
                            color: Color(0xff666666),
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Retake",
                            style: TextStyle(color: Color(0xff666666)),
                          ),
                        ],
                      )),
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () => {
                          Navigator.pop(context)
                        },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff313256),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      child: const Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                )),
                const SizedBox(
                  height: 40,
                )
          ],
        ),
      ),
    );
  }
}
