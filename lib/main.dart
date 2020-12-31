// References:
// https://flutter.dev/docs/development/ui/layout/tutorial
//
// Considerations:
// The first step is to break the layout down to its basic elements:
//
// Identify the rows and columns.
// Does the layout include a grid?
// Are there overlapping elements?
// Does the UI need tabs?
// Notice areas that require alignment, padding, or borders.
// First, identify the larger elements. In this example, four elements are
// arranged into a column: an image, two rows, and a block of text.
//
// Next, diagram each row. The first row, called the Title section, has 3
// children: a column of text, a star icon, and a number. Its first child,
// the column, contains 2 lines of text. That first column takes a lot of space,
// so it must be wrapped in an Expanded widget.
//
// The second row, called the Button section, also has 3 children: each child
// is a column that contains an icon and text.
//
// Once the layout has been diagrammed, it’s easiest to take a bottom-up approach
// to implementing it. To minimize the visual confusion of deeply nested layout
// code, place some of the implementation in variables and functions.

import 'package:flutter/material.dart';
import 'package:flutter_layout_tut/button_section.dart';
import 'package:flutter_layout_tut/text_section.dart';
import 'package:flutter_layout_tut/title_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        // In this final step, arrange all of the elements in a ListView,
        // rather than a Column, because a ListView supports app body
        // scrolling when the app is run on a small device.
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              // BoxFit.cover tells the framework that the image should be as small
              // as possible but cover its entire render box.
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ],
        ),
      ),
    );
  }
}
