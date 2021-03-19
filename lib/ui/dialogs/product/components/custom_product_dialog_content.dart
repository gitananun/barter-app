import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_text.dart';
import 'package:barter/ui/dialogs/components/custom_alert_dialog_content_wrapper.dart';
import 'package:barter/ui/shared_widgets/custom_flat_button.dart';
import 'package:barter/ui/shared_widgets/rating_stars_row.dart';
import 'package:flutter/material.dart';

class CustomProductDialogContent extends StatefulWidget {
  const CustomProductDialogContent(
    this.context, {
    Key? key,
    required this.rating,
    required this.body,
    required this.id,
  }) : super(key: key);
  final BuildContext context;
  final double rating;
  final String body;
  final int id;

  @override
  _CustomProductDialogContentState createState() => _CustomProductDialogContentState();
}

class _CustomProductDialogContentState extends State<CustomProductDialogContent> {
  @override
  Widget build(_) {
    return CustomAlertDialogContentWrapper(
      children: [
        RatingStarsRow(widget.rating),
        const Divider(),
        CustomAlertDialogContentText(
          widget.context,
          widget.body,
        ),
        const Divider(),
        CustomFlatButton(
          text: 'close',
          minWidth: double.infinity,
          onPressed: () => Navigator.maybePop(context),
        ),
      ],
    );
  }
}
