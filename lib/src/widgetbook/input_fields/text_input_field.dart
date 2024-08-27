import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class RFInputField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;
  final bool showSuffixVisible;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType inputType;
  final bool isEnabled;

  const RFInputField({
    super.key,
    required this.controller,
    required this.label,
    this.icon,
    this.showSuffixVisible = false,
    this.validator,
    this.onChanged,
    this.inputType = TextInputType.text,
    this.isEnabled = true,
  });

  @override
  _RFInputFieldState createState() => _RFInputFieldState();
}

class _RFInputFieldState extends State<RFInputField> {
  bool _obscureText = true;
  late FocusNode _focusNode;
  bool _isFocused = false;

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

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnabled,
      controller: widget.controller,
      focusNode: _focusNode,
      obscureText: widget.showSuffixVisible ? _obscureText : false,
      onChanged: widget.onChanged,
      autocorrect: false,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        hintText: widget.label,
        hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: RFColors.greyPrimary,
            ),
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: RFColors.primaryColor,
            ),
        prefixIcon: Icon(
          widget.icon,
          color: _isFocused ? RFColors.textSecondary : RFColors.greyPrimary,
        ),
        suffixIcon: widget.showSuffixVisible
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: _isFocused
                      ? RFColors.textSecondary
                      : RFColors.greyPrimary,
                ),
                onPressed: _togglePasswordVisibility,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: RFColors.textSecondary,
            width: 2.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: RFColors.textSecondary,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: RFColors.primaryColor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: RFColors.greyPrimary,
            width: 2.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: RFColors.greySecondary,
            width: 2.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: RFPadding.paddingNormal),
      ),
      validator: widget.validator,
    );
  }
}
