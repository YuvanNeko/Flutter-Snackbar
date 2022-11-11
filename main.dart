import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SnacBar",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Hello!", "HELLO!",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundGradient: const LinearGradient(
                            colors: [Colors.purple, Colors.pink]),
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        padding: const EdgeInsets.all(5),
                        showProgressIndicator: true,
                        borderRadius: 0.0);
                  },
                  child: const Text("Get Snackbar"))
            ],
          ),
        ),
      ),
    );
  }
}
