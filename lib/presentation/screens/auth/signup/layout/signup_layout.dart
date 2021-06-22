import 'package:flutter/material.dart';

import '../../shared_widgets/auth_main_layout.dart';

@immutable
class SignupLayout extends StatelessWidget {
  const SignupLayout({Key? key, required this.children}) : super(key: key);
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
