
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'Constants/firebase_constants.dart';
import 'Controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   firebaseInitialization.then((value) {
    // we are going to inject the auth controller over here!
    Get.put(AuthController());
  });
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
