import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_colors.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_styles.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_widgets.dart';
import 'package:flutter_qr_code_scanner_generator/app/routes/app_pages.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.SCAN_QR_CODE);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Scan QR Code",
                  style: text14Style(
                    isWhiteColor: true,
                  ),
                ),
              ),
              AppWidget().gapH(10),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.GENERATE_QR_CODE);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "QR Code Generate",
                  style: text14Style(
                    isWhiteColor: true,
                  ),
                ),
              ),
              AppWidget().gapH(10),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.TEXT_RECOGNATION_CARD);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Text Recognation",
                  style: text14Style(
                    isWhiteColor: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
