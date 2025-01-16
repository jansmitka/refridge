import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/datetime_extenstion.dart';
import 'package:refridge/src/domain/extensions/double_extenstion.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class GroceryGridTile extends StatefulWidget {
  final Grocery grocery;
  final Function(Grocery) onEdit;
  final Function(Grocery)? onAddToList;
  final Function(Grocery) onDelete;

  const GroceryGridTile({
    super.key,
    required this.grocery,
    required this.onEdit,
    required this.onDelete,
    this.onAddToList,
  });

  @override
  State<GroceryGridTile> createState() => _GroceryGridTileState();
}

class _GroceryGridTileState extends State<GroceryGridTile> {
  bool _isPanelVisible = false; // Control panel visibility

  void _togglePanel() {
    setState(() {
      _isPanelVisible = !_isPanelVisible; // Toggle panel visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: _togglePanel, // Close the panel when tapping on the container
          child: _buildMainContainer(),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          bottom: _isPanelVisible ? 0 : -60, // Change to adjust panel height
          left: 0,
          right: 0,
          child: _buildSlidingPanel(),
        ),
      ],
    );
  }

  Widget _buildSlidingPanel() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: RFColors.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              _togglePanel();
              widget.onDelete(widget.grocery);
            },
            child: const SizedBox(
              width: 35,
              height: 35,
              child: Icon(
                Icons.delete,
                color: RFColors.generalBg,
                size: 20,
              ),
            ),
          ),
          if (widget.onAddToList != null)
            GestureDetector(
              onTap: () {
                _togglePanel();
                widget.onAddToList!(widget.grocery);
              },
              child: const SizedBox(
                width: 35,
                height: 35,
                child: Icon(
                  Icons.shopping_cart_checkout_outlined,
                  color: RFColors.generalBg,
                  size: 20,
                ),
              ),
            ),
          GestureDetector(
            onTap: () {
              _togglePanel();
              widget.onEdit(widget.grocery);
            },
            child: const SizedBox(
              width: 35,
              height: 35,
              child: Icon(
                Icons.edit,
                color: RFColors.generalBg,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContainer() {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 125,
        minHeight: 125,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Replace with your desired background color
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: RFPadding.small(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.grocery.imagePath ?? '',
              height: 40, // Adjust size based on your design
              fit: BoxFit.contain,
            ),
            Text(
              widget.grocery.getLabel(context),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "${widget.grocery.amount!.toLabel()} ${widget.grocery.unit!.getUnit(context)}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: RFColors.greyPrimary,
                  ),
            ),
            if (widget.grocery.expirationDate != null)
              RFPadding.small(
                bottom: false,
                child: Text(
                  widget.grocery.expirationDate?.ddmmYYYY() ?? '',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: RFColors.primaryColor,
                      ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
