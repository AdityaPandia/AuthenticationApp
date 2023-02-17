


import 'package:flutter/material.dart';
import 'package:revamp_assignment/Screens/login.dart';

import 'package:get/get.dart';

import '../Constants/constants.dart';
import '../Controllers/auth_controller.dart';

class HomeController extends GetxController {
  var selectedDrowpdown = 'Student';
  List dropdownText = ['Student', 'Faculty', 'Alumni'];
}

class Register extends StatelessWidget {
  final userTypeController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileController = TextEditingController();
  final nameController = TextEditingController();
  final collegeNameController = TextEditingController();
  final admissionYearController = TextEditingController();
  final passOutYearController = TextEditingController();
  final profilePicController = TextEditingController();
  final resumeController = TextEditingController();
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: Get.textTheme.headline3,
              ),
              SizedBox(
                height: 8.0,
              ),
              /*
              TextField(
                controller: userTypeController,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Select User Type'),
              ),*/
              DropdownButton(
                  hint: Text(
                    'Book Type',
                  ),

                  onChanged: (newValue) {
                    homeController.selectedDrowpdown = newValue as String;
                    homeController.update();
                  },
                  value: homeController.selectedDrowpdown,
                  items: [
                    for (var data in homeController.dropdownText)
                      DropdownMenuItem(
                        child: new Text(
                          data,
                        ),
                        value: data,
                      )
                  ]),

              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: passwordController,
                textAlign: TextAlign.center,
                obscureText: true,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: mobileController,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(
                    hintText: 'Enter your mobile number'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: nameController,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your name'),
              ),
              SizedBox(
                height: 8.0,
              ),

              TextField(
                controller: collegeNameController,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(
                    hintText: 'Enter your college name'),
              ),

              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: admissionYearController,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Admission year'),
              ),
              SizedBox(
                height: 8.0,
              ),

              ElevatedButton(onPressed: (){}, child: const Text('UPLOAD PROFILE PICTURE')),

              SizedBox(
                height: 8.0,
              ),
              ElevatedButton(onPressed: (){}, child: const Text('UPLOAD RESUME')),
              SizedBox(
                height: 8.0,
              ),

              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // this is for the register function in auth controller
                      AuthController.authInstance.register(
                        userTypeController.text.trim(),
                        emailController.text.trim(),
                        passwordController.text.trim(),
                        mobileController.text.trim(),

                      );
                    },
                    child: const Text("Sign Up"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // this is for the register function in auth controller
                      Get.offAll(() => Login());

                    },
                    child: const Text("Get back to login screen"),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List <String> dropDownVal = [
  "Student",
  "Faculty",
  "Alumni",
];