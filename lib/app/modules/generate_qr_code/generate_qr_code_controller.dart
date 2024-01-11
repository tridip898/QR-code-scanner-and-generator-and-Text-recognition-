import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GenerateQrCodeController extends GetxController {
  final urlController=TextEditingController();
  final qrString="".obs;
  final qrVisibility=false.obs;
  @override
  void onInit() {
    super.onInit();
  }
  generateQr(){
    qrString.value = urlController.text;
    qrVisibility.value=true;
  }
}
