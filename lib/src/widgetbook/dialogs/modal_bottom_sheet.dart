import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

Future<T?> showRFBottomSheet<T>({
  required BuildContext context,
  required String title,
  Widget Function(BuildContext)? builder,
  Widget Function(BuildContext)? rawContentBuilder,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool enableDrag = true,
}) =>
    showModalBottomSheet<T>(
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: isScrollControlled,
      barrierColor: RFColors.textPrimary.withOpacity(0.4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height - 40,
      ),
      context: context,
      builder: (context) {
        if (rawContentBuilder != null) return rawContentBuilder.call(context);
        return SafeArea(
          child: SingleChildScrollView(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RFPadding.normalAll(
                  bottom: false,
                  child: Align(
                    child: Container(
                      width: 40,
                      height: 5,
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      decoration: const BoxDecoration(
                        color: RFColors.greyPrimary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                RFPadding.normalVertical(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                if (builder != null) builder.call(context),
              ],
            ),
          ),
        );
      },
    );
