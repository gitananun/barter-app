import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_text.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFeedbackDialogContent extends StatefulWidget {
  const CustomFeedbackDialogContent(this.context, {Key? key}) : super(key: key);
  final BuildContext context;
  @override
  _CustomFeedbackDialogContentState createState() => _CustomFeedbackDialogContentState();
}

class _CustomFeedbackDialogContentState extends State<CustomFeedbackDialogContent> {
  /// Stars rating value
  int _rating = 0;
  void _rate(int index) => setState(() => _rating = index);

  @override
  Widget build(_) {
    final ThemeData _themeData = Theme.of(widget.context);

    return CustomAlertDialogContentWrapper(
      children: [
        CustomAlertDialogContentText(
          widget.context,
          'We are always trying to improve what we do and your feedback is invaluable!',
        ),

        Divider(),

        /// Rating Stars
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            for (int i = 1; i <= 5; i++)
              GestureDetector(
                onTap: () => _rate(i),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i <= _rating ? _themeData.primaryColor : _themeData.accentColor,
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                    size: _themeData.textTheme.bodyText1?.fontSize,
                  ),
                ),
              )
          ],
        ),

        Divider(),

        /// Submit Button using [context] passed as an argument
        /// [AnimatedCrossFade] as disabled and enabled
        AnimatedCrossFade(
          duration: Duration(milliseconds: 100),
          crossFadeState: _rating > 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Center(
            child: CustomFlatButton(
              onPressed: () {},
              minWidth: double.infinity,
              color: _themeData.primaryColor,
              child: Text('Submit', style: _themeData.textTheme.button),
            ),
          ),
          secondChild: CustomFlatButton(
            primary: false,
            minWidth: double.infinity,
            borderColor: _themeData.accentColor,
            child: Text('Submit', style: _themeData.textTheme.button?.apply(color: _themeData.accentColor)),
          ),
        ),
      ],
    );
  }
}
