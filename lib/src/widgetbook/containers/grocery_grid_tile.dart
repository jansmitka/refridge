import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/datetime_extenstion.dart';
import 'package:refridge/src/domain/extensions/double_extenstion.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/widgetbook/containers/date_picker.dart';

class GroceryGridTile extends StatefulWidget {
  final Grocery grocery;

  const GroceryGridTile({super.key, required this.grocery});

  @override
  State<GroceryGridTile> createState() => _GroceryGridTileState();
}

class _GroceryGridTileState extends State<GroceryGridTile>
    with SingleTickerProviderStateMixin {
  bool isFlipped = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flip() {
    setState(() {
      isFlipped = !isFlipped;
      if (isFlipped) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flip,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          // Rotating the container for flip effect
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(_animation.value * 3.1416),
            child: _animation.value < 0.5 ? _buildFront() : _buildBack(),
          );
        },
      ),
    );
  }

  Widget _buildBack() {
    // Back of the container
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.redAccent[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.delete, color: Colors.white),
          Icon(Icons.remove, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildFront() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Replace with your desired background color
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.grocery.imagePath ?? '',
            height: 50, // Adjust size based on your design
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8.0),
          Text(
            widget.grocery.getLabel(context),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "${widget.grocery.amount!.toLabel()} ${widget.grocery.unit!.getUnit(context)}",
            style: const TextStyle(color: Colors.grey),
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
