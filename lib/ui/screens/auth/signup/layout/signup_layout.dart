import 'package:barter/ui/screens/auth/_shared_widgets/auth_main_layout.dart';
import 'package:flutter/material.dart';

@immutable
class SignupLayout extends StatelessWidget {
  const SignupLayout({Key? key, @required this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return AuthMainLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children ?? [],
        ),
      ),
    );
  }
}
