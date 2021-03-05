import 'package:barter/ui/shared_widgets/cupertino_switch_resizeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    Key? key,
    @required this.onSwitch,
    this.switchValue,
    this.title,
    this.subtitle,
    this.leadingImgPath,
    this.isThreeLine,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final bool? switchValue;
  final bool? isThreeLine;
  final String? leadingImgPath;
  final ValueChanged<bool>? onSwitch;

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return ListTile(
      dense: true,
      isThreeLine: isThreeLine ?? true,
      visualDensity: VisualDensity.compact,
      trailing: CustomCupertinoSwitchResizeable(switchValue ?? true, onSwitch ?? (_) {}),
      title: title != null ? Text(title ?? '', style: _textTheme.subtitle2) : Text('title'),
      leading: leadingImgPath != null ? SvgPicture.asset(leadingImgPath ?? '') : FlutterLogo(),
      subtitle: subtitle != null ? Text(subtitle ?? '', style: _textTheme.overline) : Text('subtitle'),
    );
  }
}
