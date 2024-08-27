import 'package:flutter/material.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class AnimatedTopSnackBar extends StatefulWidget {
  final SnackbarType type;
  final String title;
  final String body;
  final Duration duration;
  final VoidCallback onDismissed;

  const AnimatedTopSnackBar({
    super.key,
    required this.onDismissed,
    this.duration = const Duration(seconds: 3),
    required this.type,
    required this.title,
    required this.body,
  });

  @override
  _AnimatedTopSnackBarState createState() => _AnimatedTopSnackBarState();
}

class _AnimatedTopSnackBarState extends State<AnimatedTopSnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1.0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();

    // Automatically dismiss the snackbar after the duration
    Future.delayed(widget.duration, () {
      if (mounted) {
        _controller.reverse().then((_) {
          widget.onDismissed();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color getBorderColor() {
    switch (widget.type) {
      case SnackbarType.info:
        return RFColors.infoColor;
      case SnackbarType.error:
        return RFColors.alertColor;
      case SnackbarType.success:
        return RFColors.successColor;

      default:
        return RFColors.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          top: true,
          child: RFPadding.normalHorizontal(
            child: Container(
              padding: const EdgeInsets.all(
                RFPadding.paddingNormal,
              ),
              decoration: BoxDecoration(
                  color: RFColors.generalBg,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: getBorderColor(),
                    width: 2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          widget.type.getIcon,
                          color: getBorderColor(),
                          size: 35,
                        ),
                        Expanded(
                          child: RFPadding.smallHorizontal(
                            child: SizedBox(
                              height: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      widget.body,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _controller.reverse().then((_) {
                        widget.onDismissed();
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: RFColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showAnimatedTopSnackBar(
    BuildContext context, SnackbarType type, String title, String body,
    {Duration duration = const Duration(seconds: 3)}) {
  final overlay = Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).viewInsets.top +
          10, // Position it just below the status bar
      left: 0,
      right: 0,
      child: AnimatedTopSnackBar(
        duration: duration,
        onDismissed: () {
          overlayEntry
              .remove(); // Remove the OverlayEntry when the animation is done
        },
        type: type,
        title: title,
        body: body,
      ),
    ),
  );

  overlay.insert(overlayEntry);
}
