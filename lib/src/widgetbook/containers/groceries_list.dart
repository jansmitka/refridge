import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/widgetbook/containers/grocery_grid_tile.dart';

class GroceriesList extends StatefulWidget {
  final List<Grocery> groceries;
  final SectionDisplayType displayType;
  final Function(Grocery) onEdit;
  final Function(Grocery) onAddToList;
  final Function(Grocery) onDelete;
  final bool useMaxItems;
  final bool neverScrool;
  const GroceriesList({
    super.key,
    required this.groceries,
    required this.displayType,
    required this.onEdit,
    required this.onAddToList,
    required this.onDelete,
    this.useMaxItems = false,
    this.neverScrool = false,
  });

  @override
  State<GroceriesList> createState() => _GroceriesListState();
}

class _GroceriesListState extends State<GroceriesList> {
  @override
  Widget build(BuildContext context) {
    if (widget.displayType == SectionDisplayType.grid) {
      return GridView.builder(
        shrinkWrap: widget
            .neverScrool, // Makes the GridView take only the space it needs
        physics:
            widget.neverScrool ? const NeverScrollableScrollPhysics() : null,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 items per row
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1, // Adjust based on the design
        ),
        itemCount: widget.groceries.length > 9 && widget.useMaxItems
            ? 9
            : widget.groceries.length,
        itemBuilder: (context, index) {
          return GroceryGridTile(
            grocery: widget.groceries[index],
            onEdit: widget.onEdit,
            onAddToList: widget.onAddToList,
            onDelete: widget.onDelete,
          );
        },
      );
    }
    return Container();
  }
}
