import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:workerapp/app/resources/constants.dart';
import 'package:workerapp/app/routes/app_pages.dart';
import '../controllers/otp_login_controller.dart';

class OtpLoginView extends GetView<OtpLoginController> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => Scaffold(
        appBar: AppBar(
          title: const Text('Phone Login'),
        ),
        drawer: const Drawer(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/bulb.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: const Center(
                        child: Text(
                          'Connect With US',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 40, right: 10, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.phone),
                          hintText: "Where We Can Reach You",
                          labelText: "Enter Your Phone No",
                          prefixText: '+91 ',
                        ),
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        controller: _controller,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith(getColor)),
                        onPressed: () {
                          if (_controller.text.length < 10) {
                            Get.snackbar("Invalid Phone No",
                                "Please Enter A valid Phone No");
                          } else {
                            Get.toNamed(
                              Routes.OTP_VERIFY,
                              arguments: _controller.text,
                            );
                          }
                        },
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
