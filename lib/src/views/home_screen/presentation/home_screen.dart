import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/home_screen/presentation/containers/fridge_section.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/views/main_screen/blocs/user_bloc.dart';
import 'package:refridge/src/widgetbook/containers/user_image.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (!state.isLoading && state.user != null) {
          return RFScreenWrapper(
            useExpanded: true,
            canBack: false,
            title: AppLocalizations.of(context)!
                .home_screen_title(state.user!.firstname ?? ''),
            suffixWidget: GestureDetector(
              onTap: () => context
                  .read<MainBloc>()
                  .add(const MainEvent.setScreenState(ScreenState.account)),
              child: RFUserImage(
                imgUrl: state.user!.profileImgURL,
                width: 40,
                height: 40,
                iconSize: 20,
              ),
            ),
            child: const RFPadding.normalVertical(
              child: Column(
                children: [
                  FridgeSection(),
                ],
              ),
            ),
          );
        }
        return const Center(
          child: SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(
              color: RFColors.primaryColor,
            ),
          ),
        );
      },
    );
  }
}
