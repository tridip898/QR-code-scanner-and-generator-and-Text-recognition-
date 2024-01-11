import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_styles.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_widgets.dart';

import 'package:get/get.dart';

import '../../data/constants/app_colors.dart';
import 'scan_qr_code_controller.dart';

class ScanQrCodeView extends GetView<ScanQrCodeController> {
  const ScanQrCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Qr Code'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Obx(() {
            return Column(
              children: [
                AppWidget().gapH(20),
                Text(controller.scanBarcode.value, style: text16Style(),),
                AppWidget().gapH(50),
                ElevatedButton(
                  onPressed: controller.scanBarcodeNormal,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Scan Bar Code",
                    style: text14Style(
                      isWhiteColor: true,
                    ),
                  ),
                ),
                AppWidget().gapH(20),
                ElevatedButton(
                  onPressed: controller.scanQR,
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
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
