import 'dart:io';
import 'package:driver_app/screens/uploadInvoice/upload.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  File? selectedIMage;
  late Uint8List _imageData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Dispatch Orders"),
        elevation: 4,
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.g_translate_sharp))
        ],
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text(
                  "Dolvi -> Kasara",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
              ),
              //route detils
              Container(
                padding: const EdgeInsets.all(15),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Consigner:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "JSW Cement",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Party:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "Navyug Engineering Kasara ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 221, 221, 221)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Order Date:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "02/03/2024",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Quantity:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "35MT",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Material:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "Cement | OPC",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "From:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "JSW Cement Ltd, Dolvi Village- Khar, Kharavi Post Gadab, Taluka- Pen Raigad, Maharashtra 402107 ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "Via:",
                          style: TextStyle(fontSize: 16),
                        )),
                        Flexible(
                            child: Text(
                          "JSW Parking Yard, Jite.",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          "To:",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.start,
                        )),
                        Flexible(
                            child: Text(
                          "Navayuga Engg. Co Mumbai Nagpur Ex-way B/H Orange Hotel,Kasara Thane, Maharashtra 421602",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: () => {
                          // Navigator.pushNamed(context, '/uploadSuccess')
                          showImagePickerOption(context)
                        },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff313256),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                    child: const Text(
                      "UPLOAD INVOICE",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                        onPressed: () => {Navigator.pop(context)},
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () => {
                                _pickImageFromCamera(),
                              },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.all(15),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 216, 216, 216))),
                          ),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.photo_camera,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Take Picture",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () => {
                                _pickImageFromGallery(),
                              },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.all(15),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 216, 216, 216))),
                          ),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.image,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Select from Gallery",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  //gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    
    if (kIsWeb) {
      Uint8List temp = await returnImage.readAsBytes();
      setState(() {
      selectedIMage = File(returnImage.path);
      _imageData = temp;
    });
    } else {
      setState(() {
      selectedIMage = File(returnImage.path);
      _imageData = File(returnImage.path).readAsBytesSync();
    });
    }

    Navigator.pop(context);
    // ignore: unnecessary_null_comparison

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UploadInvoice(imageData: _imageData),
        ));
  }

  //Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    if (kIsWeb) {
      Uint8List temp = await returnImage.readAsBytes();
      setState(() {
      selectedIMage = File(returnImage.path);
      _imageData = temp;
    });
    } else {
      setState(() {
      selectedIMage = File(returnImage.path);
      _imageData = File(returnImage.path).readAsBytesSync();
    });
    }

    Navigator.pop(context);
    // ignore: unnecessary_null_comparison

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UploadInvoice(imageData: _imageData),
        ));
  }
}
