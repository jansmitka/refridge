import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/services/first_launch/bloc/first_launch_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class FirstLauchScreen extends StatefulWidget {
  const FirstLauchScreen({super.key});

  @override
  State<FirstLauchScreen> createState() => _FirstLauchScreenState();
}

class _FirstLauchScreenState extends State<FirstLauchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RFPadding.normalAll(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ReFridge',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              RFPadding.normalVertical(
                child: Text(
                  'This is First Launch Screen',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              PrimaryTextButton(
                lable: 'Main Screen',
                isExpanded: false,
                onTap: () {
                  context.read<FirstLaunchBloc>().add(
                        const FirstLaunchEvent.setFirstLaunch(),
                      );
                  getIt<NavigationService>().navigateTo(Routes.userAuthWrapper);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
