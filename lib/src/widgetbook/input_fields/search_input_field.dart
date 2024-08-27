import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class RFSearchField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function(String) onChanged;

  final bool isEnabled;
  const RFSearchField({
    super.key,
    required this.controller,
    required this.label,
    required this.onChanged,
    required this.isEnabled,
  });

  @override
  State<RFSearchField> createState() => _RFSearchFieldState();
}

class _RFSearchFieldState extends State<RFSearchField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  bool _showSuffix = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  void _onClearField() {
    setState(() {
      widget.controller.clear();
      _showSuffix = false;
      widget.onChanged('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: RFColors.greySecondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        enabled: widget.isEnabled,
        controller: widget.controller,
        focusNode: _focusNode,
        onChanged: (val) {
          setState(() {
            _showSuffix = widget.controller.text.isNotEmpty;
          });
          widget.onChanged(val);
        },
        autocorrect: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: RFColors.textSecondary,
              ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: _isFocused ? RFColors.textSecondary : RFColors.greyPrimary,
          ),
          suffixIcon: _showSuffix
              ? IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: RFColors.primaryColor,
                  ),
                  onPressed: _onClearField,
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
