import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFeedbackDialogContent extends StatefulWidget {
  const CustomFeedbackDialogContent(this.context, {Key key}) : super(key: key);
  final BuildContext context;
  @override
  _CustomFeedbackDialogContentState createState() => _CustomFeedbackDialogContentState();
}

class _CustomFeedbackDialogContentState extends State<CustomFeedbackDialogContent> {
  /// Did user submitted or not
  bool _readyToSubmit = false;

  void _rate() => setState(() => _readyToSubmit = !_readyToSubmit);

  @override
  Widget build(_) {
    final ThemeData _themeData = Theme.of(widget.context);

    return Wrap(
      runSpacing: SharedStyle.spaceBetweenSection,
      children: [
        /// Content
        Text(
          'We are always trying to improve what we do and your feedback is invaluable!',
          style: _themeData.textTheme.overline.apply(fontWeightDelta: 1),
          textAlign: TextAlign.center,
        ),

        Divider(),

        /// Rating Stars
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              GestureDetector(
                onTap: _rate,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _readyToSubmit ? _themeData.primaryColor : _themeData.accentColor,
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                    size: _themeData.textTheme.bodyText1.fontSize,
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
          crossFadeState: _readyToSubmit ? CrossFadeState.showFirst : CrossFadeState.showSecond,
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
            child: Text('Submit', style: _themeData.textTheme.button.apply(color: _themeData.accentColor)),
          ),
        ),
      ],
    );
  }
}
