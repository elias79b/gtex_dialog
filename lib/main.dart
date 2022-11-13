import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX snackbar"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "titel",
                      titleStyle: TextStyle(fontSize: 18),
                      middleText: "maiddle Text",
                      middleTextStyle: TextStyle(fontSize: 15),
                      backgroundColor: Colors.green,
                      radius: 15,
                      textCancel: "cancel",
                      cancelTextColor: Colors.greenAccent[100],
                      textConfirm: "confirm",
                      confirmTextColor: Colors.white,
                      buttonColor: Colors.green,
                      barrierDismissible: false,
                    );
                  },
                  child: Text("snack bar"))
            ],
          ),
        ),
      ),
    );
  }
}
