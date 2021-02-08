import 'package:barter/paths.dart';
import 'package:barter/ui/screens/onboarding/_components/notification_list_tile.dart';
import 'package:flutter/material.dart';

@immutable
class OnBoardingNotificationsSection extends StatefulWidget {
  const OnBoardingNotificationsSection({Key key}) : super(key: key);
  @override
  _OnBoardingNotificationsSectionState createState() => _OnBoardingNotificationsSectionState();
}

class _OnBoardingNotificationsSectionState extends State<OnBoardingNotificationsSection> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        NotificationListTile(
          title: 'Products',
          subtitle: "Active, New & Hot deals.",
          switchValue: _switchValue,
          leadingImgPath: Paths.ONBOARDING_ASSETS + 'icon_calendar.svg',
          onSwitch: (value) => setState(() => _switchValue = value),
        ),
        NotificationListTile(
          title: 'New requests',
          subtitle: "Be connected, make deals.",
          switchValue: _switchValue,
          leadingImgPath: Paths.ONBOARDING_ASSETS + 'icon_opened_letter.svg',
          onSwitch: (value) => setState(() => _switchValue = value),
        ),
      ],
    );
  }
}
