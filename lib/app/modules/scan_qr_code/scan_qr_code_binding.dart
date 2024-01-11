import 'package:get/get.dart';

import 'scan_qr_code_controller.dart';

class ScanQrCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanQrCodeController>(
      () => ScanQrCodeController(),
    );
  }
}
