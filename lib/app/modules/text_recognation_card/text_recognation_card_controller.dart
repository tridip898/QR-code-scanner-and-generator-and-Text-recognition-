import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

class TextRecognationCardController extends GetxController {
  var imagePath = "".obs, scannerText = "".obs;
  final textScanning = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  pickImages(ImageSource imageSource) async {
    final ImagePicker imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: imageSource);
    if (pickedImage != null) {
      textScanning.value = true;
      imagePath.value = pickedImage.path.toString();
      getRecognisedText(pickedImage);
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textRecognizer();
    RecognizedText recognizedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    scannerText.value = '';
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        scannerText.value = "${scannerText.value}${line.text}\n";
      }
    }
    textScanning.value = false;
  }
}
