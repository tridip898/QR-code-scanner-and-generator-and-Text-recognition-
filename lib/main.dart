import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/data/constants/app_colors.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(392, 805),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context,child){
        return GetMaterialApp(
          title: "QR Code Scanner",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: AppColor.colorPrimarySwatch,
            primaryColor: AppColor.primaryColor,
            appBarTheme: AppBarTheme(
              color: AppColor.primaryColor,
              centerTitle: true,
              titleTextStyle: text18Style(
                color: AppColor.white,
              ),
              iconTheme: const IconThemeData(
                color: AppColor.white,
              ),
            ),
          ),
        );
      },
    ),
  );
}
