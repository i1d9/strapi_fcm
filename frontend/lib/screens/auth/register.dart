part of 'package:frontend/helpers/import.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(children: [

        Text("Register"),

        TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),
        labelText: 'Username'
        )),

                TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),
        labelText: 'Email'
        )),

             TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),
        labelText: 'Password'
        )),


      
        
      ])),
    );
  }
}
