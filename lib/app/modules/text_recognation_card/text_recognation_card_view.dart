import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_qr_code_scanner_generator/app/data/constants/app_widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'text_recognation_card_controller.dart';

import 'package:get/get.dart';

import '../../data/constants/app_colors.dart';
import '../../data/constants/app_styles.dart';

class TextRecognationCardView extends GetView<TextRecognationCardController> {
  const TextRecognationCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Recognation'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Obx(() {
            return Column(
              children: [
                AppWidget().gapH(30),
                ElevatedButton(
                  onPressed: () {
                    controller.pickImages(ImageSource.gallery);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Pick From Gallery",
                    style: text14Style(
                      isWhiteColor: true,
                    ),
                  ),
                ),
                AppWidget().gapH(10),
                ElevatedButton(
                  onPressed: () {
                    controller.pickImages(ImageSource.camera);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Pick Image Camera",
                    style: text14Style(
                      isWhiteColor: true,
                    ),
                  ),
                ),
                AppWidget().gapH(10),
                controller.imagePath.value.isNotEmpty
                    ? Image(
                        image: FileImage(
                          File(controller.imagePath.value.toString()),
                          scale: .1
                        ),
                  height: 200,
                  width: double.infinity,
                      )
                    : Container(),
                controller.textScanning.value
                    ? const CircularProgressIndicator()
                    : Container(),
                Text(controller.scannerText.value)
              ],
            );
          }),
        ),
      ),
    );
  }
}
