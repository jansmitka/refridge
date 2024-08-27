import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class NavBarItem extends StatelessWidget {
  final ScreenState type;
  final IconData icon;
  final IconData iconActive;
  final String label;
  final bool isActive;
  const NavBarItem({
    super.key,
    required this.type,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.iconActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainBloc>().add(MainEvent.setScreenState(type));
      },
      child: Container(
        color: RFColors.greySecondary,
        width: 60,
        child: Column(
          children: [
            Icon(
              isActive ? iconActive : icon,
              color: isActive ? RFColors.primaryColor : RFColors.textPrimary,
              size: 25,
            ),
            RFPadding.small(
              left: false,
              right: false,
              bottom: false,
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: isActive
                          ? RFColors.primaryColor
                          : RFColors.textPrimary,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
