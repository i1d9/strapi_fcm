part of 'package:frontend/helpers/import.dart';

class QuotesForm extends StatelessWidget {
  const QuotesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(children:[

                TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),
        labelText: 'Quote'
        )),
        

      ])),
    );
  }
}
