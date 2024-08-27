import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';

class DeeplinkResolver {
  final navigator = getIt<NavigationService>();
  void resolveDeeplink(String deeplink) {
    Uri uri = Uri.parse(deeplink);
    if (uri.scheme == 'refridgeapp') {
      switch (uri.pathSegments.first) {
        // case 'friends-requests':
        //   navigator.popUntilAndPush(
        //     Routes.userAuthWrapper,
        //     Routes.friendsOverviewScreen,
        //     arguments: {'initialIndex': 1},
        //   );
        //   break;
        // case 'message':
        //   navigator.popUntilAndPush(
        //     Routes.userAuthWrapper,
        //     Routes.chatScreen,
        //     arguments: {'chatId': uri.pathSegments[1]},
        //   );
        //   break;
        default:
          navigator.navigateTo(
            Routes.userAuthWrapper,
          );
      }
    }
  }
}
