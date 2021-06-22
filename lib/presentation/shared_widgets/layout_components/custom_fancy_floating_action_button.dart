import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/dialog/delete/show_delete_dialog.dart';
import '../../utils/dialog/rate/show_rate_dialog.dart';
import '../../utils/dialog/upload/show_upload_dialog.dart';
import '../../utils/sheet/filter/show_products_filter_bottom_sheet.dart';
import 'components/custom_fancy_floating_action_button_expanding_button.dart';

class CustomFancyFloatingActionButton extends StatefulWidget {
  const CustomFancyFloatingActionButton({
    Key? key,
    this.onPressed,
    this.tooltip,
    this.icon,
    required this.context,
  }) : super(key: key);

  final IconData? icon;
  final String? tooltip;
  final BuildContext context;
  final Function()? onPressed;

  @override
  _CustomFancyFloatingActionButtonState createState() => _CustomFancyFloatingActionButtonState();
}

class _CustomFancyFloatingActionButtonState extends State<CustomFancyFloatingActionButton>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  final double _fabHeight = 56;
  final Curve _curve = Curves.ease;
  Animation<Color?>? _buttonColor;
  Animation<Color?>? _buttonIconColor;
  late Animation<double> _animateIcon;
  late Animation<double> _translateButton;
  late AnimationController _animationController;

  @override
  void initState() {
    final ThemeData _themeData = Theme.of(widget.context);

    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300))
      ..addListener(() => setState(() {}));
    _animateIcon = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _buttonColor = ColorTween(begin: _themeData.primaryColor, end: Colors.white).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0, 0.50),
    ));

    _buttonIconColor = ColorTween(begin: Colors.white, end: _themeData.primaryColor).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0, 1),
    ));

    _translateButton = Tween<double>(begin: _fabHeight, end: -14).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0, 0.75, curve: _curve),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void animate() {
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
  Widget delete() => CustomFancyFloatingActionButtonExpandingButton(
        icon: FontAwesomeIcons.trash,
        onPressed: ShowDeleteDialog(context).show,
      );

  Widget toggle() => FloatingActionButton(
        elevation: 0,
        onPressed: animate,
        highlightElevation: 0,
        backgroundColor: _buttonColor?.value,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          side: BorderSide(width: 2, color: Theme.of(widget.context).primaryColor),
        ),
        child: AnimatedIcon(
          progress: _animateIcon,
          color: _buttonIconColor?.value,
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
          transform: Matrix4.translationValues(0, _translateButton.value * 4.0, 0),
          child: delete(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0, _translateButton.value * 3.0, 0),
          child: rate(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0, _translateButton.value * 2.0, 0),
          child: filter(),
        ),

        ///
        Transform(
          transform: Matrix4.translationValues(0, _translateButton.value, 0),
          child: add(),
        ),

        ///
        toggle(),
      ],
    );
  }
}
