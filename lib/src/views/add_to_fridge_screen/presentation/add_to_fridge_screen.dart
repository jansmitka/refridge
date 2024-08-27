import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/views/add_to_fridge_screen/bloc/add_to_fridge_bloc.dart';
import 'package:refridge/src/widgetbook/containers/fridge_selector.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddToFridgeScreen extends StatefulWidget {
  final List<Fridge> fridges;
  final Fridge selectedFridge;
  final RFUser user;
  const AddToFridgeScreen({
    super.key,
    required this.fridges,
    required this.selectedFridge,
    required this.user,
  });

  @override
  State<AddToFridgeScreen> createState() => _AddToFridgeScreenState();
}

class _AddToFridgeScreenState extends State<AddToFridgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RFScreenWrapper(
        canBack: true,
        onBack: getIt<NavigationService>().goBack,
        title: AppLocalizations.of(context)!.add_to_fridge_screen_title,
        child: BlocProvider.value(
          value: getIt<AddToFridgeBloc>()
            ..add(AddToFridgeEvent.init(widget.selectedFridge)),
          child: BlocBuilder<AddToFridgeBloc, AddToFridgeState>(
            builder: (context, state) {
              return Column(
                children: [
                  FridgeSelector(
                    fridges: widget.fridges,
                    selectedFridge:
                        state.selectedFridge ?? widget.selectedFridge,
                    onTap: (Fridge fridge) => getIt<AddToFridgeBloc>()
                      ..add(AddToFridgeEvent.changeFridge(fridge)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
