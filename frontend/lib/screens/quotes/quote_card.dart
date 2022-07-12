part of 'package:frontend/helpers/import.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key, required this.id, required this.quote, required this.liked, required this.username}) : super(key: key);

  final int id;
  final String quote;
  final bool liked;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Text("Username"),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(""),
        liked
            ? Icon(Icons.favorite_outline)
            : GestureDetector(onTap: () {}, child: Icon(Icons.favorite))
      ])
    ]));
  }
}
