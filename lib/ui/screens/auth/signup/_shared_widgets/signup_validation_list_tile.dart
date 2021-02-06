import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:flutter/material.dart';

class SignupValidationListTile extends StatelessWidget {
  const SignupValidationListTile({
    Key key,
    @required this.title,
    @required this.leadingIcon,
    this.active,
  }) : super(key: key);
  final String title;
  final IconData leadingIcon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCircularContainer(icon: leadingIcon, active: active),
      title: Text(title, style: Theme.of(context).textTheme.caption),
      contentPadding: const EdgeInsets.all(0),
    );
  }
}
