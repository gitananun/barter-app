import 'package:barter/ui/mts_theme.dart';
import 'package:barter/ui/shared_widgets/layout_components/components/custom_fancy_floating_action_button_expanding_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFancyFloatingActionButton extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  CustomFancyFloatingActionButton({this.onPressed, this.tooltip, this.icon});

  @override
  _CustomFancyFloatingActionButtonState createState() => _CustomFancyFloatingActionButtonState();
}

class _CustomFancyFloatingActionButtonState extends State<CustomFancyFloatingActionButton>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 400))
      ..addListener(() => setState(() {}));
    _animateIcon = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(begin: MTStheme.primaryColor, end: MTStheme.primaryTextColor).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.00, 1.00, curve: Curves.linear),
    ));

    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.75, curve: _curve),
      ),
    );
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    !isOpened ? _animationController.forward() : _animationController.reverse();
    isOpened = !isOpened;
  }

  Widget add() => CustomFancyFloatingActionButtonExpandingButton(icon: FontAwesomeIcons.plus);

  Widget filter() => CustomFancyFloatingActionButtonExpandingButton(icon: FontAwesomeIcons.filter);

  Widget card() => CustomFancyFloatingActionButtonExpandingButton(icon: FontAwesomeIcons.shoppingBasket);

  Widget toggle() => FloatingActionButton(
        elevation: 0,
        onPressed: animate,
        backgroundColor: _buttonColor.value,
        child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animateIcon, color: Colors.white),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value * 3.0, 0.0),
          child: add(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value * 2.0, 0.0),
          child: filter(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value, 0.0),
          child: card(),
        ),

        ///
        toggle(),
      ],
    );
  }
}
