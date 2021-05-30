import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workerapp/components/signupDesign.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('SignUpView'),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/greencup.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.teal.withOpacity(0.15), BlendMode.dstATop)),
            ),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.black12,
                        ),
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
                signUpForm()
              ],
            ),
          )),
    );
  }
}
