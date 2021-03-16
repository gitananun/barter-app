import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoSwitchResizeable extends StatelessWidget {
  const CustomCupertinoSwitchResizeable(
    this.onChanged, {
    Key? key,
    this.sizeScale,
    required this.value,
  }) : super(key: key);
  final bool value;
  final double? sizeScale;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: sizeScale ?? 0.8,
      child: CupertinoSwitch(value: value, onChanged: onChanged),
    );
  }
}
