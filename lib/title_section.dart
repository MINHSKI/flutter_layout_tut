import 'package:flutter/material.dart';
import 'package:flutter_layout_tut/favorite_widget.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The entire row is in a Container and padded along each edge by 32 pixels.
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          // Putting a Column inside an Expanded widget stretches the column to
          // use all remaining free space in the row.
          Expanded(
            child: Column(
              // Setting the crossAxisAlignment property to CrossAxisAlignment.start
              // positions the column at the start of the row.
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Putting the first row of text inside a Container enables you to add padding.
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Chloe Saint Laurent',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // The second child in the Column, also text, displays as grey.
                Text(
                  'Paris, France',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // The last two items in the title row are a star icon, painted red,
          // and the text “41”.
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Text('41'),
          FavoriteWidget(),
        ],
      ),
    );
  }
}
