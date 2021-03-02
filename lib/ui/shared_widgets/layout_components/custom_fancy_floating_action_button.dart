import 'package:barter/ui/mts_theme.dart';
import 'package:barter/ui/shared_widgets/layout_components/components/custom_fancy_floating_action_button_expanding_button.dart';
import 'package:barter/ui/utils/dialog/rate/show_rate_dialog.dart';
import 'package:barter/ui/utils/dialog/upload/show_upload_dialog.dart';
import 'package:barter/ui/utils/sheet/filter/show_products_filter_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFancyFloatingActionButton extends StatefulWidget {
  final IconData icon;
  final String tooltip;
  final Function() onPressed;

  CustomFancyFloatingActionButton({this.onPressed, this.tooltip, this.icon});

  @override
  _CustomFancyFloatingActionButtonState createState() => _CustomFancyFloatingActionButtonState();
}

class _CustomFancyFloatingActionButtonState extends State<CustomFancyFloatingActionButton>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  double _fabHeight = 56.0;
  Curve _curve = Curves.ease;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<Color> _buttonIconColor;
  Animation<double> _translateButton;
  AnimationController _animationController;

  @override
  initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 400))
      ..addListener(() => setState(() {}));
    _animateIcon = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(begin: MTStheme.primaryColor, end: Colors.white).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.00, 0.50, curve: Curves.linear),
    ));

    _buttonIconColor = ColorTween(begin: Colors.white, end: MTStheme.primaryColor).animate(CurvedAnimation(
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

  /// Expanding Floating Action Buttons
  Widget add() => CustomFancyFloatingActionButtonExpandingButton(
        icon: FontAwesomeIcons.plus,
        onPressed: ShowUploadDialog(context).show,
      );
  Widget filter() => CustomFancyFloatingActionButtonExpandingButton(
        icon: FontAwesomeIcons.filter,
        onPressed: ProductsFilterBottomSheetUtils(context).show,
      );
  Widget rate() => CustomFancyFloatingActionButtonExpandingButton(
        icon: FontAwesomeIcons.solidStar,
        onPressed: ShowRateDialog(context).show,
      );

  Widget toggle() => FloatingActionButton(
        elevation: 0,
        onPressed: animate,
        highlightElevation: 0,
        backgroundColor: _buttonColor.value,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: MTStheme.primaryColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: AnimatedIcon(
          progress: _animateIcon,
          color: _buttonIconColor.value,
          icon: AnimatedIcons.menu_close,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value * 3.0, 0.0),
          child: rate(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value * 2.0, 0.0),
          child: filter(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0.0, _translateButton.value, 0.0),
          child: add(),
        ),

        ///
        toggle(),
      ],
    );
  }
}
