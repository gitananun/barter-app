import 'package:flutter/material.dart';

import '../../_shared_widgets/auth_main_layout.dart';

@immutable
class PasswordRecoverLayout extends StatelessWidget {
  const PasswordRecoverLayout({Key? key, required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return AuthMainLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: children ?? [],
        ),
      ),
    );
  }
}
