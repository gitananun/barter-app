import 'package:flutter/material.dart';
import 'package:barter/constants.dart';
import 'package:barter/ui/shared_widgets/cupertino_switch_resizeable.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        ListTile(
          leading: SvgPicture.asset(OnBoardingConstants.imgPath + 'icon_opened_letter.svg'),
          title: Text('Daily Products', style: _textTheme.subtitle1),
          subtitle: Text('For each new posted product'),
          visualDensity: VisualDensity.compact,
          dense: true,
          trailing: CustomCupertinoSwitchResizeable(
            _switchValue,
            (value) => setState(() => _switchValue = value),
          ),
        ),
      ],
    );
  }
}
