import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoSwitchResizeable extends StatelessWidget {
  const CustomCupertinoSwitchResizeable(this.value, this.onChanged, {Key key, this.sizeScale}) : super(key: key);
  final bool value;
  final ValueChanged<bool> onChanged;
  final double sizeScale;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: sizeScale ?? 0.8,
      child: CupertinoSwitch(value: value ?? false, onChanged: onChanged),
    );
  }
}
