part of 'package:frontend/helpers/import.dart';
class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("Login")),
    );
  }
}
