part of 'package:frontend/helpers/import.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => QuotesController());
  }
}
