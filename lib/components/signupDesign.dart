import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workerapp/app/data/models/person.dart';
import 'package:workerapp/app/modules/signUp/controllers/sign_up_controller.dart';
import 'package:workerapp/app/resources/constants.dart';

const sizeSpace = SizedBox(
  height: 16,
);
signUpForm() {
  return Form(
    child: Scrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.person),
                  hintText: "What do people call you?",
                  labelText: "Name" + String.fromCharCode(asterisk)),
              onSaved: (value) {},
            ),
            sizeSpace,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.phone),
                  hintText: "Where we can contact you?",
                  labelText: "Contact number" + String.fromCharCode(asterisk),
                  prefixText: '+91'),
              keyboardType: TextInputType.phone,
              onSaved: (value) {},
              maxLength: 10,
              maxLengthEnforcement: MaxLengthEnforcement.none,
            ),
            sizeSpace,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                icon: const Icon(Icons.email),
                hintText: "Your Email Address",
                labelText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) {},
            ),
            sizeSpace,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                border: const OutlineInputBorder(),
                labelText: "Your stories",
                hintText:
                    "Tell us about yourself, what you expect from us and how exactly we can help you ?",
              ),
              maxLength: 500,
              maxLines: 2,
            ),
            sizeSpace,
            TextFormField(
              textInputAction: TextInputAction.next,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                hintText: "Password" + String.fromCharCode(asterisk),
                labelText: "Password" + String.fromCharCode(asterisk),
                helperText: "No less than 6 characters",
              ),
              onSaved: (value) {},
            ),
            sizeSpace,
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                hintText: "Re-type password" + String.fromCharCode(asterisk),
                labelText: "Re-type password" + String.fromCharCode(asterisk),
              ),
            ),
            sizeSpace,
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
            Text(String.fromCharCode(asterisk) + 'indicates required field')
          ],
        ),
      ),
    ),
  );
}
