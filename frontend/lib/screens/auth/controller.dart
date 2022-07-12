part of 'package:frontend/helpers/import.dart';

class AuthController extends GetxController with StateMixin<dynamic>{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    
    
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}