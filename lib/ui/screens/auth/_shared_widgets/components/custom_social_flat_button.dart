import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomSocialFlatButton extends StatelessWidget {
  const CustomSocialFlatButton({
    Key? key,
    this.child,
    this.icon,
    this.text,
    this.color,
    this.minWidth,
    this.onPressed,
  }) : super(key: key);

  final Color? color;
  final String? text;
  final Widget? child;
  final IconData? icon;
  final double? minWidth;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomFlatButton(
      onPressed: onPressed,
      minWidth: minWidth ?? 150,
      color: color ?? Colors.red,
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 10),
              Text(text ?? 'social', style: const TextStyle(color: Colors.white)),
            ],
          ),
    );
  }
}
