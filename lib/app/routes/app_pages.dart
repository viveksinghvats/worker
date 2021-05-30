import 'package:get/get.dart';

import 'package:workerapp/app/modules/home/bindings/home_binding.dart';
import 'package:workerapp/app/modules/home/views/home_view.dart';
import 'package:workerapp/app/modules/otpLogin/bindings/otp_login_binding.dart';
import 'package:workerapp/app/modules/otpLogin/views/otp_login_view.dart';
import 'package:workerapp/app/modules/otpVerify/bindings/otp_verify_binding.dart';
import 'package:workerapp/app/modules/otpVerify/views/otp_verify_view.dart';
import 'package:workerapp/app/modules/signUp/bindings/sign_up_binding.dart';
import 'package:workerapp/app/modules/signUp/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SIGN_UP;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OTP_LOGIN,
      page: () => OtpLoginView(),
      binding: OtpLoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFY,
      page: () => OtpVerifyView(),
      binding: OtpVerifyBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
