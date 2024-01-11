import 'package:get/get.dart';

import 'text_recognation_card_controller.dart';

class TextRecognationCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextRecognationCardController>(
      () => TextRecognationCardController(),
    );
  }
}
