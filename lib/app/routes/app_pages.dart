import 'package:get/get.dart';

import '../modules/generate_qr_code/generate_qr_code_binding.dart';
import '../modules/generate_qr_code/generate_qr_code_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/scan_qr_code/scan_qr_code_binding.dart';
import '../modules/scan_qr_code/scan_qr_code_view.dart';
import '../modules/text_recognation_card/text_recognation_card_binding.dart';
import '../modules/text_recognation_card/text_recognation_card_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_QR_CODE,
      page: () => const ScanQrCodeView(),
      binding: ScanQrCodeBinding(),
    ),
    GetPage(
      name: _Paths.GENERATE_QR_CODE,
      page: () => const GenerateQrCodeView(),
      binding: GenerateQrCodeBinding(),
    ),
    GetPage(
      name: _Paths.TEXT_RECOGNATION_CARD,
      page: () => const TextRecognationCardView(),
      binding: TextRecognationCardBinding(),
    ),
  ];
}
