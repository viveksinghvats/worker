import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workerapp/app/resources/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Georgia',
          primaryColor: darkTealTTheme,
          primarySwatch: Colors.teal,
          iconTheme: IconThemeData(color: darkTealTTheme),
          inputDecorationTheme: InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: darkTealTTheme)),
              labelStyle: TextStyle(color: Colors.teal[800])),
          accentColor: brownTTheme,
          hintColor: darkTealTTheme),
    ),
  );
}
