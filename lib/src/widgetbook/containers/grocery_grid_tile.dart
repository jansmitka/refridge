import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/datetime_extenstion.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/widgetbook/containers/date_picker.dart';

class GroceryGridTile extends StatelessWidget {
  final Grocery grocery;

  const GroceryGridTile({super.key, required this.grocery});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Replace with your desired background color
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            grocery.imagePath ?? '',
            height: 50, // Adjust size based on your design
            fit: BoxFit.contain,
          ),
          SizedBox(height: 8.0),
          Text(
            grocery.getLabel(context),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            grocery.amount.toString(),
            style: TextStyle(color: Colors.grey),
          ),
          // SizedBox(height: 4.0),
          // Text(
          //   grocery.expirationDate?.ddmmYYYY() ?? '',
          //   style: TextStyle(color: Colors.redAccent, fontSize: 12.0),
          // ),
        ],
      ),
    );
  }
}
