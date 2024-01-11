import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_colors.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_styles.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'generate_qr_code_controller.dart';

class GenerateQrCodeView extends GetView<GenerateQrCodeController> {
  const GenerateQrCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Qr Code'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppWidget().gapH(20),
                  Text(
                    "Text For QR Code",
                    style: text14Style(
                      isWeight600: true,
                    ),
                  ),
                  AppWidget().gapH8(),
                  TextField(
                    controller: controller.urlController,
                    style: text14Style(),
                    cursorColor: AppColor.black,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                      hintText: "Enter text here",
                      hintStyle: text14Style(
                        isGrayColor: true,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 15.h,
                      ),
                      border: textFieldBorder(),
                      enabledBorder: textFieldBorder(),
                      disabledBorder: textFieldBorder(),
                      focusedBorder: textFieldBorder(),
                    ),
                  ),
                  AppWidget().gapH8(),
                  Center(
                    child: ElevatedButton(
                      onPressed: controller.generateQr,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Generate QR Code",
                        style: text14Style(
                          isWhiteColor: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Visibility(
                        visible: controller.qrVisibility.value,
                        child: QrImageView(
                          data: controller.qrString.value,
                          size: 200,
                          version: QrVersions.auto,
                          dataModuleStyle: const QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Colors.black),
                          // dataModuleStyle =  QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColor.black,
        width: 1,
      ),
    );
  }
}
