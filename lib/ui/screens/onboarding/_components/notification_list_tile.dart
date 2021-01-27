import 'package:barter/ui/shared_widgets/cupertino_switch_resizeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    Key key,
    @required this.onSwitch,
    this.switchValue,
    this.title,
    this.subtitle,
    this.leadingImgPath,
    this.isThreeLine,
  }) : super(key: key);
  final ValueChanged<bool> onSwitch;
  final bool switchValue;
  final String title;
  final String subtitle;
  final String leadingImgPath;
  final bool isThreeLine;

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: leadingImgPath != null ? SvgPicture.asset(leadingImgPath) : FlutterLogo(),
      title: title != null ? Text(title, style: _textTheme.subtitle1) : Text('title'),
      subtitle: subtitle != null ? Text(subtitle, style: _textTheme.subtitle2) : Text('subtitle'),
      visualDensity: VisualDensity.compact,
      trailing: CustomCupertinoSwitchResizeable(switchValue ?? true, onSwitch),
      dense: true,
      isThreeLine: isThreeLine ?? true,
    );
  }
}
