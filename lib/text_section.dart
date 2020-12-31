import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String textMessage =
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese ' +
          'Alps. Situated 1,578 meters above sea level, it is one of the ' +
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a ' +
          'half-hour walk through pastures and pine forest, leads you to the ' +
          'lake, which warms to 20 degrees Celsius in the summer. Activities ' +
          'enjoyed here include rowing, and riding the summer toboggan run.';
  @override
  Widget build(BuildContext context) {
    // Define the text section as a variable. Put the text in a Container and
    // add padding along each edge.
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        textMessage,
        // By setting softWrap to true, text lines will fill the column width
        // before wrapping at a word boundary.
        softWrap: true,
      ),
    );
  }
}
