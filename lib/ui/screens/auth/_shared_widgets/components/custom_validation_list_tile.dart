import 'package:barter/ui/shared_widgets/custom_circular_container.dart';
import 'package:flutter/material.dart';

class CustomValidationListTile extends StatelessWidget {
  const CustomValidationListTile({
    Key? key,
    required this.title,
    required this.leadingIcon,
    this.active,
  }) : super(key: key);
  final String? title;
  final IconData? leadingIcon;
  final bool? active;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCircularContainer(icon: leadingIcon ?? Icons.warning, active: active ?? false),
      title: Text(title ?? '', style: Theme.of(context).textTheme.caption),
      contentPadding: const EdgeInsets.all(0),
    );
  }
}
